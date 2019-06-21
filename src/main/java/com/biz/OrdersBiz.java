package com.biz;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.entity.Orders;
import com.entity.Room;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Orders;


public interface OrdersBiz {
	   //前台个人订单分页查询
//		public List<Orders> getOid(@Param("uid")int uid,@Param("page")int page,@Param("otime")String otime);
//	  public List<Orders> getOid(Map<String, Object> omap);
	  public List<Orders> getOid(@Param("uid")int uid,@Param("page")int page,@Param("otime")String otime);
		//前台个人订单条数
//		public int getcount(Map<String, Object> opage);
		public int getcount(@Param("uid")int uid,@Param("otime")String otime);
	// 后台查询订单信息 贺欢
	public List<Orders> findOrders(@Param("zname") String zname, @Param("pagenumber") int pagenumber);
	// 后台修改订单信息 贺欢
	public void upOrders(@Param("ocost") String ocost, @Param("endtime") String endtime,@Param("intime") String intime,@Param("outtime") String outtime,@Param("oprice") String oprice,@Param("remark") String remark, @Param("oid") int oid);
	// 后台删除订单信息 贺欢
	public void delOrders(int oid);
	//查询订单总个数 贺欢
	public int findOrderstCount2(@Param("zname") String zname);
	
	//判断是否退订 李华山
		public int isunreg(@Param("uid")int uid,@Param("oid")int oid);
		//根据oid退订单  修改退订时间   李华山
		public int  unreg(@Param("uid")int uid,@Param("endtime")String endtime,@Param("oid")int oid);
		//添加订单
//	    public int adduorder(Orders order);
		//添加订单
	    public int adduorder(@Param("oid")int oid,@Param("uid")int uid,@Param("zname")String zname,@Param("rprice")double rprice,@Param("rimg")String rimg,@Param("otime")String otime,@Param("intime")String intime,@Param("outtime")String outtime);

	  //查询房间图片 lhs
	    public Room findRoomByRtype(@Param("rimg")String rimg);
	    
}
