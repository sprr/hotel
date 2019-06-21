package com.biz;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Orders;
import com.entity.User;

public interface UserBiz {

	public User Login(String phone);
	public int Register(User user);
	//注册查询
	public User findUser(String phone);
	// 根据id
	public User findUserById(String uname);
	// 后台查询会员信息 贺欢
	public List<User> findUser1(@Param("phone") String phone, int pagenumber);
	// 后台删除会员信息 贺欢
	public void delUser(int uid);
	// 查询总个数 贺欢
	public int findUsertCount(@Param("phone") String phone);
	// 后台修改会员信息 贺欢
	public void upUser(String upassword, String phone, int uid);
	// 后台查询非会员信息 贺欢
	public List<User> findGenUser1(@Param("phone") String phone,@Param("pagenumber") int pagenumber);
	//查询非会员总个数 贺欢
	public int findUsertCount2(@Param("phone") String phone);
	// 后台修改非会员信息 贺欢
	public void upUser2(@Param("phone") String phone,@Param("uid") int uid);
	//后台添加非会员信息
	public void addGenUser(@Param("uname1") String uname,@Param("phone1") String phone,@Param("idcard1") String idcard,@Param("jurisdiction1") String jurisdiction,@Param("regtime1") String regtime);
	// 后台登录
	public User findBackLoginUser(User user);

	// 后台查询权限管理员
	/**
	 * @author wangchen
	 */
	public List<User> findSuperUser(@Param("uname") String uname, @Param("pageNum") int pageNum);

	// 查询权限管理员最大数
	public int findSuperUserCount(@Param("uname") String uname);

	// 修改权限管理员信息
	public int updateSuperUser(User user);

	// 删除权限管理员
	public int delSuperUser(Integer uid);

	// 前台修改名字
	public void updateu(@Param("phone") String phone, @Param("uid") int uid);
	
	//个人中心修改密码
	public int updateupwd(@Param("uid")int uid,@Param("upassword")String upassword);
	
	/**
	 * 修改登录状态
	 * 黎星平
	 */
	int updateUserUstatusByid(@Param("ustatus")String ustatus,@Param("uid")int uid);

}
