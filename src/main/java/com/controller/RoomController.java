package com.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.biz.RoomBiz;
import com.entity.Room;

@Controller
@RequestMapping("/room.do")
public class RoomController {
	
	@Resource
	private RoomBiz roomBiz;
	
	@RequestMapping(params = "method=getAllAccomodation")
	public String getAllAccomodation(HttpServletRequest request) {
		List<Room> roomList = this.roomBiz.find(null);
		request.setAttribute("roomListAccomodation", roomList);
		return "accomodation";
	}
	
	@RequestMapping(params = "method=getAllFront")
	public String getAllFront(HttpServletRequest request) {
		List<Room> roomList = this.roomBiz.find(null);
		request.setAttribute("roomListFront", roomList);
		return "front";
	}
	
	
	@RequestMapping(params = "method=getfind",produces="text/json;charset=utf-8",consumes="text/json;charset=utf-8")
	@ResponseBody
	public String getfind() {
		List<Room> findbyrid = this.roomBiz.find(null);
		String obj=JSONObject.toJSONString(findbyrid);
		return obj;
	}
	
	@RequestMapping(params = "getbyrid",produces="text/json;charset=utf-8",consumes="text/json;charset=utf-8")
	@ResponseBody
	public String getbyrid(int rid) {
		return JSONObject.toJSONString(this.roomBiz.findByRid(rid));
	}
	
	@RequestMapping(params = "findzroomByRid",produces="text/json;charset=utf-8",consumes="text/json;charset=utf-8")
	@ResponseBody
	public String findzroomByRid(int rid) {
		return JSONObject.toJSONString(this.roomBiz.findzroomByRid(rid));
	}
	
	@RequestMapping(params = "getfindbyrid",produces="text/json;charset=utf-8",consumes="text/json;charset=utf-8")
	public String getfindbyrid(HttpServletRequest request,int rid) {
		request.setAttribute("roomrid", this.roomBiz.findByRid(rid));
		request.setAttribute("zroomrid", this.roomBiz.findzroomByRid(rid));
		return "booking";
	}
	
	//查询所有房间种类  lsr
		@RequestMapping(params = "method=findall")
		public String findall(HttpServletRequest req) {
			List<Room> listroom = this.roomBiz.findall();
			req.setAttribute("listroom", listroom);
			return "pages/room/room-message";
		}
		
//		//根据ID查询
//		@RequestMapping(params = "method=init")
//		public String init(int rid,HttpServletRequest req) {
//			req.setAttribute("p", this.roomBiz.findByid(rid));
//			return "pages/room/room-message";
//		}
		
		//修改总类型房间信息
		@RequestMapping(params = "method=update")
		public String update(@RequestParam("rtype") String rtype,@RequestParam("rnumber")int rnumber,@RequestParam("rprice")double rprice,@RequestParam("rid") int rid) {
		//public String update() {
			this.roomBiz.update(rtype, rnumber, rprice, rid);
			return "redirect:room.do?method=findall";
		}
		
		
}
