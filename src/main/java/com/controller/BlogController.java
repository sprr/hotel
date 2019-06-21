package com.controller;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.biz.BlogBiz;

@Controller
@RequestMapping("/blog.do")
public class BlogController {

	@Resource
	private BlogBiz blogbiz;

	@RequestMapping(params = "method=comment", produces = "application/json;charset=utf-8", consumes = "application/json;charset=utf-8")
	public @ResponseBody String getComment(@Param("uname") String uname, @Param("pageNum") int pageNum) {
		return JSONObject.toJSONString(this.blogbiz.findByPage(uname, pageNum));
	}

	@RequestMapping(params = "method=count")
	public @ResponseBody String getCommentCount(@Param("uname") String uname) {
		String str = "" + this.blogbiz.findCommentCount(uname);
		return str;
	}
	
	@RequestMapping(params = "method=delcomment")
	public String getDelComment(@Param("coid") Integer coid) {
		this.blogbiz.getDelComment(coid);
		return "redirect:pages/hotel/hotel-comment.jsp";
	}

}
