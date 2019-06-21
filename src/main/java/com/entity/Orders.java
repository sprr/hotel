package com.entity;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 订单表
 * @author Administrator
 *
 */
public class Orders {
	private int oid;
	private User user;
	private String zname;
	private double rprice;
	private double ocost;//额外费用
	private String rimg;
	private String otime;//下单时间
	private String endtime;//退单时间
	private String intime;//入住时间
	private String outtime;//退房时间
	private double oprice;//总价
	private String remark;//备注
	
	
	public Orders() {
	}
	
	public Orders(int oid, User user, String zname, double rprice, double ocost, String rimg,String otime, String endtime,
			String intime, String outtime, double oprice, String remark) {
		super();
		this.oid = oid;
		this.user = user;
		this.zname = zname;
		this.rprice = rprice;
		this.ocost = ocost;
		this.rimg=rimg;
		this.otime = otime;
		this.endtime = endtime;
		this.intime = intime;
		this.outtime = outtime;
		this.oprice = oprice;
		this.remark = remark;
	}

	public String getRimg() {
		return rimg;
	}

	public void setRimg(String rimg) {
		this.rimg = rimg;
	}

	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public String getZname() {
		return zname;
	}

	public void setZname(String zname) {
		this.zname = zname;
	}

	public double getRprice() {
		return rprice;
	}

	public void setRprice(double rprice) {
		this.rprice = rprice;
	}

	public double getOcost() {
		return ocost;
	}
	public void setOcost(double ocost) {
		this.ocost = ocost;
	}
	public String getOtime() {
		return otime;
	}
	public void setOtime(String otime) {
		this.otime = otime;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtimme(String endtime) {
		this.endtime = endtime;
	}
	public String getIntime() {
		return intime;
	}
	public void setIntime(String intime) {
		this.intime = intime;
	}
	public String getOuttime() {
		return outtime;
	}
	public void setOuttime(String outtime) {
		this.outtime = outtime;
	}
	public double getOprice() {
		return oprice;
	}
	public void setOprice(double oprice) {
		this.oprice = oprice;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Override
	public String toString() {
		return "Orders [oid=" + oid + ", user=" + user + ", zname=" + zname + ", rprice=" + rprice + ", ocost=" + ocost
				+ ", rimg=" + rimg + ", otime=" + otime + ", endtime=" + endtime + ", intime=" + intime + ", outtime="
				+ outtime + ", oprice=" + oprice + ", remark=" + remark + "]";
	}
	
}
