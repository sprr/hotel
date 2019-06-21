package com.entity;

public class Zroomoto {
	private int zid;
	private String rtype;
	private String zname; //(房间号)
	private String zstatus; //状态
	private String remark;//备注
	public Zroomoto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Zroomoto(int zid, String rtype, String zname, String zstatus, String remark) {
		super();
		this.zid = zid;
		this.rtype = rtype;
		this.zname = zname;
		this.zstatus = zstatus;
		this.remark = remark;
	}
	public int getZid() {
		return zid;
	}
	public void setZid(int zid) {
		this.zid = zid;
	}
	public String getRtype() {
		return rtype;
	}
	public void setRtype(String rtype) {
		this.rtype = rtype;
	}
	public String getZname() {
		return zname;
	}
	public void setZname(String zname) {
		this.zname = zname;
	}
	public String getZstatus() {
		return zstatus;
	}
	public void setZstatus(String zstatus) {
		this.zstatus = zstatus;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	
}
