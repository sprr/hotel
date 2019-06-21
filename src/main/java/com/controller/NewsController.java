package com.controller;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.biz.NewsBiz;
import com.entity.News;

@Controller
@RequestMapping("/news.do")
public class NewsController {

	@Resource
	private NewsBiz newsBiz;
	
	/**
	 * @author wangchen 后台查询新闻
	 */
	@RequestMapping(params = "method=getnews", produces = "text/json;charset=utf-8")
	public @ResponseBody String getSelectNewsAll(@Param("content") String content, @Param("pageNum") int pageNum) {
		return JSON.toJSONString(this.newsBiz.getSelectNewsAll(content, pageNum));
	}
	
	/**
	 * @author wangchen 新闻最大数查询
	 */
	@RequestMapping(params = "method=getnewscount")
	public @ResponseBody String getSelectNewsMaxCount(@Param("content") String content) {
		String newscount = ""+this.newsBiz.getSelectNewsMaxCount(content);
		return newscount;
	}
	
	/**
	 * @author wangchen 修改新闻信息
	 */
	@RequestMapping(params = "method=updatenews")
	public String getUpdateNewsInfo(News news) {
		String img = null;
		int sta = news.getNimg().indexOf("/");
		int end = news.getNimg().indexOf(",")+1;
		img = news.getNimg().substring(0, sta)+"/"+news.getNimg().substring(end, news.getNimg().length());
		news.setNimg(img);
		this.newsBiz.getUpdateNewsInfo(news);
		return "redirect:pages/hotel/hotel-news.jsp";
	}
	
	/**
	 * @author wangchen 删除新闻
	 */
	@RequestMapping(params = "method=delnews")
	public String getDelNewsInfo(@Param("nid") Integer nid) {
		this.newsBiz.getDelNewsInfo(nid);
		return "redirect:pages/hotel/hotel-news.jsp";
	}
	
}
