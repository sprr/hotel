package com.entity;

public class Commentoto {
	private int coid;//
	private String uname;
	private String message;
	private String cotime;
	private String remark;
	public Commentoto() {
	
	}
	public Commentoto(int coid, String uname, String message, String cotime, String remark) {
		this.coid = coid;
		this.uname = uname;
		this.message = message;
		this.cotime = cotime;
		this.remark = remark;
	}
	public int getCoid() {
		return coid;
	}
	public void setCoid(int coid) {
		this.coid = coid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getCotime() {
		return cotime;
	}
	public void setCotime(String cotime) {
		this.cotime = cotime;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
}
