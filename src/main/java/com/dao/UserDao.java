package com.dao;

import com.model.UserToken;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Wonpang New on 2016/9/14.
 */
public interface UserDao {

    List<UserToken> login(@Param("username") String username, @Param("token") String token);
}
