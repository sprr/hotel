package com.biz;

import java.util.List;

import com.entity.Room;
import com.entity.Zroom;

/**
 * 	客房逻辑处理层
 * @author 黎星平
 *
 */
public interface RoomBiz {
	//查询客房表
	List<Room> find(Room room);
	
	//根据fid查询客房表
	Room findByRid(int rid);
	
	//根据rid查询子客房表
	List<Zroom> findzroomByRid(int rid);
	
	//查询所有房间 lsr
	public List<Room> findall();
	
	//根据ID查询
	public Room findByid(int rid);
	
	//修改总房间信息 lsr
	 public void update(String rtype,int rnumber,double rprice,int rid);

}
