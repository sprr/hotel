package com.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.biz.CommentBiz;
import com.entity.User;

@Controller
@RequestMapping("/comment.do")
public class CommentController {
	
	@Resource
	private CommentBiz commentbiz;
	
	@RequestMapping(params = "method=savacomment",produces = "text/json;charset=utf-8")

	public @ResponseBody String saveComment(HttpSession session,  String uname,String message,String cotime ,String remark) {
		int n = 0;
		 if( session.getAttribute("loginuser")!=null) {
		 SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		  cotime= df.format(new Date());
		 n = this.commentbiz.saveComment(uname, message, cotime, remark);
		return JSONObject.toJSONString(n);
		 }else {
			 return JSONObject.toJSONString(n);
		 }
	}
	
//	个人评论条数
	@RequestMapping(params="method=getcount")
	@ResponseBody
	public String getcount(HttpSession session,@Param("cotime")String cotime) {
		User user=(User)session.getAttribute("loginuser");
		String uname=user.getUname();
		Map<String, Object> cnum=new HashMap<String, Object>();
		cnum.put("cotime", cotime);
		cnum.put("uname", uname);
		return JSONObject.toJSONString(this.commentbiz.getcount(cnum));
	}
//	查询个人评论
	@RequestMapping(params="method=getUComment")
	@ResponseBody
	public String getUComment(HttpSession session,@Param("page")int page,@Param("cotime")String cotime) {
		User user=(User)session.getAttribute("loginuser");
		String uname=user.getUname();
		Map<String, Object> cmap=new HashMap<String, Object>();
		cmap.put("cotime", cotime);
		cmap.put("page", page);
		cmap.put("uname", uname);		
		return JSONObject.toJSONString(this.commentbiz.getUComment(cmap));
	}
}
