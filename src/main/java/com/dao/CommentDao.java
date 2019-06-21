package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.entity.Comment;

/**
 * 评论表
 * @author lsr
 *
 */
public interface CommentDao {
	//发表评论
	public int addComment(@Param("uname")String uname,@Param("message")String message,@Param("cotime")String cotime ,@Param("remark")String remark);
	//个人评论 lhs
	public List<Comment> getUComment(Map<String, Object> cmap);
	//个人评论条数  lhs
	public int getcount(Map<String, Object> cnum);

}
