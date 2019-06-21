package com.biz;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Zroomoto;

public interface ZroomBiz {
	
	//查询所有房间 lsr
	public List<Zroomoto> findbypage(@Param("zstatus") String zstatus,@Param("pageNum")  int pageNum);
		
		//查讯最大条数
		public int findz(@Param("zstatus") String zstatus);
		
		//修改 房間信息 lsr
		void update(int rid,String zname,String zstatus,int zid);
}
