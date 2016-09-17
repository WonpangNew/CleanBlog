package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Wonpang New on 2016/9/13.
 */
@Controller
@RequestMapping(value = "/wonpang")
public class MappingRouterController {

    @RequestMapping(value = "/blog")
    public String routerBlog() {
        return "blog";
    }

    @RequestMapping(value = "/blogs")
    public String routerBlogs() {
        return "blogs";
    }

    @RequestMapping(value = "/post")
    public String routerPost() {
        return "post";
    }

    @RequestMapping(value = "/about")
    public String routerAbout() {
        return "about";
    }

    @RequestMapping(value = "/contact")
    public String routerContact() {
        return "contact";
    }
}
