package com.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.biz.UserBiz;
import com.dao.UserDao;
import com.entity.Orders;
import com.entity.User;

@Service
public class UserBizimpl implements UserBiz {

	@Resource
	private UserDao userdao;

	public User Login(String phone) {
		// TODO Auto-generated method stub
		return this.userdao.Login(phone);
	}

	public int Register(User user) {
		// TODO Auto-generated method stub
		return this.userdao.Register(user);
	}

	// 后台查询会员信息 贺欢
	@Override
	public List<User> findUser1(@Param("phone") String phone, int pagenumber) {
		// TODO Auto-generated method stub
		return this.userdao.findUser1(phone, pagenumber);
	}

	public User findUser(String phone) {
		// TODO Auto-generated method stub
		return this.userdao.findUser(phone);
	}

	public User findUserById(String uname) {
		// TODO Auto-generated method stub
		return this.userdao.findUserById(uname);
	}

	// 后台删除会员信息 贺欢
	public void delUser(int uid) {
		// TODO Auto-generated method stub
		this.userdao.delUser(uid);
	}

	// 后台修改会员信息 贺欢
	public void upUser(String upassword, String phone, int uid) {
		// TODO Auto-generated method stub
		this.userdao.upUser(upassword, phone, uid);
	}

	@Override
	public int findUsertCount(String phone) {
		// TODO Auto-generated method stub
		return this.userdao.findUsertCount(phone);
	}

	// 后台登录
	public User findBackLoginUser(User user) {
		// TODO Auto-generated method stub
		return this.userdao.findBackLoginUser(user);
	}

	// 后台查询权限管理员
	/**
	 * @author wangchen
	 */
	public List<User> findSuperUser(@Param("uname") String uname, @Param("pageNum") int pageNum) {
		// TODO Auto-generated method stub
		return this.userdao.findSuperUser(uname, pageNum);
	}

	// 查询权限管理员最大数
	public int findSuperUserCount(@Param("uname") String uname) {
		// TODO Auto-generated method stub
		return this.userdao.findSuperUserCount(uname);
	}

	// 后台查询非会员信息 贺欢
		
	public List<User> findGenUser1(String phone, int pagenumber) {
		// TODO Auto-generated method stub
		return this.userdao.findGenUser1(phone, pagenumber);
	}

	//查询非会员总个数 贺欢
	public int findUsertCount2(String phone) {
		// TODO Auto-generated method stub
		return this.userdao.findUsertCount2(phone);
	}

	// 后台修改会员信息 贺欢
	public void upUser2(String phone, int uid) {
		// TODO Auto-generated method stub
		this.userdao.upUser2(phone, uid);
	}

	//后台添加非会员信息
		
	public void addGenUser(String uname, String phone, String idcard, String jurisdiction, String regtime) {
		// TODO Auto-generated method stub
		this.userdao.addGenUser(uname, phone, idcard, jurisdiction, regtime);
	}

	// 修改权限管理员信息
	public int updateSuperUser(User user) {
		// TODO Auto-generated method stub
		return this.userdao.updateSuperUser(user);
	}

	// 删除权限管理员
	public int delSuperUser(Integer uid) {
		// TODO Auto-generated method stub
		return this.userdao.delSuperUser(uid);
	}

	public void updateu(@Param("phone") String phone, @Param("uid") int uid) {
		this.userdao.updateu(phone, uid);

	}

	@Override
	public int updateupwd(int uid, String upassword) {
		// TODO Auto-generated method stub
		return this.userdao.updateupwd(uid, upassword);
	}

	/**
	 * 修改登录状态
	 * 黎星平
	 */
	public int updateUserUstatusByid(@Param("ustatus")String ustatus,@Param("uid")int uid) {
		// TODO Auto-generated method stub
		return this.userdao.updateUserUstatusByid(ustatus, uid);
	}


}
