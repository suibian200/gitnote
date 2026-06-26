package com.note.mapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.note.entity.Note;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;
@Mapper
public interface NoteMapper extends BaseMapper<Note> {
    @Update("UPDATE notes SET like_count = like_count + #{delta} WHERE id = #{noteId}")
    void updateLikeCount(@Param("noteId") Long noteId, @Param("delta") int delta);
}
