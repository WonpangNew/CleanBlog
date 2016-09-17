package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.dao.BlogDao;
import com.dao.MessageDao;
import com.model.Blog;
import com.model.Message;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Message控制器，留言板功能
 * @author luoxn28
 * @date 2016.6.19
 */
@Controller
@RequestMapping("/message")
public class MessageController {

    // blog表操作类
    @Autowired
    private BlogDao blogDao;

    // Message表操作类
    @Autowired
    private MessageDao messageDao;

    @RequestMapping
    public String index(Message message, Map<String, Object> map) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String date = format.format(new Date());

        message.setDate(date);
        messageDao.insert(message);

        List<Blog> blogs = blogDao.getAll();
        List<Message> messages = messageDao.getAll();

        map.put("blogs", blogs);
        map.put("messages", messages);
        return "index";
    }
}
