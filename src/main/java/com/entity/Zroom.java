package com.entity;
/**
 * 	子客房表
 * @author Administrator
 *
 */
public class Zroom {
	private int zid;
	private Room room;
	private String zname; //(房间号)
	private String zstatus; //状态
	private String remark;//备注
	
	public Zroom() {
	}
	
	public Zroom(int zid, Room room, String zname, String zstatus, String remark) {
		super();
		this.zid = zid;
		this.room = room;
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
	public Room getRoom() {
		return room;
	}
	public void setRoom(Room room) {
		this.room = room;
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
