package com.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.biz.ImgBiz;
import com.dao.ImgDao;
import com.entity.Img;

@Service
public class ImgBizimpl implements ImgBiz{

	@Resource
	private ImgDao imgDao;
	
	/**
	 * 查询所有图片信息
	 * @return 黎星平
	 */
	public List<Img> getSelectImg(@Param("name")String name,@Param("pageNum")int pageNum) {
		// TODO Auto-generated method stub
		return this.imgDao.getSelectImg(name,pageNum);
	}


	/**
	 * 	查询图片数量（最大页码数）
	 * @author 黎星平
	 * 
	 */
	public int getSelectImgCcount(@Param("name")String name) {
		// TODO Auto-generated method stub
		return this.imgDao.getSelectImgCcount(name);
	}


	
	public List<Img> getSelectImgAll() {
		// TODO Auto-generated method stub
		return this.imgDao.getSelectImgAll();
	}


	/**
	 * 根据id修改图片
	 * 黎星平
	 */
	public int getUpdateImgByid(Img img) {
		// TODO Auto-generated method stub
		return this.imgDao.getUpdateImgByid(img);
	}


	/**
	 * 删除图片
	 * @param img_id
	 * @return
	 */
	public int deleteImgByid(@Param("img_id")int img_id) {
		// TODO Auto-generated method stub
		return this.imgDao.deleteImgByid(img_id);
	}


	/**
	 * 增加图片
	 * 黎星平
	 */
	public int insertImg(Img img) {
		// TODO Auto-generated method stub
		return this.imgDao.insertImg(img);
	}
}
