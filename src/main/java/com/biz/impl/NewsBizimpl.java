package com.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.biz.NewsBiz;
import com.dao.NewsDao;
import com.entity.News;

@Service
public class NewsBizimpl implements NewsBiz {

	@Resource
	private NewsDao newsDao;

	// 查询所有新闻
	public List<News> getSelectNewsAll(@Param("content") String content, @Param("pageNum") int pageNum) {
		// TODO Auto-generated method stub
		return this.newsDao.getSelectNewsAll(content, pageNum);
	}

	// 获取新闻最大个数
	public int getSelectNewsMaxCount(@Param("content") String content) {
		// TODO Auto-generated method stub
		return this.newsDao.getSelectNewsMaxCount(content);
	}

	// 修改新闻信息
	public int getUpdateNewsInfo(News news) {
		// TODO Auto-generated method stub
		return this.newsDao.getUpdateNewsInfo(news);
	}

	// 删除新闻信息
	public int getDelNewsInfo(@Param("nid") Integer nid) {
		// TODO Auto-generated method stub
		return this.newsDao.getDelNewsInfo(nid);
	};
}
