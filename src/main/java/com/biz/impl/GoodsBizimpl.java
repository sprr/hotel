package com.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.biz.GoodsBiz;
import com.dao.GoodsDao;
import com.entity.Goods;

@Service
public class GoodsBizimpl implements GoodsBiz{

	@Resource
	private GoodsDao goodsdao;

	//查询最大数 lsr
	public int findcount(String gname) {
		return this.goodsdao.findcount(gname);
	}

	//分页查询所有 lsr
	public List<Goods> findbypage(String gname, int pageNum) {
		return this.goodsdao.findbypage(gname, pageNum);
	}

	//删除商品
	public void delete(int gid) {
		this.goodsdao.delete(gid);
	}

	//增加 lsr
	public void add(Goods goods) {
		this.goodsdao.add(goods);
		
	}

	//修改 lsr
	public void update(@Param("gname") String gname,@Param("gprice")  double gprice,@Param("gnumber") int gnumber,@Param("gid") int gid) {
		this.goodsdao.update(gname, gprice, gnumber, gid);
		
	}

	
	

	
	
}
