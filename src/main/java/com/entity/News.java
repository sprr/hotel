package com.entity;
/**
 * 新闻表
 * @author Administrator
 *
 */
public class News {
	private int nid;
	private String nimg;
	private String content;//（内容）
	private String title;
	private String author;
	private String ntime;
	private String remark;
	
	public News() {
	}
	
	public News(int nid, String nimg, String content, String title, String author, String ntime, String remark) {
		super();
		this.nid = nid;
		this.nimg = nimg;
		this.content = content;
		this.title = title;
		this.author = author;
		this.ntime = ntime;
		this.remark = remark;
	}

	public int getNid() {
		return nid;
	}
	public void setNid(int nid) {
		this.nid = nid;
	}
	public String getNimg() {
		return nimg;
	}
	public void setNimg(String nimg) {
		this.nimg = nimg;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getNtime() {
		return ntime;
	}
	public void setNtime(String ntime) {
		this.ntime = ntime;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
}
