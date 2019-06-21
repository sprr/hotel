package com.biz;

import java.util.List;
import java.util.Map;

import com.entity.Comment;

/**
 * 评论表 
 * @author lsr
 *
 */
public interface CommentBiz {
	
	public int saveComment(String uname,String message,String cotime ,String remark);
	//个人评论 lhs
	public List<Comment> getUComment(Map<String, Object> cmap);
	//个人评论条数  lhs
	public int getcount(Map<String, Object> cnum);
}