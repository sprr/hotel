package com.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.biz.RoomBiz;
import com.dao.RoomDao;
import com.entity.Room;
import com.entity.Zroom;

/**
 * 	客房逻辑实现层
 * @author 黎星平
 *
 */
@Service
public class RoomBizimpl implements RoomBiz{
	
	@Resource
	private RoomDao roomDao;

	//查询客房表
	public List<Room> find(Room room) {
		// TODO Auto-generated method stub
		return this.roomDao.find(room);
	}

	//根据rtype查询客房表
	public Room findByRid(int rid) {
		// TODO Auto-generated method stub
		return this.roomDao.findByRid(rid);
	}

	//根据rid查询子客房表
	public List<Zroom> findzroomByRid(int rid) {
		// TODO Auto-generated method stub
		return this.roomDao.findzroomByRid(rid);
	}

	//查询所有房间类型 lsr
	public List<Room> findall() {
		return this.roomDao.findall();
	}

	public void update(String rtype, int rnumber, double rprice,int rid) {
	
		this.roomDao.update(rtype, rnumber, rprice, rid);;
	}

	//根据iD查询 lsr
	public Room findByid(int rid) {	
		return this.roomDao.findByid(rid);
	}

	

}
