package com.controller;

import com.dao.BlogDao;
import com.dao.MessageDao;
import com.dao.UserDao;
import com.model.Blog;
import com.model.Message;
import com.model.UserToken;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

/**
 * Created by Wonpang New on 2016/9/14.
 */
@Controller
public class LoginController {

    @Autowired
    private UserDao userDao;
    @Autowired
    private BlogDao blogDao;
    @Autowired
    private MessageDao messageDao;

    @RequestMapping("/loginTo")
    public String loginTo(@RequestParam(value = "username") String username,
                          @RequestParam(value = "token") String token,
                          Map<String, Object> map) {
        List<UserToken> userTokenList = userDao.login(username, token);
        if (userTokenList != null) {
            List<Blog> blogs = blogDao.getAll();
            List<Message> messages = messageDao.getAll();
            map.put("blogs", blogs);
            map.put("messages", messages);
            return "manager";
        }
        return "login";
    }

    @RequestMapping("/login")
    public String login() {
        return "login";
    }
}
