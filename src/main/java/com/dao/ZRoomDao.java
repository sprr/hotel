package com.dao;
/**
 * 所有房间信息操作
 * @author Administrator
 *
 */

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Zroom;
import com.entity.Zroomoto;

public interface ZRoomDao {
	//根据种类查询所有房间
	public List<Zroom> findZroomRid(int rid);

	
	//查询所有房间 lsr
	public List<Zroomoto> findbypage(@Param("zstatus") String zstatus,@Param("pageNum")  int pageNum);
	
	
	//查询最大数 lsr
	public int findz(@Param("zstatus") String zstatus);

	//修改房間 lsr
	public void update(@Param("rid") int rid,@Param("zname") String zname,@Param("zstatus") String zstatus,@Param("zid") int zid);
}


