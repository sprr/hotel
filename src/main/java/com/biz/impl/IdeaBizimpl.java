package com.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.biz.IdeaBiz;
import com.dao.IdeaDao;
import com.entity.Idea;
import com.entity.User;

@Service
public class IdeaBizimpl implements IdeaBiz{

	@Resource
	private IdeaDao ideadao;
	
	
	public int save(String uname,String iemail,String icontent,String remark) {
		
		return this.ideadao.add(uname, iemail, icontent, remark);
		
	}


	//查询最大条数 lsr
	public int findz(String uname) {		
		return this.ideadao.findz(uname);
	}


	//分页查询lsr
	public List<Idea> findbypage(String uname, int pageNum) {
		return this.ideadao.findbypage(uname, pageNum);
	}


	@Override
	public void delete(int iid) {
		this.ideadao.delete(iid);
		
	}

}
