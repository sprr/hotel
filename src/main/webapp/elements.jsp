<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

	<head>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="icon" href="image/favicon.png" type="image/png">
		<title>Royal Hotel</title>
		<!-- Bootstrap CSS -->
	    <link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="vendors/linericon/style.css">
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<link rel="stylesheet" href="vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.css">
		<link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
		<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
		<link rel="stylesheet" href="vendors/lightbox/simpleLightbox.css">
		<!-- main css -->
		<link rel="stylesheet" href="css/frontstyle.css">
		<link rel="stylesheet" href="css/responsive.css">
		<link rel="stylesheet" href="css/geren.css" />
		<style type="text/css">
			ul li a:hover{
				background-color: none;
			}
		</style>
		<script>
			var f = true;

			function checkPhone() {
				var phone = document.getElementById('phone').value;
				if(!(/^1[34578]\d{9}$/.test(phone))) {
					alert("手机号码有误，请重填");
					f = false;

				} else {
					f = true;
				}
				return f;
			}


			function uname() {
				var uname = document.getElementById('uname').value;
				if(uname == '用户名') {
					alert("请输入正确的用户名");
					f = false;
				} else {
					f = true;
				}
				return f;
			}

			function checkoldpassword() {
				
				var oldpassword = document.getElementById("oldpassword").value;
				if(oldpassword.length <= 6 || oldpassword.length >= 12) {
					alert("原密码密码长度必须大于6小于12");
					f = false;
					

				} else {
					f = true;
				}
				return f;
			}
			
			function checkpasswordlength() {
				var bbb = document.getElementById("password");
				if(bbb.value.length <= 6 || bbb.value.length >= 12) {
					alert("新密码密码长度必须大于6小于12");
					f = false;

				} else {
					f = true;
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
				if((checkPhone() && uname())) {
					return f;
				}
				return f;
			}
			function f2() {
				if((checkoldpassword() && checkpasswordlength() && checkpassword())) {
					return f;
				}
				return f;
			}
		</script>
	</head>

	<body>
		<!--================Header Area =================-->
		<header class="header_area">
			<div class="container">
				<nav class="navbar navbar-expand-lg navbar-light">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="front.jsp"><img src="image/Logo.png" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item">
								<a class="nav-link" href="front.jsp">首页</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="about.jsp">关于我们</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="accomodation.jsp">住宿</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="gallery.jsp">画廊</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="blog.jsp">博客</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="contact.jsp">联系我们</a>
							</li>
							<li class="nav-item active">
								<a class="nav-link" href="elements.jsp">个人中心</a>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</header>
		<!--================Header Area =================-->

		<!--================Breadcrumb Area =================-->
		<section class="breadcrumb_area">
			<div class="overlay bg-parallax" data-stellar-ratio="0.8" data-stellar-vertical-offset="0" data-background=""></div>
			<div class="container">
				<div class="page-cover text-center">
					<h2 class="page-cover-tittle">个人中心</h2>
					<ol class="breadcrumb">
						<li>
							<a href="front.jsp">首页</a>
						</li>
						<li class="active" style="color: white;">个人中心</li>
					</ol>
				</div>
			</div>
		</section>
		<!--================Breadcrumb Area =================-->

		<!--================Breadcrumb Area =================-->
		<section class="gallery_area section_gap" style="width: 100%;height: 100%;background-image: url(image/about_banner.jpg);">
			<div class="container">
				<div class="grzx">
					<ul id="myTab" class="nav nav-tabs">
						<li class="active">
							<a href="#grxx" data-toggle="tab" class="btn btn-success">个人信息</a>
						</li>
						<li>
							<a href="#ddcx" data-toggle="tab" class="btn btn-success">订单查询</a>
						</li>
						<li>
							<a href="#plcx" data-toggle="tab" class="btn btn-success">评论查询</a>
						</li>
						<li>
							<a href="#yecz" data-toggle="tab" class="btn btn-success">余额充值</a>
						</li>
						<li>
							<a href="#xgmm" data-toggle="tab" class="btn btn-success">修改密码</a>
						</li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<!--个人信息-->
						<div class="tab-pane fade in active" id="grxx">
							<div class="gerenxinxi">
								<div class="gerenxinxi-left">
								<c:choose>
								  <c:when test="${empty sessionScope.loginuser}">
								  <p style="font-size: 20px;">
                              您当前所做的操作要求在已登录状态进行
                               如您已有账户，请先 <a href="login.jsp">登录</a><br>
                               如您尚未注册账户，请先 <a href="register.jsp">注册</a> 再登录</p>
								  </c:when>
								  <c:otherwise>
									<div class="td">
										<table>
											<tr>
												<td>编号：</td>
												<td>${loginuser.uid }</td>
											</tr>
											<tr>
												<td>姓名：</td>
												<td>${loginuser.uname }</td>
											</tr>
											<tr>
												<td>手机号：</td>
												<td>${loginuser.phone }</td>
											</tr>
											<tr>
												<td>身份证：</td>
												<td>${loginuser.idcard }</td>
											</tr>
											<tr>
												<td>权限：</td>
												<td>${loginuser.jurisdiction }</td>
											</tr>
											<tr>
												<td></td>
												<td></td>
											</tr>
										</table>
									</div>
									<div class="button">
										<!-- Button trigger modal -->
										<button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal">修改信息</button>

										<!-- Modal -->
										<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
											<div class="modal-dialog" role="document">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
														<h4 class="modal-title" id="myModalLabel">修改信息</h4>
													</div>
													<form method="post"  onsubmit="return f1();" action="user.do?method=updateu">
														<div class="modal-body">
															<p><input type="text" name="uid" id="uid" hidden="hidden" value="${loginuser.uid}" /></p>
															<p class="l">姓名：${loginuser.uname }</p>
															<p>手机号：<input type="text" name="phone" id="phone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '手机号';}"/></p>
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
															<button type="submit" class="btn btn-primary">确定</button>
														</div>
													</form>
												</div>
											</div>
										</div>
										<br/>
										<button type="button" class="btn btn-danger" style="width: 100px;height: 30px;margin-top: 100px;"><a href="user.do?method=delsession2&uid=${loginuser.uid }" style="color:white;">退出登录</a></button>
									</div>
									</c:otherwise>
									</c:choose>
								</div>
								<div class="gerenxinxi-right">
									<!--<img src="image/about_bg.jpg" height="500px" />-->
								</div>
							</div>
						</div>

						<!--订单查询-->
						<div class="tab-pane fade" id="ddcx" class="dendang">
							<br />
							<form action="" method="post" class="sousuo">
								<input type="text" id="otime" name="uname">
								<button type="button" onclick="select()">搜索</button>
							</form>
							<br />
							<div id="uorders">
								
									<!-- 个人订单 -->
									 <p style="font-size: 20px;">
                              您当前所做的操作要求在已登录状态进行
                               如您已有账户，请先 <a href="login.jsp">登录</a><br>
                               如您尚未注册账户，请先 <a href="register.jsp">注册</a> 再登录</p>
								
							</div>
							<div class="fenye">
								<a class="brn btn-success" onclick="paging('previous')">上一页</a>
								<span id="fenye"></span>
								<a class="brn btn-success" onclick="paging('next')">下一页</a>
							</div>
						</div>

						<!--评论查询-->
						<div class="tab-pane fade" id="plcx">
							<br />
							<form action="" method="post" class="sousuo">
								<input type="text" name="cotime"  id="cotime">
								<button type="button"  onclick="select2()">搜索</button>
							</form>
							<br />
							<div  id="ucomment">
							 <p style="font-size: 20px;">
                              您当前所做的操作要求在已登录状态进行
                               如您已有账户，请先 <a href="login.jsp">登录</a><br>
                               如您尚未注册账户，请先 <a href="register.jsp">注册</a> 再登录</p>
						  </div>
							<div class="fenye">
								<a class="brn btn-success"onclick="cpaging('previous')" >上一页</a>
								<span id="fenye2"></span>
								<a class="brn btn-success" onclick="cpaging('next')">下一页</a>
							</div>
						</div>

						<!--余额充值-->
						<div class="tab-pane fade" id="yecz">
							<center>
								<p style="height: 100px;"></p>
								<p>余额：0</p>
								<button class="btn btn-success">充值</button>
							</center>
						</div>
						<div class="tab-pane fade" id="xgmm">
							<br />
							<center>
								<form class="xgmm" method="post" onsubmit="return f2();" action="user.do?method=updateupwd">
									<p class="l">原密码：<input type="password" name="oldpassword" id="oldpassword"   onblur="checkoldpassword()"/></p>
									<p class="l">新密码：<input type="password" name="password" id="password"   /></p>
									<p>确认密码：<input type="password" name="password2" id="password2"  /></p>
									<br />
									<button class="btn btn-success" type="submit">确定修改</button>
								</form>
							</center>

						</div>
					</div>
				</div>

			</div>
		</section>
		<!--================Breadcrumb Area =================-->

		<!--================ start footer Area  =================-->
		<footer class="footer-area section_gap">
			<div class="container">
				<div class="row">
					<div class="col-lg-3  col-md-6 col-sm-6">
						<div class="single-footer-widget">
							<h6 class="footer_title">关于代理</h6>
							<p>世界已经变得如此之快，以至于人们不想站在一旁阅读一页信息，他们更愿意看一个演示文稿并理解信息。已经到了关键时刻</p>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="single-footer-widget">
							<h6 class="footer_title">导航链接</h6>
							<div class="row">
								<div class="col-4">
									<ul class="list_style">
										<li>
											<a href="#">首页</a>
										</li>
										<li>
											<a href="#">特色</a>
										</li>
										<li>
											<a href="#">服务</a>
										</li>
										<li>
											<a href="#">文件夹</a>
										</li>
									</ul>
								</div>
								<div class="col-4">
									<ul class="list_style">
										<li>
											<a href="#">团队</a>
										</li>
										<li>
											<a href="#">定价</a>
										</li>
										<li>
											<a href="#">博客</a>
										</li>
										<li>
											<a href="#">接触</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="single-footer-widget">
							<h6 class="footer_title">时事快报</h6>
							<p>对于处于高原始设备制造商价格和平庸打印和图形输出之间的业务专业人员， </p>
							<div id="mc_embed_signup">
								<form target="_blank" action="#/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscribe_form relative">
									<div class="input-group d-flex flex-row">
										<input name="EMAIL" placeholder="电子邮件地址" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address '" required="" type="email">
										<button class="btn sub-btn"><span class="lnr lnr-location"></span></button>
									</div>
									<div class="mt-10 info"></div>
								</form>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="single-footer-widget instafeed">
							<h6 class="footer_title">实况转播</h6>
							<ul class="list_style instafeed d-flex flex-wrap">
								<li><img src="image/instagram/Image-01.jpg" alt=""></li>
								<li><img src="image/instagram/Image-02.jpg" alt=""></li>
								<li><img src="image/instagram/Image-03.jpg" alt=""></li>
								<li><img src="image/instagram/Image-04.jpg" alt=""></li>
								<li><img src="image/instagram/Image-05.jpg" alt=""></li>
								<li><img src="image/instagram/Image-06.jpg" alt=""></li>
								<li><img src="image/instagram/Image-07.jpg" alt=""></li>
								<li><img src="image/instagram/Image-08.jpg" alt=""></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="border_line"></div>
				<div class="row footer-bottom d-flex justify-content-between align-items-center">
					<p class="col-lg-8 col-sm-12 footer-text m-0">
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script> All rights reserved | made with Colorlib - More Templates
						<a href="http://www.cssmoban.com/" target="_blank" title="模板之家"></a> - Collect from
						<a href="http://www.cssmoban.com/" title="网页模板" target="_blank"></a>
					</p>
					<div class="col-lg-4 col-sm-12 footer-social">
						<a href="#"><i class="fa fa-facebook"></i></a>
						<a href="#"><i class="fa fa-twitter"></i></a>
						<a href="#"><i class="fa fa-dribbble"></i></a>
						<a href="#"><i class="fa fa-behance"></i></a>
					</div>
				</div>
			</div>
		</footer>
		<!--================ End footer Area  =================-->

		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="js/jquery-3.2.1.min.js"></script>
		<script src="js/popper.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="vendors/owl-carousel/owl.carousel.min.js"></script>
		<script src="js/jquery.ajaxchimp.min.js"></script>
		<script src="vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.js"></script>
		<script src="vendors/nice-select/js/jquery.nice-select.js"></script>
		<script src="js/mail-script.js"></script>
		<script src="js/stellar.js"></script>
		<script src="vendors/imagesloaded/imagesloaded.pkgd.min.js"></script>
		<script src="vendors/isotope/isotope-min.js"></script>
		<script src="js/stellar.js"></script>
		<script src="vendors/lightbox/simpleLightbox.min.js"></script>
		<script src="js/custom.js"></script>
		<script type="text/javascript">
		//修改密码
		function updatepwd(){
			$.post({
				url:"user.do?method=updateupwd",
				data:{upassword:$('#password').val(),oupassword:$('#oldpassword').val()},
				dataType:'json',
				success:function(data){
					alert(data);
				}
			})
		}
		
		 //分页
        var page = 0;
        var count = 0;
        var maxpage = 0;
        var pagenumber = 1;
		//获取评论最大数以及最大页码数
        function getcount() {
			$.ajax({
				type:'post',
				data:{otime:$('#otime').val()},
				url:'orders.do?method=getcount',
				dataType:'json',
				success : function(data){
					count = data;
					if(count%3==0){
						maxpage = count/3;	
					}
					if(count%3!=0){
						 maxpage = Math.floor(count/3)+1;	
					}
					$('#fenye').html('['+pagenumber+'/'+maxpage+']');
				},		
			})
		}
        function paging(str) {      	
        	if(str=="next"){ 
				//下一页
				pagenumber++;
				if(pagenumber<=maxpage){
					page+=3; 
				}else{
					pagenumber=maxpage;
				}
			}
			if(str=="previous"){  //上一页
				pagenumber--;
			    if(pagenumber>=1){
			    	page-=3;
			    }else{
			    	pagenumber=1;
			    }
			   
			}     	        	
        	$('#fenye').html('['+pagenumber+'/'+maxpage+']');
        	pageNumber(page); 	
		}
        function pageNumber(page,otime) {
			$.post({
				type:'post',
				url:'orders.do?method=getuoid',
				data:{otime:$('#otime').val(),page:page},
				dataType:'json',
				success : function(data) {
					var ostr="<table class=\"table table-hover\">"
					+"<tr class=\"tr\">"
					+"<td>房间号</td>"
					+"<td>房间价格</td>"
					+"<td>客房图</td>"
					+"<td>下单时间</td>"
					+"<td>入住时间</td>"
					+"<td>退房时间</td>"
					+"<td>退单时间</td>"
					+"<td>总价</td>"
					+"<td>编辑</td>"
				    +"</tr>"
					$(data).each(function(i){
						ostr+="<tr>"
							+"<td>"+data[i].zname+"</td>"
							+"<td>"+data[i].rprice+"</td>"
							+"<td>"
							+"	<button type=\"button\" class=\"\btn btn-info\" style=\"width: 103px;height: 38px;\" data-toggle=\"modal\" data-target=\"#Modal"+i+"\">查看客房图</button>"
							+"	<div class=\"modal fade bs-example-modal-lg\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myLargeModalLabel\" id=\"Modal"+i+"\">"
							+"		<div class=\"modal-dialog modal-lg\" role=\"document\">"
							+"			<div class=\"modal-content\">"
							+"			<div class=\"modal-header\">"
							+"				<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>"
							+"				<h4 class=\"modal-title\" id=\"myModalLabel\">客房图</h4>"
							+"			</div>"
							+"			<div class=\"modal-body\">"
							+"				<center><img src=\""+data[i].rimg+"\" /> </center>"
							+"			</div>"
							+"			<div class=\"modal-footer\">"
							+"				<button type=\"button\" class=\"btn btn-primary\" data-dismiss=\"modal\">确定</button>"
							+"			</div>"
							+"		</div>"
							+"	</div>"
							+"</div>"
							+"</td>"
							+"<td>"+data[i].otime+"</td>"
							+"<td>"+data[i].intime+"</td>"
							+"<td>"+data[i].outtime+"</td>"
							+"<td>"+data[i].endtime+"</td>"
							+"<td>"+data[i].oprice+"</td>"
							+"<td>"
							+"<button type=\"button\" style=\"width: 70px;height: 38px;\" class=\"btn btn-danger\" data-toggle=\"modal\" data-target=\"#Modal2"+i+"\">退订单</button>"
							+"<div class=\"modal fade bs-example-modal-sm\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"mySmallModalLabel\" id=\"Modal2"+i+"\">"
							+"		<div class=\"modal-dialog modal-sm\" role=\"document\">"
							+"		<div class=\"modal-content\">"
							+"			<div class=\"modal-header\">"
							+"				<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>"
							+"				<h4 class=\"modal-title\" id=\"myModalLabel\">退订单</h4>"
							+"			</div>"
							+"			<div class=\"modal-body\">"
							+"				<p>是否退订单？</p>"
							+"			</div>"
							+"			<div class=\"modal-footer\">"
							+"				<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">取消</button>"
							+"				<button type=\"button\" class=\"btn btn-primary\" onclick=\"endorder("+data[i].oid+")\">确定</button>"
							+"			</div>"
							+"		</div>"
							+"	</div>"
							+"</div>"
							+"</td>"
							+"</tr>"
					})
					ostr+="</table>"
					$("#uorders").html(ostr);
				},
			})
        }
        getcount();
        pageNumber(0,"");
      //模糊查询
  	     function select() {
  	    	getcount();
  	    	pageNumber(0);
  	    	
  		}
      
      function endorder(oid) {
		$.ajax({
			type:"post",
			url:"orders.do?method=unreg",
			data:{"oid":oid},
			dataType:'json',
			success:function(data){
				console.log(data);
				getcount();
		        pageNumber(0,"");
			}
		});
	}
      
/* 个人评论 */
		 //分页
      var cpage = 0;
      var ccount = 0;
      var cmaxpage = 0;
      var cpagenumber = 1;
		//获取评论最大数以及最大页码数
      function cgetcount() {
			$.ajax({
				type:'post',
				data:{cotime:$('#cotime').val()},
				url:'comment.do?method=getcount',
				dataType:'json',
				success : function(data){
					ccount = data;
					if(ccount%3==0){
						cmaxpage = ccount/3;	
					}
					if(ccount%3!=0){
						 cmaxpage = Math.floor(ccount/3)+1;	
					}
					$('#fenye2').html('['+cpagenumber+'/'+cmaxpage+']');
				}	
			})
		}
      function cpaging(str) {      	
      	if(str=="next"){ 
				//下一页
				cpagenumber++;
				if(cpagenumber<=cmaxpage){
					cpage+=3; 
				}else{
					cpagenumber=cmaxpage;
				}
			}
			if(str=="previous"){  //上一页
				cpagenumber--;
			    if(cpagenumber>=1){
			    	cpage-=3;
			    }else{
			    	cpagenumber=1;
			    }
			   
			}     	        	
      	$('#fenye2').html('['+cpagenumber+'/'+cmaxpage+']');
      	cpageNumber(cpage); 	
		}
      function cpageNumber(cpage,cotime) {
			$.post({
				type:'post',
				url:'comment.do?method=getUComment',
				data:{otime:$('#cotime').val(),page:cpage},
				dataType:'json',
				success : function(data) {
					var cstr="";
					$(data).each(function(i) {
						cstr+="<br /><p>时间："+data[i].cotime+"</p><p>"+data[i].message+"</p>";
					})
				    $("#ucomment").html(cstr);
				}
			})
      }
      cgetcount();
      cpageNumber(0,"");
    //模糊查询
	     function select2() {
	    	cgetcount();
	    	cpageNumber(0);
	    	
		}
      
		</script>
		
	</body>

</html>