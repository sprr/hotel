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
<script src="js/jquery.min.js">
</script>
<script type="application/x-javascript">
	
	
			addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);

			function hideURLbar() { window.scrollTo(0, 1); }

			function checkPhone(){
				var phone = document.getElementById('phone').value;
				if (phone == '请输入手机号码') {
					document.getElementById('phone').value = '请输入手机号码';
					
					alert("手机号码不能为空");
					return false;
				}
				
				else if(!(/^1[34578]\d{9}$/.test(phone))){
					alert("手机号码有误，请重填");
					return false;
				}
				return true;
			}
		  function checkId(){
			var yzm = document.getElementById('user_sms_verifycode').value;
			if(yzm == '验证码'|| yzm=='请输入验证码'){
				document.getElementById('user_sms_verifycode').value = '请输入验证码';
				alert("验证码不能为空");
				return false;
			   }
			return true;
			}
			 
		
	
			  function checkpid(){
				  var yes = checkPhone();
				  var phone = document.getElementById('phone').value;	
				  if(yes){
				  $.post({
			       	   url:'user.do?method=random',	
			       	   data:{phone:phone},
			       	   dataType:'json',
			       	   success:function(){			       		   
			       		 alert("验证码已发:"+phone);	       		   
			       	   }
			          }); 
				  alert("验证码已发:"+phone);
				  }
			  }
		

</script>
<!-- font files  -->
<link href='https://fonts.googleapis.com/css?family=Muli:400,300'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Nunito:400,300,700'
	rel='stylesheet' type='text/css'>
<!-- /font files  -->
<!-- css files -->
<link href="css/loginstyle.css" rel='stylesheet' type='text/css'
	media="all" />
<!-- /css files -->
</head>
<body>

	<c:if test="${!empty user}">
		<script>
		 alert("账号密码不正确！"); 
		</script>
	</c:if>
	
	<h1><a href="front.jsp" style="color:black;">来贺酒店用户登录</a></h1>
	<div class="log">
		<div class="content1">
			<h2>登录</h2>
			<form action="user.do?method=login" method="post" onsubmit="return checkPhone()&&checkId()">
				<input id="phone" type="text" name="phone" value="请输入手机号码"
					onfocus="this.value = '';"> <input id="user_sms_verifycode"
					name="user_sms_verifycode" maxlength="20"
					type="user_sms_verifycode" class="form-control inputInf"
					value="验证码" onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = '验证码';}"
					placeholder="请输入短信验证码">
				<button type="button" id="code_btn" class="sms-btn"
					onclick="javascript:checkpid()">获取动态密码</button>
				<div class="button-row">
					<input type="submit" id="login" class="sign-in" value="登录">
					<input type="button" class="reset" value="注册"
						onclick="javascript:window.location.href='register.jsp'">
					<div class="clear"></div>
				</div>
				<ul class="list-login">
					<li class="switch-agileits"><label class="switch"
						style="margin-left: -45px;"> <span style="font-size: 22px">请确保账号安全!</span>

					</label></li>
					<li style="margin-top: -1px"><a href="#" class="text-right"
						style="font-size: 22px; color: #fff">忘记密码?</a></li>
					<li class="clearfix"></li>
				</ul>
			</form>
		</div>
		<div class="clear"></div>
	</div>
	<div class="footer">
		<p>Copyright &copy; 2016.Company name All rights reserved.More
			Templates</p>
	</div>

</body>

</html>
