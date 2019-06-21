<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

	<head>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Purple Admin</title>
		<!-- plugins:css -->
		<link rel="stylesheet" href="vendors/iconfonts/mdi/css/materialdesignicons.min.css">
		<link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
		<!-- endinject -->
		<!-- inject:css -->
		<link rel="stylesheet" href="css/style.css">
		<!-- endinject -->
		<link rel="shortcut icon" href="images/favicon.png" />
		<link rel="stylesheet" href="css/biaodan.css" />
	</head>

	<body>
	
		
		<div class="container-scroller">
			<!-- partial:partials/_navbar.jsp -->
			<nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
				<div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
					<a class="navbar-brand brand-logo" href="index.jsp">
						<h1 style="color: pink;">后台信息管理</h1></a>
					<a class="navbar-brand brand-logo-mini" href="index.jsp"><img src="images/logo-mini.svg" alt="logo" /></a>
				</div>
				<div class="navbar-menu-wrapper d-flex align-items-stretch">

					<ul class="navbar-nav navbar-nav-right">
						<li class="nav-item nav-profile dropdown">
							<a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
								<div class="nav-profile-img">
									<img src="images/酒店图片.jpg" alt="image">
									<span class="availability-status online"></span>
								</div>
								<div class="nav-profile-text">
									<p class="mb-1 text-black">${backloginuser.uname}</p>
								</div>
							</a>
							<div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
								<a class="dropdown-item" href="backlogin.jsp">
									<i class="mdi mdi-cached mr-2 text-success"></i> 切换账号
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="user.do?method=delsession&uid=${backloginuser.uid }">
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
										<img src="images/faces/face3.jpg" alt="image" class="profile-pic">
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
									<img src="images/酒店图片.jpg" alt="profile">
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
										<a class="nav-link" href="pages/user/user-member.jsp">会员信息管理</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="pages/user/user-guest.jsp">客人入住管理</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="pages/user/user-reserve.jsp">预定入住登记</a>
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
										<a class="nav-link" href="pages/room/room-message.jsp">房间信息管理</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="pages/room/room-use.jsp">房间使用状态查询</a>
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
										<a class="nav-link" href="pages/hotel/hotel-news.jsp">酒店新闻管理</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="pages/hotel/hotel-comment.jsp">酒店评论管理</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="pages/hotel/hotel-message.jsp">酒店建议管理</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="pages/hotel/hotel-img.jsp">酒店美景图管理</a>
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
										<a class="nav-link" href="pages/shop/shop-message.jsp">酒店商品库存管理</a>
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
										<a class="nav-link" href="pages/economics/economics-message.jsp">流水详情管理</a>
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
										<a class="nav-link" href="pages/super/super-manage.jsp">超级管理员密码管理</a>
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
						
							<div class="container text-center" style="margin-top: 15%;">
								<p><h1>欢迎使用酒店后台信息管理</h1></p>
								<p><h1>...</h1></p>
								<p><a class="btn btn-primary btn-lg" href="#" role="button">开始使用</a></p>
							</div>
					
					</div>
					<!-- content-wrapper ends -->
					<!-- partial:partials/_footer.jsp -->
					<!-- partial -->
				</div>
				<!-- main-panel ends -->
			</div>
			<!-- page-body-wrapper ends -->
		</div>
		<!-- container-scroller -->

		<!-- plugins:js -->
		<script src="vendors/js/vendor.bundle.base.js"></script>
		<script src="vendors/js/vendor.bundle.addons.js"></script>
		<!-- endinject -->
		<!-- Plugin js for this page-->
		<!-- End plugin js for this page-->
		<!-- inject:js -->
		<script src="js/off-canvas.js"></script>
		<script src="js/misc.js"></script>
		<!-- endinject -->
		<!-- Custom js for this page-->
		<script src="js/dashboard.js"></script>
		<!-- End custom js for this page-->
	</body>

</html>