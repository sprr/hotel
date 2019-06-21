package com.biz;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Idea;
import com.entity.User;

/**
 * 建议表
 * @author lsr
 *
 */
public interface IdeaBiz {
	public int save(String uname,String iemail,String icontent,String remark);
	
	//查询最大条数 lsr
	public  int findz(@Param("uname") String uname);
	
	//分页查询 lsr
	public 	List<Idea>  findbypage(@Param("uname") String uname,@Param("pageNum") int pageNum);
	
	//删除
	public  void delete(int iid);
}
