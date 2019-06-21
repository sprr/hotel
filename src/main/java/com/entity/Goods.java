package com.entity;
/**
 * 物品库存表
 * @author Administrator
 *
 */
public class Goods {
	private int gid;
	private String gname;
	private double gprice;
	private int gnumber;
	private String remark;
	
	public Goods() {
	}
	
	public Goods(int gid, String gname, double gprice, int gnumber, String remark) {
		super();
		this.gid = gid;
		this.gname = gname;
		this.gprice = gprice;
		this.gnumber = gnumber;
		this.remark = remark;
	}

	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public double getGprice() {
		return gprice;
	}
	public void setGprice(double gprice) {
		this.gprice = gprice;
	}
	public int getGnumber() {
		return gnumber;
	}
	public void setGnumber(int gnumber) {
		this.gnumber = gnumber;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	
}