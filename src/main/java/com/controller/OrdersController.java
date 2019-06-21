package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.enterprise.inject.New;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.biz.OrdersBiz;
import com.entity.Orders;
import com.entity.Room;
import com.entity.User;


@Controller
@RequestMapping("/orders.do")
public class OrdersController {

	@Resource
	private OrdersBiz ordersBiz;

	
//	个人订单条数
	@RequestMapping(params="method=getcount")
	@ResponseBody
	public String getcount(HttpSession session,@Param("otime")String otime) {
		User user=(User)session.getAttribute("loginuser");
		int uid=user.getUid();
		/*Map<String, Object> opage=new HashMap<String, Object>();
		opage.put("otime", otime);
		opage.put("uid", uid);*/
//		System.out.println(this.ordersBiz.getcount(uid, otime));
		return JSONObject.toJSONString(this.ordersBiz.getcount(uid, otime));
	}
//	查询个人订单
	@RequestMapping(params="method=getuoid")
	@ResponseBody
	public String getOid(HttpSession session,@Param("page")int page,@Param("otime")String otime) {
		User user=(User)session.getAttribute("loginuser");
		int uid=user.getUid();
		/*Map<String, Object> omap=new HashMap<String, Object>();
		omap.put("otime", otime);
		omap.put("page", page);
		omap.put("uid", uid);*/		
		return JSONObject.toJSONString(this.ordersBiz.getOid(uid, page, otime));
	}

	// 后台查询订单信息 贺欢
	@RequestMapping(params ="method=FindOrders")
	public @ResponseBody String FindOrders(@RequestParam("zname") String zname,@RequestParam("pagenumber") int pagenumber) {
	List<Orders> listorders = this.ordersBiz.findOrders(zname, pagenumber);
		String string=""+JSON.toJSONString(listorders,SerializerFeature.DisableCircularReferenceDetect);
		return string;
	}
	
	//订单查最大页码数 贺欢
	@RequestMapping(params ="method=getOrdersCount")
	public @ResponseBody String getOrdersCount(@RequestParam("zname") String zname) {
		String str = "" + this.ordersBiz.findOrderstCount2(zname);
		return str;
	}
	
	//后台删除订单信息 贺欢
	@RequestMapping(params="method=delOrders")
	public String delOrders(int oid) {
		this.ordersBiz.delOrders(oid);
		return "redirect:pages/user/user-reserve.jsp";
	}
	
	//后台修改订单信息 贺欢
	@RequestMapping(params="method=upOrders")
	public String upOrders(@RequestParam("ocost") String ocost,@RequestParam("endtime") String endtime,@RequestParam("intime") String intime,@RequestParam("outtime") String outtime,@RequestParam("oprice") String oprice,@RequestParam("remark") String remark,@RequestParam("oid") String oid) {
		this.ordersBiz.upOrders(ocost, endtime, intime, outtime, oprice, remark,Integer.parseInt(oid));
		return "redirect:pages/user/user-reserve.jsp";
	}
	
	//前台退订单
	@RequestMapping(params="method=unreg")
	@ResponseBody
	public String unreg(@Param("oid") int oid,HttpSession session) {
		User user=(User)session.getAttribute("loginuser");
		int uid=user.getUid();
		int n=this.ordersBiz.isunreg(uid, oid);
		String success="{\"mag\":\"已退订无法退订\"}";
		if(n>0) {
			Date newdate=new Date();
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String endtime=sdf.format(newdate);
			this.ordersBiz.unreg(uid, endtime,oid);
			success="{\"mag\":\"退订成功\"}";
		}
		return success;
	}
	//预定房间
	@RequestMapping(params="method=adduorder")
	@ResponseBody
	public String adduorder(HttpSession session,@Param("zname") String zname,@Param("rprice") double rprice,@Param("rimg") String rimg,@Param("intime") String intime,@Param("outtime") String outtime) {
		String ostr="login";
		User user=(User)session.getAttribute("loginuser");
		if(user!=null) {
			Room room = this.ordersBiz.findRoomByRtype(rimg);
			SimpleDateFormat sdf =new SimpleDateFormat("mmss");
			SimpleDateFormat sdf2=new SimpleDateFormat("yyyy-MM-dd");
			String otime=sdf2.format(new Date());
			int oid=Integer.parseInt(sdf.format(new Date()));
		    
			this.ordersBiz.adduorder( oid,user.getUid(), zname, rprice, room.getRimg(), otime, intime, outtime);
			List<String> aiList=new ArrayList<String>();
			aiList.add(""+oid);
			aiList.add("订单"+oid);
			aiList.add(""+rprice);
			aiList.add(rimg);
			session.setAttribute("aiList",aiList );
			ostr="alipay.index";
		}
		return ostr;
	}
}
