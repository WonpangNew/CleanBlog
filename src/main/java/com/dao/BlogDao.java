package com.dao;

import com.model.Blog;

import java.util.List;

/**
 * Blog表操作接口
 * @author niuwanpeng
 * @date 2016.6.18
 */
public interface BlogDao {

    public int insert(Blog blog);

    public int update(Blog blog);

    public int delete(int id);

    public Blog getById(int id);

    public Blog getByTitle(String title);

    public List<Blog> getByCategory(String category);

    public List<Blog> getByBlogName(String blogName);

    public List<Blog> getAll();

}
