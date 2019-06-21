package com.entity;
/**
 * lsr
 * @author Administrator
 *
 */
public class Ideaoto {
	private int iid;
	private String uname;
	private String iemail;
	private String Imotif;//主题
	private String icontent;//内容
	private String remark;//备注
	public Ideaoto() {

	}
	public Ideaoto(int iid, String uname, String iemail, String imotif, String icontent, String remark) {
	
		this.iid = iid;
		this.uname = uname;
		this.iemail = iemail;
		Imotif = imotif;
		this.icontent = icontent;
		this.remark = remark;
	}
	public int getIid() {
		return iid;
	}
	public void setIid(int iid) {
		this.iid = iid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getIemail() {
		return iemail;
	}
	public void setIemail(String iemail) {
		this.iemail = iemail;
	}
	public String getImotif() {
		return Imotif;
	}
	public void setImotif(String imotif) {
		Imotif = imotif;
	}
	public String getIcontent() {
		return icontent;
	}
	public void setIcontent(String icontent) {
		this.icontent = icontent;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	
}
