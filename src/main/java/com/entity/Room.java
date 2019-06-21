package com.entity;
/**
 * 客房表
 * @author Administrator
 *
 */
public class Room {
	private int rid;
	private String rtype;
	private int rnumber;
	private double rprice;
	private String rimg;
	private String remark;
	
	public Room() {
	}
	
	public Room(int rid, String rtype, int rnumber, double rprice, String rimg, String remark) {
		super();
		this.rid = rid;
		this.rtype = rtype;
		this.rnumber = rnumber;
		this.rprice = rprice;
		this.rimg = rimg;
		this.remark = remark;
	}

	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public String getRtype() {
		return rtype;
	}
	public void setRtype(String rtype) {
		this.rtype = rtype;
	}
	public int getRnumber() {
		return rnumber;
	}
	public void setRnumber(int rnumber) {
		this.rnumber = rnumber;
	}
	public double getRprice() {
		return rprice;
	}
	public void setRprice(double rprice) {
		this.rprice = rprice;
	}
	public String getRimg() {
		return rimg;
	}
	public void setRimg(String rimg) {
		this.rimg = rimg;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	
	
}
