package com.biz.impl;


import java.util.List;
import java.util.Map;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.biz.OrdersBiz;
import com.dao.OrdersDao;
import com.entity.Orders;
import com.entity.Room;

@Service
public class OrdersBizimpl implements OrdersBiz{
	
	@Resource
	private OrdersDao ordersDao;


	@Override
	public List<Orders> getOid(@Param("uid")int uid,@Param("page")int page,@Param("otime")String otime) {
		// TODO Auto-generated method stub
		return this.ordersDao.getOid(uid,page,otime);
	}

	@Override
	public int getcount(@Param("uid")int uid,@Param("otime")String otime) {
		// TODO Auto-generated method stub
		return this.ordersDao.getcount(uid,otime);
	}

	
	
	// 后台查询订单信息 贺欢
	public List<Orders> findOrders(String zname, int pagenumber) {
		// TODO Auto-generated method stub
		return this.ordersDao.findOrders(zname, pagenumber);
	}

	// 后台修改订单信息 贺欢
	public void upOrders(String ocost, String endtime, String intime, String outtime, String oprice, String remark,
			int oid) {
		// TODO Auto-generated method stub
		this.ordersDao.upOrders(ocost, endtime, intime, outtime, oprice, remark, oid);
	}

	// 后台删除订单信息 贺欢
	public void delOrders(int oid) {
		// TODO Auto-generated method stub
		this.ordersDao.delOrders(oid);
	}

	//查询订单总个数 贺欢
	public int findOrderstCount2(String zname) {
		// TODO Auto-generated method stub
		return this.ordersDao.findOrderstCount2(zname);
	}

	@Override
	public int isunreg(int uid, int oid) {
		// TODO Auto-generated method stub
		return this.ordersDao.isunreg(uid, oid);
	}

	@Override
	public int unreg(int uid, String endtime,int oid) {
		// TODO Auto-generated method stub
		return this.ordersDao.unreg(uid, endtime,oid);
	}

	@Override
	public int adduorder( int oid,int uid, String zname, double rprice, String rimg, String otime, String intime,
			String outtime) {
		// TODO Auto-generated method stub
		return this.ordersDao.adduorder(oid,uid, zname, rprice, rimg, otime, intime, outtime);
	}

	@Override
	public Room findRoomByRtype(String rimg) {
		// TODO Auto-generated method stub
		return this.ordersDao.findRoomByRtype(rimg);
	}

	

}
