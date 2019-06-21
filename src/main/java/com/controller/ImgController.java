package com.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.biz.ImgBiz;
import com.entity.Img;

@Controller
@RequestMapping("/img.do")
public class ImgController {

	@Resource
	private ImgBiz imgBiz;
	
	
	/**
	 * 查询所有图片信息
	 * @return 黎星平
	 */
	@RequestMapping(params = "getSelectImgAll",produces="text/json;charset=utf-8",consumes="text/json;charset=utf-8")
	public String getSelectImgAll(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("SelectImg", this.imgBiz.getSelectImgAll());
		return "gallery";
	}
	
	@RequestMapping(params = "getSelectImgJson",produces="text/json;charset=utf-8",consumes="text/json;charset=utf-8")
	@ResponseBody
	public String getSelectImgJson(@Param("name")String name,@Param("pageNum")int pageNum) {
		return JSON.toJSONString(this.imgBiz.getSelectImg(name,pageNum));
	}
	
	@RequestMapping(params = "getSelectImgCcount",produces="text/json;charset=utf-8",consumes="text/json;charset=utf-8")
	@ResponseBody
	public String getSelectImgCcount(@Param("name")String name) {
		return JSONObject.toJSONString(this.imgBiz.getSelectImgCcount(name));
	}
	
	@RequestMapping(params = "getUpdateImgByid",produces="text/json;charset=utf-8",consumes="text/json;charset=utf-8")
	public String getUpdateImgByid(Img img) {
		System.out.println(img.getImg_info());
		int n = this.imgBiz.getUpdateImgByid(img);
		return "redirect:pages/hotel/hotel-img.jsp";
	}
	
	@RequestMapping(params = "deleteImgByid",produces="text/json;charset=utf-8",consumes="text/json;charset=utf-8")
	public String deleteImgByid(@Param("img_id")int img_id) {
		int n = this.imgBiz.deleteImgByid(img_id);
		return "redirect:pages/hotel/hotel-img.jsp";
	}
	
	@RequestMapping(params = "insertImg",produces="text/json;charset=utf-8",consumes="text/json;charset=utf-8")
	public String insertImg(Img img) {
		this.imgBiz.insertImg(img);
		return "redirect:pages/hotel/hotel-img.jsp";
	}
}
