package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Comment;

public interface BlogDao {

	// 分页
	public List<Comment> findByPage(@Param("uname") String uname, @Param("pageNum") int pageNum);

	// 查询总个数
	public int findCommentCount(@Param("uname") String uname);

	// 删除评论
	public int getDelComment(@Param("coid") Integer coid);

}
