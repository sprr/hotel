package com.biz;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Bill;

public interface BillBiz {

	// 后台查询订单信息 贺欢
	public List<Bill> findBill(@Param("oid") String oid, @Param("pagenumber") int pagenumber);
	//查询订单总个数 贺欢
	public int findBillCount2(@Param("oid") String oid);
	//增加流水订单总个数 贺欢
	public int addBill(@Param("oid")String oid,@Param("uid")String uid,@Param("rtype") String rtype,@Param("btime") String btime,@Param("zname") String zname,@Param("bprice") String bprice,@Param("initime") String initime,@Param("outtime") String outtime,@Param("exist") String exist);
}
