package com.entity;
/**
 *流水表
 *lsr
 */
public class Bill {
	private int bid;
	private  User user;
	private int oid;
	private String rtype;//客房类型
	private String btime;//当天时间
	private String 	zname;//房间号
	private String bprice;//消费总价
	private String exist;//住房时间
	private String remark;//备注
	public Bill() {
	
	}
	public Bill(int bid, User user, int oid, String rtype, String btime, String zname, String bprice,
			String exist, String remark) {
		super();
		this.bid = bid;
		this.user = user;
		this.oid = oid;
		this.rtype = rtype;
		this.btime = btime;
		this.zname = zname;
		this.bprice = bprice;
		this.exist = exist;
		this.remark = remark;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getRtype() {
		return rtype;
	}
	public void setRtype(String rtype) {
		this.rtype = rtype;
	}
	public String getBtime() {
		return btime;
	}
	public void setBtime(String btime) {
		this.btime = btime;
	}
	public String getZname() {
		return zname;
	}
	public void setZname(String zname) {
		this.zname = zname;
	}
	public String getBprice() {
		return bprice;
	}
	public void setBprice(String bprice) {
		this.bprice = bprice;
	}
	public String getExist() {
		return exist;
	}
	public void setExist(String exist) {
		this.exist = exist;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}

}