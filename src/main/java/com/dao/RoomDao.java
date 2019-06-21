package com.dao;
/**
 * 	客房方法层
 * @author 黎星平
 *
 */

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Room;
import com.entity.Zroom;

public interface RoomDao {
	
	//查询客房表
	List<Room> find(Room room);
	
	//根据rid查询客房表
	Room findByRid(int rid);
	
	//根据rid查询子客房表
	List<Zroom> findzroomByRid(int rid);
	
	//查询所有房间 lsr
	public List<Room> findall();
	 
	//根据id查询
	public Room findByid(int rid);
	
	 //修改房间信息 lsr
	 public void update(@Param("rtype") String rtype,@Param("rnumber")  int rnumber,@Param("rprice") double rprice,@Param("rid") int rid);
}
