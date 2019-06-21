package com.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.biz.BlogBiz;
import com.dao.BlogDao;
import com.entity.Comment;

@Service
public class BlogBizimpl implements BlogBiz {

	@Resource
	private BlogDao blogdao;

	public List<Comment> findByPage(@Param("uname") String uname, @Param("pageNum") int pageNum) {
		// TODO Auto-generated method stub
		return this.blogdao.findByPage(uname, pageNum);
	}

	public int findCommentCount(@Param("uname") String uname) {
		// TODO Auto-generated method stub
		return this.blogdao.findCommentCount(uname);
	}

	public int getDelComment(@Param("coid") Integer coid) {
		// TODO Auto-generated method stub
		return this.blogdao.getDelComment(coid);
	}

}
