package com.note.redis;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
@Service
public class RedisService {

    public RedisService(StringRedisTemplate redis) {
        this.redis = redis;
    }

    

    
    private final StringRedisTemplate redis;
    // === Set: ??/??/???? ===
    public void addToSet(String key, String value) { redis.opsForSet().add(key, value); }
    public void removeFromSet(String key, String value) { redis.opsForSet().remove(key, value); }
    public boolean isMember(String key, String value) {
        Boolean r = redis.opsForSet().isMember(key, value);
        return Boolean.TRUE.equals(r);
    }
    public Map<Object, Boolean> isMemberBatch(String key, String... values) {
        return redis.opsForSet().isMember(key, values);
    }
    // === SortedSet: ?? ===
    public void incrementScore(String key, String member, double delta) {
        redis.opsForZSet().incrementScore(key, member, delta);
    }
    public Set<String> getTopN(String key, long n) {
        return redis.opsForZSet().reverseRange(key, 0, n - 1);
    }
    public void zAdd(String key, String member, double score) {
        redis.opsForZSet().add(key, member, score);
    }
    // === String: ?? ===
    public void set(String key, String value, long timeout, TimeUnit unit) {
        redis.opsForValue().set(key, value, timeout, unit);
    }
    public String get(String key) { return redis.opsForValue().get(key); }
    public void delete(String key) { redis.delete(key); }



}
