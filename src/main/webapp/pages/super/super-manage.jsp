<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page autoFlush="true" buffer="1024kb"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

	<head>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Purple Admin</title>
		<!-- plugins:css -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/css/vendor.bundle.base.css">
		<!-- endinject -->
		<!-- inject:css -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
		<!-- endinject -->
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.png" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/biaodan.css" />
	</head>

	<body>
		<div class="container-scroller">
			<!-- partial:partials/_navbar.jsp -->
			<nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
				<div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
					<a class="navbar-brand brand-logo" href="${pageContext.request.contextPath}/index.jsp">
						<h1 style="color: pink;">后台信息管理</h1></a>
					<a class="navbar-brand brand-logo-mini" href="${pageContext.request.contextPath}/index.jsp"><img src="${pageContext.request.contextPath}/images/logo-mini.svg" alt="logo" /></a>
				</div>
				<div class="navbar-menu-wrapper d-flex align-items-stretch">

					<ul class="navbar-nav navbar-nav-right">
						<li class="nav-item nav-profile dropdown">
							<a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
								<div class="nav-profile-img">
									<img src="${pageContext.request.contextPath}/images/酒店图片.jpg" alt="image">
									<span class="availability-status online"></span>
								</div>
								<div class="nav-profile-text">
									<p class="mb-1 text-black">${backloginuser.uname}</p>
								</div>
							</a>
							<div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
								<a class="dropdown-item" href="${pageContext.request.contextPath}/backlogin.jsp">
									<i class="mdi mdi-cached mr-2 text-success"></i> 切换账号
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="../../user.do?method=delsession&uid=${backloginuser.uid }">
									<i class="mdi mdi-logout mr-2 text-primary"></i> 注销
								</a>
							</div>
						</li>
						<li class="nav-item d-none d-lg-block full-screen-link">
							<a class="nav-link">
								<i class="mdi mdi-fullscreen" id="fullscreen-button"></i>
							</a>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link count-indicator dropdown-toggle" id="messageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
								<i class="mdi mdi-email-outline"></i>
								<span class="count-symbol bg-warning"></span>
							</a>
							<div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
								<h6 class="p-3 mb-0">Messages</h6>
								<div class="dropdown-divider"></div>
								<div class="dropdown-divider"></div>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item">
									<div class="preview-thumbnail">
										<img src="${pageContext.request.contextPath}/images/faces/face3.jpg" alt="image" class="profile-pic">
									</div>
									<div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
										<h6 class="preview-subject ellipsis mb-1 font-weight-normal">Profile picture updated</h6>
										<p class="text-gray mb-0">
											18 Minutes ago
										</p>
									</div>
								</a>
								<div class="dropdown-divider"></div>
								<h6 class="p-3 mb-0 text-center">1 new messages</h6>
							</div>
						</li>
					</ul>
					<button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="mdi mdi-menu"></span>
        </button>
				</div>
			</nav>
			<!-- partial -->
			<div class="container-fluid page-body-wrapper">
				<!-- partial:partials/_sidebar.jsp -->
				<nav class="sidebar sidebar-offcanvas" id="sidebar">
					<ul class="nav">
						<li class="nav-item nav-profile">
							<a href="#" class="nav-link">
								<div class="nav-profile-image">
									<img src="${pageContext.request.contextPath}/images/酒店图片.jpg" alt="profile">
									<span class="login-status online"></span>
									<!--change to offline or busy as needed-->
								</div>
								<!--登录对象-->
								<div class="nav-profile-text d-flex flex-column">
									<span class="font-weight-bold mb-2">${backloginuser.uname}</span>
									<span class="text-secondary text-small">${backloginuser.jurisdiction}</span>
								</div>
								<i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" data-toggle="collapse" href="#user_manage" aria-expanded="false" aria-controls="user_manage">
								<span class="menu-title">用户管理</span>
								<i class="menu-arrow"></i>
								<i class="mdi mdi-contacts menu-icon"></i>
							</a>
							<div class="collapse" id="user_manage">
								<ul class="nav flex-column sub-menu">
									<li class="nav-item">
										<a class="nav-link" href="${pageContext.request.contextPath}/pages/user/user-member.jsp">会员信息管理</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="${pageContext.request.contextPath}/pages/user/user-guest.jsp">客人入住管理</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="${pageContext.request.contextPath}/pages/user/user-reserve.jsp">预定入住登记</a>
									</li>
								</ul>
							</div>
						</li>
						<li class="nav-item">
							<a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
								<span class="menu-title">客房管理</span>
								<i class="menu-arrow"></i>
								<i class="mdi mdi-crosshairs-gps menu-icon"></i>
							</a>
							<div class="collapse" id="ui-basic">
								<ul class="nav flex-column sub-menu">
									<li class="nav-item">
										<a class="nav-link" href="${pageContext.request.contextPath}/pages/room/room-message.jsp">房间信息管理</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="${pageContext.request.contextPath}/pages/room/room-use.jsp">房间使用状态查询</a>
									</li>
								</ul>
							</div>
						</li>
						<li class="nav-item">
							<a class="nav-link" data-toggle="collapse" href="#hotel_manage" aria-expanded="false" aria-controls="hotel_manage">
								<span class="menu-title">酒店信息管理</span>
								<i class="menu-arrow"></i>
								<i class="mdi mdi-home menu-icon"></i>
							</a>
							<div class="collapse" id="hotel_manage">
								<ul class="nav flex-column sub-menu">
									<li class="nav-item">
										<a class="nav-link" href="${pageContext.request.contextPath}/pages/hotel/hotel-news.jsp">酒店新闻管理</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="${pageContext.request.contextPath}/pages/hotel/hotel-comment.jsp">酒店评论管理</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="${pageContext.request.contextPath}/pages/hotel/hotel-message.jsp">酒店建议管理</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="${pageContext.request.contextPath}/pages/hotel/hotel-img.jsp">酒店美景图管理</a>
									</li>
								</ul>
							</div>
						</li>
						<li class="nav-item">
							<a class="nav-link" data-toggle="collapse" href="#shop_manage" aria-expanded="false" aria-controls="shop_manage">
								<span class="menu-title">商品管理</span>
								<i class="menu-arrow"></i>
								<i class="mdi mdi-format-list-bulleted menu-icon"></i>
							</a>
							<div class="collapse" id="shop_manage">
								<ul class="nav flex-column sub-menu">
									<li class="nav-item">
										<a class="nav-link" href="${pageContext.request.contextPath}/pages/shop/shop-message.jsp">酒店商品库存管理</a>
									</li>
								</ul>
							</div>
						</li>
						<li class="nav-item">
							<a class="nav-link" data-toggle="collapse" href="#price_manage" aria-expanded="false" aria-controls="price_manage">
								<span class="menu-title">流水管理</span>
								<i class="menu-arrow"></i>
								<i class="mdi mdi-chart-bar menu-icon"></i>
							</a>
							<div class="collapse" id="price_manage">
								<ul class="nav flex-column sub-menu">
									<li class="nav-item">
										<a class="nav-link" href="${pageContext.request.contextPath}/pages/economics/economics-message.jsp">流水详情管理</a>
									</li>
								</ul>
							</div>
						</li>
						<li class="nav-item">
							<a class="nav-link" data-toggle="collapse" href="#super_manage" aria-expanded="false" aria-controls="super_manage">
								<span class="menu-title">超级管理员</span>
								<i class="menu-arrow"></i>
								<i class="mdi mdi-table-large menu-icon"></i>
							</a>
							<div class="collapse" id="super_manage">
								<ul class="nav flex-column sub-menu">
									<li class="nav-item">
										<a class="nav-link" href="${pageContext.request.contextPath}/pages/super/super-manage.jsp">超级管理员密码管理</a>
									</li>
								</ul>
							</div>
						</li>
						<li class="nav-item sidebar-actions">
							<span class="nav-link">
              <div class="mt-4">
                <div class="border-bottom">
                  <p class="text-secondary">Categories</p>                  
                </div>
                <ul class="gradient-bullet-list mt-4">
                  <li>Free</li>
                  <li>Pro</li>
                </ul>
              </div>
            </span>
						</li>
					</ul>
				</nav>
				<!-- partial -->
				<div class="main-panel">
					<div class="content-wrapper">
						<h3>超级管理员密码管理</h3>
						<div class="container text-center">
							<div class="biao">
								<center>
										<input style="border-radius: 5px;margin-bottom: 1%;" id="selectvalue" type="text" placeholder="请输入用户名称" name="uname">
										<button style="border-radius: 5px; border: 1px solid;background: cornflowerblue;color: white" onclick="select()">搜索</button>
									<br />
								<div>
									<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
									<script>
									
									//分页
	                                var page = 0;
	                                var count = 0;
	                                var maxpage = 0;
	                                var pagenumber = 1;
	                                var name = "";
	                                
	                                function select() {
										name = $('#selectvalue').val();
										getcount(name);
										pageNumber(0, name);
									}
	                                
	                                function paging(str) {
	                                	
	                                	if(str=="first"){  //首页
	                        				page=0;
	                        				pagenumber = 1;
	                        				$('#maxpage').html('['+pagenumber+'/'+maxpage+']');
	                        			}
	                                	
	                                	if(str=="previous"){
	                                		page-=5;
	                                		pagenumber--;
	                                		if(page<=0){
	                                			page = 0;
	                                		}
	                                		if(pagenumber<1){
	                                			pagenumber = 1;
	                                		}
	                                		$('#maxpage').html('['+pagenumber+'/'+maxpage+']');
	                                	}
	                                	
	                                	if(str=="next"){
	                                		page+=5;
	                                		pagenumber++;
	                                		if(pagenumber>maxpage){
	                                			pagenumber = maxpage;
	                                		}
	                                		if(count%5==0){
												if(page>=count){
													page = count-(count%5)-5;
												}
											}
											if(count%5!=0){
												if(page>=count){
													page = count-(count%5);
												}
											}
											$('#maxpage').html('['+pagenumber+'/'+maxpage+']');
	                                	}
	                                	
	                                	if(str=="last"){
	                                		pagenumber = maxpage;
	                                		if(count%5==0){
												page = count-(count%5)-5;
											}
											if(count%5!=0){
												page = count-(count%5);
											}
											$('#maxpage').html('['+pagenumber+'/'+maxpage+']');
	                                	}
	                                	
	                                	pageNumber(page,name);
	                                	
									}
									
									//获取评论最大数以及最大页码数
	                                function getcount(name) {
										$.ajax({
											type:'post',
											url:'../../user.do?method=supercount',
											data:{"uname":name},
											success : function(data){
												count = data;
												if(count%5==0){
													maxpage = count/5;
												}
												if(count%5!=0){
													 maxpage = Math.floor(count/5)+1;
												}
												$('#maxpage').html('['+pagenumber+'/'+maxpage+']');
											},	
										})
									}
									
									function pageNumber(page,name) {
										$.post({
											type:'post',
											url:'../../user.do?method=super',
											data:{"pageNum":page,"uname":name},
											success : function(data) {
												var obj = JSON.parse(data);
												var str = "<tr class='tr'>"
												+"<td>编号</td>"
												+"<td>姓名</td>"
												+"<td>密码</td>"
												+"<td>手机号</td>"
												+"<td>身份证</td>"
												+"<td>权限</td>"
												+"<td>注册时间</td>"
												+"<td>登录状态</td>"
												+"<td>操作</td>"
												+"</tr>";
												for (var i = 0; i < obj.length; i++) {
													str+="<tr>"
														+"<td>"+obj[i].uid+"</td>"
														+"<td>"+obj[i].uname+"</td>"
														+"<td>"+obj[i].upassword+"</td>"
														+"<td>"+obj[i].phone+"</td>"
														+"<td>"+obj[i].idcard+"</td>"
														+"<td>"+obj[i].jurisdiction+"</td>"
														+"<td>"+obj[i].regtime+"</td>"
														+"<td>"+obj[i].ustatus+"</td>"
														+"<td>"
														+"<button type='button' onclick='modeldel("+obj[i].uid+")' class='btn1' id='showModel"+obj[i].uid+"'><a>删除</a></button>"
														+"<div id='modal"+obj[i].uid+"' class='modal'>"
														+"<div class='modal-content'>"
														+"<header class='modal-header'>"
														+"<h4>删除信息</h4>"
														+"<span class='close"+obj[i].uid+"'>×</span>"
														+"</header>"
														+"<div class='modal-body'>"
														+"<p>是否要删除？！</p>"
														+"</div>"
														+"<footer class='modal-footer'>"
														+"<button type='button' id='cancel"+obj[i].uid+"' class='active'>取消</button>"
														+"<button id='sure'><a href='../../user.do?method=delsuper&uid="+obj[i].uid+"'>确定</a></button>"
														+"</footer>"
														+"</div>"
														+"</div>"
														+"<button type='button' onclick='modelupdate("+obj[i].uid+")' class='btn2' id='showModel2"+obj[i].uid+"'><a>修改</a></button>"
														+"<div id='modal2"+obj[i].uid+"' class='modal'>"
														+"<div class='modal-content2'>"
														+"<header class='modal-header'>"
														+"<h4>修改信息</h4>"
														+"<span class='close2"+obj[i].uid+"'>×</span>"
														+"</header>"
														+"<form action='../../user.do?method=updatesuper' method='post'>"
														+"<div class='modal-body'>"
														+"<p><input type='text' name='uid' value='"+obj[i].uid+"' hidden='hidden' /></p>"
														+"<p class='p1'>姓名：<input type='text' name='uname' value='"+obj[i].uname+"' /></p>"
														+"<p class='p1'>密码：<input type='text' name='upassword' value='"+obj[i].upassword+"' /></p>"
														+"<p class='p'>手机号：<input type='text' name='phone' value='"+obj[i].phone+"' /></p>"
														+"<p class='p'>身份证：<input type='text' name='idcard' value='"+obj[i].idcard+"' /></p>"
														+"<p class='p1'>权限：<input type='text' name='jurisdiction' value='"+obj[i].jurisdiction+"' /></p>"
														+"<p class='p1'>余额：<input type='text' name='balance' value='"+obj[i].balance+"' /></p>"
														+"</div>"
														+"<footer class='modal-footer'>"
														+"<input type='button'style='border-radius: 5px;width:60px;height:35px' value='取消' id='cancel2"+obj[i].uid+"'></input>"
														+"<button id='sure2'>确定</button>"
														+"</footer>"
														+"</form>"
														+"</div>"
														+"</div>"
														+"</td>"
														+"</tr>";
												}
										            $("#head").html(str)
											},
											error:function(){
												alert('数据出错');
											},
										})
									}
									
									pageNumber(0,"");
									getcount("");
									
									</script>
									<script>

	function modeldel(id) {
		var btn = document.getElementById('showModel'+id+'');
		var close = document.getElementsByClassName('close'+id+'')[0];
		var cancel = document.getElementById('cancel'+id+'');
		var modal = document.getElementById('modal'+id+'');
		btn.addEventListener('click', function() {
			modal.style.display = "block";
		});
		close.addEventListener('click', function() {
			modal.style.display = "none";
		});
		cancel.addEventListener('click', function() {
			modal.style.display = "none";
		});
	}

	function modelupdate(id) {
		var btn2 = document.getElementById('showModel2'+id+'');
		var close2 = document.getElementsByClassName('close2'+id+'')[0];
		var cancel2 = document.getElementById('cancel2'+id+'');
		var modal2 = document.getElementById('modal2'+id+'');
		btn2.addEventListener('click', function() {
			modal2.style.display = "block";
		});
		close2.addEventListener('click', function() {
			modal2.style.display = "none";
		});
		cancel2.addEventListener('click', function() {
			modal2.style.display = "none";
		});
	}
</script>
										<table id="head" class="biaoge" border="1px solid black" ; cellpadding="0" cellspacing="0">
											
										</table>
										<!--分页-->
										<div class="fenye">
											<button onclick="paging('first')">首页</button>
											<button onclick="paging('previous')">上一页</button>
											<span id="maxpage"></span> 
											<button onclick="paging('next')">下一页</button>
											<button onclick="paging('last')">末页</button>
										</div>
									</div>
							</div>
						
						</div>
					</div>
				</div>
				<!-- main-panel ends -->
			</div>
			<!-- page-body-wrapper ends -->
		</div>
		<!-- container-scroller -->

		<!-- plugins:js -->
		<script src="${pageContext.request.contextPath}/vendors/js/vendor.bundle.base.js"></script>
		<script src="${pageContext.request.contextPath}/vendors/js/vendor.bundle.addons.js"></script>
		<!-- endinject -->
		<!-- Plugin js for this page-->
		<!-- End plugin js for this page-->
		<!-- inject:js -->
		<script src="${pageContext.request.contextPath}/js/off-canvas.js"></script>
		<script src="${pageContext.request.contextPath}/js/misc.js"></script>
		<!-- endinject -->
		<!-- Custom js for this page-->
		<script src="${pageContext.request.contextPath}/js/dashboard.js"></script>
		<!-- End custom js for this page-->
	</body>

</html>
