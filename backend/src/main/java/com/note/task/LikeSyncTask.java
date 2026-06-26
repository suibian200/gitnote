package com.note.task;

import com.note.mapper.NoteMapper;
import com.note.mapper.UserMapper;
import com.note.redis.RedisService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class LikeSyncTask {

    private static final Logger log = LoggerFactory.getLogger(LikeSyncTask.class);
    private final RedisService redis;
    private final NoteMapper noteMapper;
    private final UserMapper userMapper;

    public LikeSyncTask(RedisService redis, NoteMapper noteMapper, UserMapper userMapper) {
        this.redis = redis;
        this.noteMapper = noteMapper;
        this.userMapper = userMapper;
    }

    @Scheduled(cron = "0 0 0 * * ?")
    public void syncDailyLikes() {
        log.info("Starting daily like sync...");
        java.util.Set<String> keys = redis.keys("like:note:*");
        if (keys == null || keys.isEmpty()) {
            log.info("No daily like data to sync");
            return;
        }
        for (String key : keys) {
            try {
                String noteIdStr = key.substring("like:note:".length());
                Long noteId = Long.parseLong(noteIdStr);
                Long todayCount = redis.scard(key);
                if (todayCount == null || todayCount <= 0) continue;

                noteMapper.updateLikeCount(noteId, todayCount.intValue());

                com.note.entity.Note note = noteMapper.selectById(noteId);
                if (note != null) {
                    userMapper.updateTotalLikes(note.getAuthorId(), todayCount.intValue());
                }

                redis.delete(key);
                log.info("Synced note {}: +{} likes", noteId, todayCount);
            } catch (Exception e) {
                log.error("Error syncing key: " + key, e);
            }
        }
        log.info("Daily like sync completed");
    }
}
