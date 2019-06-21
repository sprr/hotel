package com.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.jws.soap.SOAPBinding;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.biz.IdeaBiz;

@Controller
@RequestMapping("/idea.do")
public class IdeaController {

	@Resource
	private IdeaBiz ideaBiz;
	
	@RequestMapping(params = "method=savaidea",produces = "text/json;charset=utf-8")
	public @ResponseBody String saveComment (HttpSession session, String uname,String iemail,String icontent ,String remark) {
		int n=0;
		if(session.getAttribute("loginuser")!=null) {	
	     n = this.ideaBiz.save(uname, iemail, icontent, remark);
		return JSONObject.toJSONString(n);
		}
		else {
			return JSONObject.toJSONString(n);
		}
	}
	
	@RequestMapping(params = "method=findbypage")
	public @ResponseBody String findbypage(@Param("uname") String uname,@Param("pageNum")  int pageNum) {
		String str = JSON.toJSONString(this.ideaBiz.findbypage(uname, pageNum));
		return str;
	}
	
	@RequestMapping(params = "method=findz")
	public @ResponseBody String findcount(@Param("uname") String uname) {
		String count =""+this.ideaBiz.findz(uname);
		return count;
	};
	
	@RequestMapping(params = "method=del") 	
	public String del(int iid) {
		this.ideaBiz.delete(iid);
		return "redirect:pages/hotel/hotel-message.jsp";
	}
}
