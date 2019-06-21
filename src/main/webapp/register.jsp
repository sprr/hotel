<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>

	<head>
		<title>Home</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="" />
		<script type="application/x-javascript">
			addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);

			function hideURLbar() { window.scrollTo(0, 1); }
		</script>
		<!-- font files  -->
		<link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Nunito:400,300,700' rel='stylesheet' type='text/css'>
		<!-- /font files  -->
		<!-- css files -->
		<link href="css/loginstyle.css" rel='stylesheet' type='text/css' media="all" />
		<!-- /css files -->
		<script src="js/jquery.min.js"></script>
		<script>

			var  f=true;
			function checkPhone(){
				var phone = document.getElementById('phone').value;
				if(!(/^1[34578]\d{9}$/.test(phone))){
					alert("手机号码有误，请重填");
					f=false;

				}else{
					f=true;
				}
				return f;
			}
            function passid() {
				var passid=document.getElementById('user_sms_verifycode').value;
				if(passid=='验证码'){
					alert("验证码不能为空，请获取验证码");
					f=false;
				}else{
					f=true;
				}
				return f;
			}
			function uname() {
				var uname=document.getElementById('uname').value;
				if(uname=='用户名'){
					alert("请输入正确的用户名");
					f=false;
				}else{
					f=true;
				}
				return f;
			}

			function checkuid(){
				var cid = document.getElementById('identity').value;
				if(!(/^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{4}$/.test(cid))){
					alert("身份证输入不正确！");
					f=false;

				}else{
					f=true;
				}
				return f;
			}

			function checkpasswordlength(){
				var bbb = document.getElementById("password");
				if(bbb.value.length<=6||bbb.value.length>=12)
				{
					alert("密码长度必须大于6小于12");
					f=false;

				}else{
					f=true;
				}
				return f;
			}
			function checkpassword(){
				checkpasswordlength();
				var password1=document.getElementById("password");
				var password2=document.getElementById("password2");
				if (password2.value!=password1.value){
					alert("两次输入的密码不相同！");
					f=false;

				}else{
					f=true;
				}
				return f;
			}
			
			function f1() {
				if((checkPhone()&&checkuid()&&passid()&&checkpassword()&&uname())){
					return f;
				}
				return f;
			}
			
			  function checkpid(){
				  var yes = checkPhone();
				  var phone = document.getElementById('phone').value;	
				  if(yes){
				  $.post({
			       	   url:'user.do?method=registercode',	
			       	   data:{phone:phone},
			       	   dataType:'json',
			       	   success:function(){			       		   
			       		 alert("验证码已发:"+phone);	       		   
			       	   }
			          }); 
				  alert("验证码已发:"+phone);
				  }
			  } 
			  
			 function register() {
			   var yes = f1();
			   if(yes){
				 $.post({
					url:'user.do?method=register',
					data:{
						uname:$('#uname').val(),
						phone:$('#phone').val(),
					    idcard:$('#identity').val(),
					    upassword:$('#password').val(),
					    user_sms_verifycode:$('#user_sms_verifycode').val(),
					},	
					success:function(data){	
						 if(data==1){
							 alert("注册成功!");
							 window.location.href = "login.jsp";
						 }
						 else{
							 alert("注册失败!");
						 }
			       	}
				});
			  }
			}
			  
		</script>
	</head>

	<body>
	
		<h1>XX酒店用户注册</h1>
		<div class="log">
			<div class="content2">
				<h2>注册</h2>
				<form method="post">
					<input type="text" id="uname" name="uname" value="用户名" placeholder="只能英文、数字，中文" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '用户名';}">
					<input type="tel" name="phone" id="phone" value="手机号"   onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '手机号';}">
					<input type="text" id="identity" name="idcard" value="身份证"  onblur="checkuid()"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '身份证';}">
					<input id="user_sms_verifycode" name="user_sms_verifycode" maxlength="20" type="user_sms_verifycode" class="form-control inputInf" value="验证码" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '验证码';}" placeholder="请输入短信验证码">
					<button type="button" id="code_btn"  class="sms-btn" onclick="javascript:checkpid()">获取动态密码</button>
					<input type="password" name="upassword" id="password" value="密码 " placeholder="密 码" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '密码';}">
					<input type="password" name="upassword2" id="password2" value="确认密码 " placeholder="确认密码" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '确认密码';}">
					<input type="button" onclick="register()" class="register" value="注册">
				</form>
			</div>
			<div class="clear"></div>
		</div>
		<div class="footer">
			<p>Copyright &copy; 2016.Company name All rights reserved.More Templates</p>
		</div>

	</body>

</html>