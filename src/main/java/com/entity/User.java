package com.entity;

public class User {
	
	private int uid;
	private String uname;
	private String upassword;
	private String phone;
	private String idcard;  //身份证
	private String jurisdiction;
	private String ustatus;
	private String regtime; //注册时间
	private String balance;
	private String remark;
	
	
	public User() {
		
	}

	public User(int uid, String uname, String upassword, String phone, String idcard, String jurisdiction,
			String ustatus, String regtime, String balance, String remark) {
		this.uid = uid;
		this.uname = uname;
		this.upassword = upassword;
		this.phone = phone;
		this.idcard = idcard;
		this.jurisdiction = jurisdiction;
		this.ustatus = ustatus;
		this.regtime = regtime;
		this.balance = balance;
		this.remark = remark;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpassword() {
		return upassword;
	}

	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getIdcard() {
		return idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}

	public String getJurisdiction() {
		return jurisdiction;
	}

	public void setJurisdiction(String jurisdiction) {
		this.jurisdiction = jurisdiction;
	}

	public String getUstatus() {
		return ustatus;
	}

	public void setUstatus(String ustatus) {
		this.ustatus = ustatus;
	}

	public String getRegtime() {
		return regtime;
	}

	public void setRegtime(String regtime) {
		this.regtime = regtime;
	}

	public String getBalance() {
		return balance;
	}

	public void setBalance(String balance) {
		this.balance = balance;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", upassword=" + upassword + ", phone=" + phone + ", idcard="
				+ idcard + ", jurisdiction=" + jurisdiction + ", ustatus=" + ustatus + ", regtime=" + regtime
				+ ", balance=" + balance + ", remark=" + remark + "]";
	}
	
}
