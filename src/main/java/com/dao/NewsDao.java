package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.News;

/**
 * 新闻表接口
 */

public interface NewsDao {

	// 查询所有新闻
	public List<News> getSelectNewsAll(@Param("content") String content, @Param("pageNum") int pageNum);

	// 获取新闻最大个数
	public int getSelectNewsMaxCount(@Param("content") String content);

	// 修改新闻信息
	public int getUpdateNewsInfo(News news);

	// 删除新闻信息
	public int getDelNewsInfo(@Param("nid") Integer nid);

}
