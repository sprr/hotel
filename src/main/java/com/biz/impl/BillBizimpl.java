package com.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.biz.BillBiz;
import com.dao.BillDao;
import com.entity.Bill;
import com.entity.Orders;


@Service
public class BillBizimpl implements BillBiz {

	@Resource
	private BillDao billdao;

	// 后台查询订单信息 贺欢
	public List<Bill> findBill(String oid, int pagenumber) {
		// TODO Auto-generated method stub
		return this.billdao.findBill(oid, pagenumber);
	}

	//查询订单总个数 贺欢
	public int findBillCount2(String oid) {
		// TODO Auto-generated method stub
		return this.billdao.findBillCount2(oid);
	}

	//添加流水订单 贺欢
	public int addBill(String oid, String rtype,@Param("uid")String uid, String btime, String zname, String bprice, String initime,
			String outtime, String exist) {
		// TODO Auto-generated method stub
		return this.billdao.addBill(oid,uid, rtype, btime, zname, bprice, initime, outtime, exist);
	}
}
