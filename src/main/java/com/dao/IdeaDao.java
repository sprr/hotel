package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Idea;

/**
 * 建议表
 * @author lsr
 *
 */
public interface IdeaDao {
	//增加建议
	public int add(@Param("uname")String uname,@Param("iemail")String iemail,@Param("icontent")String icontent,@Param("remark")String remark);
	
	//查询最大条数 lsr
	int findz(@Param("uname") String uname); 
	
	//分页查询 lsr
	List<Idea>  findbypage(@Param("uname") String uname,@Param("pageNum") int pageNum);

	//删除 lsr
		void delete(int iid);
}
