package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Bill;
import com.entity.Orders;
import com.entity.User;

public interface BillDao {

	/**
	 * 流水表接口
	 * @author Administrator
	 *
	 */
	// 后台查询订单信息 贺欢
	public List<Bill> findBill(@Param("oid") String oid, @Param("pagenumber") int pagenumber);
	//查询订单总个数 贺欢
	public int findBillCount2(@Param("oid") String oid);
	//通过uid找user
	public User findUserByBill(int uid);
	//增加流水订单总个数 贺欢
	public int addBill(@Param("oid")String oid,@Param("uid")String uid,@Param("rtype") String rtype,@Param("btime") String btime,@Param("zname") String zname,@Param("bprice") String bprice,@Param("initime") String initime,@Param("outtime") String outtime,@Param("exist") String exist);
}
