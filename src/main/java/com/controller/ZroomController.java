package com.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.json.Json;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.biz.ZroomBiz;
import com.entity.Zroomoto;

@Controller
@RequestMapping("/zroom.do")
public class ZroomController {

	@Resource
	private ZroomBiz zroomBiz;
	
	//lsr
	@RequestMapping(params = "method=findby", produces = "text/json;charset=utf-8")
	public  @ResponseBody String  findbypage(@Param("zstatus") String zstatus,@Param("pageNum")  int pageNum){
		return JSON.toJSONString(this.zroomBiz.findbypage(zstatus, pageNum));
	}
	@RequestMapping(params = "method=findz", produces = "text/json;charset=utf-8")
	public @ResponseBody String findz(@Param("zstatus") String zstatus) {
		String count = ""+this.zroomBiz.findz(zstatus);
		return count;
	}
	
	//修改子房間信息
	@RequestMapping(params = "method=updateall")
	public String update(@Param("rid")int rid, @Param("zname")String zname, @Param("zstatus")String zstatus, @Param("zid")int zid) {
		this.zroomBiz.update(rid, zname, zstatus, zid);
		return "redirect:pages/room/room-use.jsp";
		
	}
}
