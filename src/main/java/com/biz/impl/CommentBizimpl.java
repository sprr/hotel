package com.biz.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.biz.CommentBiz;
import com.dao.CommentDao;
import com.entity.Comment;
@Service
public class CommentBizimpl implements CommentBiz{

	@Resource
	private CommentDao commentdao;
	
	public int saveComment(String uname, String message, String cotime, String remark) {
		
		return this.commentdao.addComment(uname, message, cotime, remark);
	}

	@Override
	public List<Comment> getUComment(Map<String, Object> cmap) {
		// TODO Auto-generated method stub
		return this.commentdao.getUComment(cmap);
	}

	@Override
	public int getcount(Map<String, Object> cnum) {
		// TODO Auto-generated method stub
		return this.commentdao.getcount(cnum);
	}

}
