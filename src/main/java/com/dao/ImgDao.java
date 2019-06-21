package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Img;

public interface ImgDao {

	/**
	 * 美景表接口
	 * @author Administrator
	 *
	 */
	
	/**
	 * 查询所有图片信息
	 * @author 黎星平
	 */
	List<Img> getSelectImgAll();
	
	/**
	 * 查询所有图片信息
	 * @author 黎星平
	 */
	List<Img> getSelectImg(@Param("name")String name,@Param("pageNum")int pageNum);
	
	/**
	 * 	查询图片数量（最大页码数）
	 * @author 黎星平
	 * 
	 */
	int getSelectImgCcount(@Param("name")String name);
	
	/**
	 * 根据id修改图片
	 * 黎星平
	 */
	int getUpdateImgByid(Img img);
	
	/**
	 * 删除图片
	 * @param img_id
	 * @return
	 */
	int deleteImgByid(@Param("img_id")int img_id);
	/**
	 * 增加图片
	 * 黎星平
	 */
	int insertImg(Img img);
}
