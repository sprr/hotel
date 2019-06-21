package com.controller;

/**
 * @author 王琛
 * 用户控制器
 */
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.aliyun.CommonRpc;
import com.biz.UserBiz;
import com.entity.User;

@Controller
@RequestMapping("/user.do")
public class UserController {

	@Resource
	private UserBiz userbiz;

	int n = (int) ((Math.random() * 9 + 1) * 100000);// 生成6位随机数

	String phone = null;

	// 登录获取随机数
	@RequestMapping(params = "method=random")
	public void getrandom(String phone) {
		this.phone = phone;
		CommonRpc.getCode(phone, n);
	}

	// 登录方法
	@RequestMapping(params = "method=login")
	public String Login(HttpServletRequest request, String phone, String user_sms_verifycode/* 验证码 */) {
		String login = "";
		User user=this.userbiz.Login(phone);
		if(user!=null) {
			if (Integer.parseInt(user_sms_verifycode) == n && this.phone.equals(phone)) {	
				
				HttpSession session=request.getSession();
				session.setAttribute("loginuser",user );
				this.userbiz.updateUserUstatusByid("在线", user.getUid());
				login = "front";
			} else {
				request.setAttribute("user", phone);
				login = "login";
			}
		}else {
			login = "login";
		}
		return login;
	}

	// 注册获取随机数
	@RequestMapping(params = "method=registercode")
	public void getRegisterCode(String phone) {
		this.phone = phone;
		CommonRpc.getRegCode(phone, n);
	}

	// 后台查询会员信息 贺欢
	@RequestMapping(params = "method=findUser")
	public @ResponseBody String FindUser(@RequestParam("phone") String phone,
			@RequestParam("pagenumber") int pagenumber) {
		List<User> listuser = this.userbiz.findUser1(phone, pagenumber);
		return JSON.toJSONString(listuser);
	}

	//会员查最大页码数
	@RequestMapping(params = "method=count3")
	public @ResponseBody String getCommentCount3(@RequestParam("phone") String phone) {
		String str = "" + this.userbiz.findUsertCount(phone);
		return str;
	}

	// 查最大页码数
	@RequestMapping(params = "method=count")
	public @ResponseBody String getCommentCount(@RequestParam("phone") String phone) {
		String str = "" + this.userbiz.findSuperUserCount(phone);
		return str;
	}
	
	//非会员查最大页码数
	@RequestMapping(params = "method=count2")
	public @ResponseBody String getCommentCount2(@RequestParam("phone") String phone) {
		String str = ""+this.userbiz.findUsertCount2(phone);
		return str;
	}

	// 注册方法
	@RequestMapping(params = "method=register", produces = "text/json;charset=utf-8")
	public @ResponseBody String Register(User user, String user_sms_verifycode) {
		user.setRegtime(new Date().toLocaleString());
		user.setJurisdiction("会员");
		int resultint = 0;
		if (this.userbiz.findUser(user.getPhone()) == null) {
			if (user.getPhone().equals(this.phone) && Integer.parseInt(user_sms_verifycode) == n) {
				resultint = this.userbiz.Register(user);
			}
		}
		return JSONObject.toJSONString(resultint);
	}

	// 后台登录
	/**
	 * @author 王琛
	 */
	@RequestMapping(params = "method=backlogin")
	public String BackLogin(HttpServletRequest request, User user) {
		String Jsp = null;
		User backuser = this.userbiz.findBackLoginUser(user);
		if(backuser!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("backloginuser", backuser);
			session.setAttribute("jurisdiction", backuser.getJurisdiction());
			if (backuser.getJurisdiction().equals("会员")) {
				Jsp = "redirect:backlogin.jsp";
			} else {
				this.userbiz.updateUserUstatusByid("在线", backuser.getUid());
				Jsp = "redirect:index.jsp";
			}
		}else {
			Jsp = "redirect:backlogin.jsp";
		}
		return Jsp;
	}

	// 后台删除会员信息方法 贺欢
	@RequestMapping(params = "method=DelUser")
	public String DelUser(int uid) {
		this.userbiz.delUser(uid);
		return "redirect:pages/user/user-member.jsp";
	}

	// 后台修改会员信息方法 贺欢
	@RequestMapping(params = "method=UpUser")
	public String UpUser(@RequestParam("upassword") String upassword, @RequestParam("phone") String phone,
			@RequestParam("uid") String uid) {

		this.userbiz.upUser(upassword, phone, Integer.parseInt(uid));
		return "redirect:pages/user/user-member.jsp";
	}
	
	// 后台查询非会员信息 贺欢
	@RequestMapping(params = "method=FindGenUser")
	public @ResponseBody String FindGenUser(@RequestParam("phone") String phone,@RequestParam("pagenumber")int pagenumber) {
		List<User> listuser=this.userbiz.findGenUser1(phone,pagenumber);
		return JSON.toJSONString(listuser);
	}
	// 后台删除会员信息方法 贺欢
	@RequestMapping(params = "method=DelUser2")
	public String DelUser2(int uid) {
		this.userbiz.delUser(uid);
		return "redirect:pages/user/user-guest.jsp";
	}

	// 后台修改非会员信息方法 贺欢
	@RequestMapping(params = "method=UpUser2")
	public String UpUser2(@RequestParam("phone") String phone,@RequestParam("uid") String uid) {
		this.userbiz.upUser2(phone, Integer.parseInt(uid));
		return "redirect:pages/user/user-guest.jsp";
	}
	// 后台添加非会员信息方法 贺欢
	@RequestMapping(params ="method=AddGenUser")
	public String AddGenUser(@RequestParam("uname1") String uname,@RequestParam("phone1") String phone,@RequestParam("idcard1") String idcard,@RequestParam("jurisdiction1") String jurisdiction,@RequestParam("regtime1") String regtime) {
		this.userbiz.addGenUser(uname, phone, idcard, jurisdiction, regtime);
		return "redirect:pages/user/user-guest.jsp";
	}
	/**
	 * @author wangchen 后台查询权限管理员
	 */
	@RequestMapping(params = "method=super", produces = "text/json;charset=utf-8")
	public @ResponseBody String findSuperUser(@Param("uname") String uname, @Param("pageNum") int pageNum) {
		return JSON.toJSONString(this.userbiz.findSuperUser(uname, pageNum));
	}

	/**
	 * @author wangchen 权限管理员最大数查询
	 */
	@RequestMapping(params = "method=supercount")
	public @ResponseBody String findSuperUserCount(@Param("uname") String uname) {
		String count = "" + this.userbiz.findSuperUserCount(uname);
		return count;
	}

	/**
	 * 修改权限管理员信息
	 */
	@RequestMapping(params = "method=updatesuper")
	public String updateSuperUser(User user) {
		this.userbiz.updateSuperUser(user);
		return "redirect:pages/super/super-manage.jsp";
	}

	/**
	 * 删除权限管理员信息
	 */
	@RequestMapping(params = "method=delsuper")
	public String delSuperUser(Integer uid) {
		this.userbiz.delSuperUser(uid);
		return "redirect:pages/super/super-manage.jsp";
	}

	/**
	 * session 失效，注销方法
	 */
	@RequestMapping(params = "method=delsession")
	public String delSession(HttpServletRequest request,@Param("uid")int uid) {
		HttpSession session = request.getSession();
		this.userbiz.updateUserUstatusByid("未在线", uid);
		session.invalidate();
		return "redirect:backlogin.jsp";
	}
	
	@RequestMapping(params = "method=delsession2")
	public String delSession2(HttpServletRequest request,@Param("uid")int uid) {
		HttpSession session = request.getSession();
		this.userbiz.updateUserUstatusByid("未在线", uid);
		session.invalidate();
		return "redirect:login.jsp";
	}

	@RequestMapping(params = "method=updateu")
	public String updateu(@Param("phone") String phone, @Param("uid") int uid, HttpSession session) {
		this.userbiz.updateu(phone, uid);
		session.removeAttribute("loginuser");
		return "elements";
	}
	
	@RequestMapping(params="method=updateupwd")
	public String updateupwd(HttpSession session,@Param("password")String password,@Param("password2")String password2,@Param("oldpassword")String oldpassword) {
		User user=(User)session.getAttribute("loginuser");
		String upwd=user.getUpassword();
		int uid=user.getUid();
		String mag="elements";
		if(oldpassword.equals(upwd)) {
			this.userbiz.updateupwd(uid, password);
			session.removeAttribute("loginuser");
			mag="front";
		}
		return mag;
	}

}
