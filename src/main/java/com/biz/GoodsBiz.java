package com.biz;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Goods;

public interface GoodsBiz {
	
	//查询商品表最大数 lsr
		int findcount(@Param("gname")String gname);
		
		//分页查询所有 lsr
		List<Goods> findbypage(@Param("gname") String gname,@Param("pageNum")  int pageNum);
		
		//删除商品 lsr
		void delete(int gid);
		
		//增加  lsr
		void add(Goods goods);
		
		//修改 lsr
		void update(@Param("gname") String gname,@Param("gprice")  double gprice,@Param("gnumber") int gnumber,@Param("gid") int gid);
}
