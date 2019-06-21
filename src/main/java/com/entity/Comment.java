package com.entity;
/**
 * 评论表
 * @author Administrator
 *
 */
public class Comment {
	private int coid;//
	private User uname;
	private String message;
	private String cotime;
	private String remark;
	
	
	public Comment() {
	}


	public Comment(int coid, User uname, String message, String cotime, String remark) {
		super();
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


	public User getUname() {
		return uname;
	}


	public void setUname(User uname) {
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
