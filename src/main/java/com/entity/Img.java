package com.entity;
/**
 * 酒店美景图
 * @author Administrator
 *
 */
public class Img {
	private String img_id;
	private String img_info;
	
	public Img() {

	}
	
	public Img(String img_id, String img_info) {
		super();
		this.img_id = img_id;
		this.img_info = img_info;
	}

	public String getImg_id() {
		return img_id;
	}
	public void setImg_id(String img_id) {
		this.img_id = img_id;
	}
	public String getImg_info() {
		return img_info;
	}
	public void setImg_info(String img_info) {
		this.img_info = img_info;
	}

}
