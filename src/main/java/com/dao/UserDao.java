package com.dao;

/**
 * @author 王琛
 * 用户操作接口
 */

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.entity.Comment;
import com.entity.Orders;
import com.entity.User;

public interface UserDao {
	// 登录
	public User Login(String phone);
	// 注册
	public int Register(User user);
	// 后台查询会员信息 贺欢
	public List<User> findUser1(@Param("phone") String phone, @Param("pagenumber") int pagenumber);
	// 后台删除会员信息 贺欢
	public void delUser(int uid);
	// 后台修改会员信息 贺欢
	public void upUser(@Param("upassword") String upassword, @Param("phone") String phone, @Param("uid") int uid);
	// 后台查询非会员信息 贺欢
	public List<User> findGenUser1(@Param("phone") String phone,@Param("pagenumber") int pagenumber);
	//后台添加非会员信息
	public void addGenUser(@Param("uname1") String uname,@Param("phone1") String phone,@Param("idcard1") String idcard,@Param("jurisdiction1") String jurisdiction,@Param("regtime1") String regtime);
	// 查询单个
	public User findUser(String phone);
	// 根据名字
	public User findUserById(String uname);
	//查询会员总个数 贺欢
	public int findUsertCount(@Param("phone") String phone);
	//查询非会员总个数 贺欢
	public int findUsertCount2(@Param("phone") String phone);
	// 后台修改会员信息 贺欢
	public void upUser2(@Param("phone") String phone,@Param("uid") int uid);
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
	
	//前台修改名字
	public void updateu(@Param("phone")String phone,@Param("uid")int uid );

	
	//个人中心修改密码
	public int updateupwd(@Param("uid")int uid,@Param("upassword")String upassword);


	//通过uid找user
	public User findUidByUser(int uid);
	/**
	 * 修改登录状态
	 * 黎星平
	 */
	int updateUserUstatusByid(@Param("ustatus")String ustatus,@Param("uid")int uid);

}
