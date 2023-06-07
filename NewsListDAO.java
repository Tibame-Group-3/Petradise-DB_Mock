package com.news.model;

import java.util.List;

public interface NewsListDAO {
    public void insert(NewsListVO newsListVO);
    public void update(NewsListVO newsListVO);
    public void delete(Integer newsId);
    public NewsListVO findByPrimaryKey(Integer newsId);
    public List<NewsListVO> getAll();
}
