package com.controller;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.biz.GoodsBiz;
import com.entity.Goods;

@Controller
@RequestMapping("/goods.do")
public class GoodsController {
	
	@Resource
	private GoodsBiz goodsBiz;
	
	//lsr
	@RequestMapping(params = "method=findbypage")
	public @ResponseBody String findbypage(@Param("gname") String gname,@Param("pageNum")  int pageNum) {
		String str = JSON.toJSONString(this.goodsBiz.findbypage(gname, pageNum));
		return str;
	}
	
	@RequestMapping(params = "method=findz")
	public @ResponseBody String findcount(@Param("gname") String gname) {
		String count =""+this.goodsBiz.findcount(gname);
		return count;
	};
	
	@RequestMapping(params = "method=del")
	public String del(int gid) {
		this.goodsBiz.delete(gid);
		return "redirect:pages/shop/shop-message.jsp";
	}
	
	@RequestMapping(params = "method=add")
	public String  add(Goods goods) {
		this.goodsBiz.add(goods);
		return "redirect:pages/shop/shop-message.jsp";
	}
	
	@RequestMapping(params = "method=update")
	public String update(String gname, double gprice, int gnumber, int gid){
		this.goodsBiz.update(gname, gprice, gnumber, gid);
		return "redirect:pages/shop/shop-message.jsp";
		
	}
	
}
