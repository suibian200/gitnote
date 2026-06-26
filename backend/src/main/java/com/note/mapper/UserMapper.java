package com.note.mapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.note.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;
@Mapper
public interface UserMapper extends BaseMapper<User> {
    @Update("UPDATE users SET total_likes = total_likes + #{delta} WHERE id = #{userId}")
    void updateTotalLikes(@Param("userId") Long userId, @Param("delta") int delta);
}
