<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

			function checkPhone(){
				var phone = document.getElementById('phone').value;
				if (phone == '') {
					document.getElementById('phone').value = '请输入手机号码';
					alert("手机号不能为空");
					return;
				}else if(!(/^1[34578]\d{9}$/.test(phone))){
					alert("手机号码有误，请重填");
					return false;
				}
			}
			function checkPhone1(){
				checkPhone();
				checkpwd();
				var ph= document.getElementById('phone1').value;
				if (ph == '') {
					document.getElementById('phone1').value = '请输入手机号码';
					alert("手机号不能为空");
					return false;
				}else if(!(/^1[34578]\d{9}$/.test(ph))){
					alert("手机号码有误，请重填");
					return false;
				}
			}
			function checkpwd(){
				var pass = document.getElementById('pwdd').value;
				if(pass==''){
				
				var pass = document.getElementById('pwdd').value='请输入密码';
				alert("密码不能为空");
					return false;
				}
			}

			

		</script>
		<!-- font files  -->
		<link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Nunito:400,300,700' rel='stylesheet' type='text/css'>
		<!-- /font files  -->
		<!-- css files -->
		<link href="css/updatestyle.css" rel='stylesheet' type='text/css' media="all" />
		<!-- /css files -->
	</head>
	<body>
		<h1>XX酒店重置信息</h1>
		<div class="log">
			<div class="content1">
				<h2>重置信息</h2>
				<form>
					<input id="phone" type="text" name="phone" onblur="" value="请输入手机号码" onfocus="this.value = '';" >
					<input id="pwdd" type="password" name="phone" onblur="" value="请输入密码" onfocus="this.value = '';" >
					<input id="phone1" type="text" name="phone" onblur="checkPhone1()" value="请输入手机号码" onfocus="this.value = '';" >

					<div class="button-row">
						<input type="submit" class="sign-in" value="修改">
						<input type="button" class="reset" value="返回" onclick="javascript:window.location.href='register.jsp'">
						<div class="clear"></div>
					</div>
					
				</form>
			</div>
			<div class="clear"></div>
		</div>
		<div class="footer">
			<p>Copyright &copy; 2016.Company name All rights reserved.More Templates</p>
		</div>

	</body>

</html>
