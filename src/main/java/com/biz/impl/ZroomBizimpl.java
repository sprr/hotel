package com.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.biz.ZroomBiz;
import com.dao.ZRoomDao;
import com.entity.Zroomoto;

@Service
public class ZroomBizimpl implements ZroomBiz{

	@Resource
	private ZRoomDao zRoomDao;

	
	public List<Zroomoto> findbypage(@Param("zstatus")String zstatus, @Param("pageNum")int pageNum) {
		
		return this.zRoomDao.findbypage(zstatus, pageNum);
	}


	
	public int findz(String zstatus) {
		return this.zRoomDao.findz(zstatus);
	}



	@Override
	public void update(int rid, String zname, String zstatus, int zid) {
		this.zRoomDao.update(rid, zname, zstatus, zid);
		
	}
}
