<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page autoFlush="true" buffer="1094kb"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="image/favicon.png" type="image/png">
<title>Royal Hotel</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="vendors/linericon/style.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet"
	href="vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.css">
<link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
<!-- main css -->
<link rel="stylesheet" href="css/frontstyle.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/input.css">

</head>
<body>
	<!--================Header Area =================-->
	<header class="header_area">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light">
				<!-- Brand and toggle get grouped for better mobile display -->
				<a class="navbar-brand logo_h" href="front.jsp"><img
					src="image/Logo.png" alt=""></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse offset"
					id="navbarSupportedContent">
					<ul class="nav navbar-nav menu_nav ml-auto">
						<li class="nav-item"><a class="nav-link" href="front.jsp">首页</a></li>
						<li class="nav-item"><a class="nav-link" href="about.jsp">关于我们</a></li>
						<li class="nav-item active"><a class="nav-link"
							href="accomodation.jsp">住宿</a></li>
						<li class="nav-item"><a class="nav-link" href="gallery.jsp">画廊</a></li>
						<li class="nav-item"><a class="nav-link" href="blog.jsp">博客</a></li>
						<li class="nav-item"><a class="nav-link" href="contact.jsp">联系我们</a></li>
						<li class="nav-item"><a class="nav-link" href="elements.jsp">个人中心</a></li>
					</ul>
				</div>
			</nav>
		</div>
	</header>
	<!--================Header Area =================-->

	<!--================Breadcrumb Area =================-->
	<section class="breadcrumb_area">
		<div class="overlay bg-parallax" data-stellar-ratio="0.8"
			data-stellar-vertical-offset="0" data-background=""></div>
		<div class="container">
			<div class="page-cover text-center">
				<h2 class="page-cover-tittle">住宿</h2>
				<ol class="breadcrumb">
					<li><a href="front.jsp">首页</a></li>
					<li class="active">住宿</li>
				</ol>
			</div>
		</div>
	</section>
	<!--================Breadcrumb Area =================-->

	<!--================ Accomodation Area  =================-->
	<section class="accomodation_area section_gap">
		<div class="container">
			<div class="section_title text-center">
				<h2 class="title_color">特殊住宿</h2>
				<p>我们都生活在一个内心属于年轻人的时代。生活变得非常快,</p>
			</div>
			<div class="row mb_30">

				<c:if test="${empty roomListAccomodation}">
					<jsp:forward page="room.do?method=getAllAccomodation"></jsp:forward>
				</c:if>

				<c:forEach var="r" items="${roomListAccomodation}">
					<div class="col-lg-3 col-sm-6">
						<div class="accomodation_item text-center">
							<div class="hotel_img">
								<img src="${r.rimg }" alt=""> <a href="room.do?getfindbyrid&rid=${r.rid }"
									class="btn theme_btn button_hover">预定</a>
							</div>
							<a href="#"><h4 class="sec_h4">${r.rtype }</h4></a>
							<h5>${r.rprice }<small>/晚</small>
							</h5>
						</div>
					</div>
				</c:forEach>

			</div>
		</div>
	</section>
	<!--================ Accomodation Area  =================-->
	<!--================Booking Tabel Area =================-->
	<section class="hotel_booking_area">
		<div class="container">
			<div class="row hotel_booking_table">
				<div class="col-md-3">
					<h2>
						预定<br> 您的房间
					</h2>
				</div>
				<div class="col-md-9">
					<div class="boking_table">
						<div class="row">
							<div class="col-md-4">
								<div class="book_tabel_item">
									<div class="form-group">
										<div class='input-group date' id='datetimepicker11'>
											<input type='text' class="form-control" placeholder="入住时间" id="intime"/>
											<span class="input-group-addon"> <i
												class="fa fa-calendar" aria-hidden="true"></i>
											</span>
										</div>
									</div>
									<div class="form-group">
										<div class='input-group date' id='datetimepicker1'>
											<input type='text' class="form-control" placeholder="退房时间" id="outtime"/>
											<span class="input-group-addon"> <i
												class="fa fa-calendar" aria-hidden="true"></i>
											</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<div class="book_tabel_item">
									<div class="input-group" >
										<div class="nice-select"   tabindex="0" style="width: 100%;">
											<span class="current" id="rimg">房间类型</span>
	 										<ul class="list" id="roomtype">
	 										
	 										</ul>
										</div>
									</div>
									<div class="form-group" id="input1">
										<input class="inputss" type='text' disabled='disabled' placeholder="房间价格"/>
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<div class="book_tabel_item">
									<div class="input-group">
										<div class="nice-select"   tabindex="0" style="width: 100%;">
											<span class="current" id="zname">房间编号</span>
	 										<ul class="list" id="input2">
	 											
	 										</ul>
										</div>
									</div>
									<a class="book_now_btn button_hover" id="addorder">预定</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================Booking Tabel Area  =================-->
	<!--================ Accomodation Area  =================-->
	<section class="accomodation_area section_gap">
		<div class="container">
			<div class="section_title text-center">
				<h2 class="title_color">标准住宿</h2>
				<p>我们都生活在一个内心属于年轻人的时代。生活变得非常快,</p>
			</div>
			<div class="row accomodation_two">
				<c:forEach var="r" items="${roomListAccomodation}">
					<div class="col-lg-3 col-sm-6">
						<div class="accomodation_item text-center">
							<div class="hotel_img">
								<img src="${r.rimg }" alt=""> <a href="room.do?getfindbyrid&rid=${r.rid }"
									class="btn theme_btn button_hover">预定</a>
							</div>
							<a href="#"><h4 class="sec_h4">${r.rtype }</h4></a>
							<h5>${r.rprice }<small>/晚</small>
							</h5>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
	<!--================ Accomodation Area  =================-->
	<!--================ start footer Area  =================-->
	<footer class="footer-area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6 class="footer_title">关于</h6>
						<p>世界已经变得如此快，以至于人们不想站在一边看一页信息，他们更愿意看一篇演示文稿，并理解其中的信息。这已经到了一定程度
						</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6 class="footer_title">导航</h6>
						<div class="row">
							<div class="col-4">
								<ul class="list_style">
									<li><a href="front.jsp">首页</a></li>
									<li><a href="accomodation.jsp">住宿</a></li>
									<li><a href="gallery.jsp">画廊</a></li>
									<li><a href="blog.jsp">博客</a></li>
								</ul>
							</div>
							<div class="col-4">
								<ul class="list_style">
									<li><a href="elements.jsp">个人中心</a></li>
									<li><a href="about.jsp">关于我们</a></li>
									<li><a href="contact.jsp">联系我们</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6 class="footer_title">实时通讯</h6>
						<p>为业务专业人士夹在高OEM价格和平庸的印刷和图形输出,</p>
						<div id="mc_embed_signup">
							<form target="_blank"
								action="#/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
								method="get" class="subscribe_form relative">
								<div class="input-group d-flex flex-row">
									<input name="EMAIL" placeholder="Email Address"
										onfocus="this.placeholder = ''"
										onblur="this.placeholder = 'Email Address '" required=""
										type="email">
									<button class="btn sub-btn">
										<span class="lnr lnr-location"></span>
									</button>
								</div>
								<div class="mt-10 info"></div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-footer-widget instafeed">
						<h6 class="footer_title">装饰</h6>
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
			<div
				class="row footer-bottom d-flex justify-content-between align-items-center">
				<p class="col-lg-8 col-sm-12 footer-text m-0">
					Copyright &copy;
					<script>document.write(new Date().getFullYear());</script>
					All rights reserved | made with Colorlib - More Templates <a
						href="http://www.cssmoban.com/" target="_blank" title="模板之家"></a>
					- Collect from <a href="http://www.cssmoban.com/" title="网页模板"
						target="_blank"></a>
				</p>
				<div class="col-lg-4 col-sm-12 footer-social">
					<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
						class="fa fa-twitter"></i></a> <a href="#"><i
						class="fa fa-dribbble"></i></a> <a href="#"><i
						class="fa fa-behance"></i></a>
				</div>
			</div>
		</div>
	</footer>
	<!--================ End footer Area  =================-->


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="js/jquery-3.2.1.min.js"></script>
	
	
	
	<script type="text/javascript">
			$.ajax({
				 type: "post",
	             url: "room.do?method=getfind",
	             contentType:'application/json;charset=utf-8',
	             dataType: "json",
	             success: function(data){
	            	 var ss=eval(data);
	            	 var str="";
	            	 for(var i=0;i<ss.length;i++){
	            		 str+="<li data-value=\"1\" id=\"\" class=\"option\" onclick=\"get("+ss[i].rid+")\" value=\""+ss[i].rid+"\">"+ss[i].rtype+"</li>";
	            	 }
	            	 $("#roomtype").html(str);
	            },
				error:function(){
					alert('错了');
				},
			});
        	function get(rid){
        		get2(rid);
        	   $.ajax({
        		    type: "post",
	  	            url: "room.do?getbyrid",
	  	            data:{"rid":rid},
	  	            dataType:"json",
        	        success: function(data){
        	        	/* var ss=JSON.parse(data); */
        	        	var str1 ="<input class=\"inputss\" type=\'text\' disabled='disabled' id='rprice' placeholder=\"房间价格\" value=\""+data.rprice+"\" />";
        	        	$("#input1").html(str1);
        	       	},
				    error:function(){
					  alert('错了2');
				    },
        	   });
        	}
        	function get2(rid){
         	   $.post({
 	  	            url: "room.do?findzroomByRid",
 	  	            data:{"rid":rid},
 	  	            dataType:"json",
         	        success: function(data){
         	        	var ss=data;
         	        	var str1="";
	   	            	for(var i=0;i<ss.length;i++){
	   	            	 str1+="<li id=\"\" class=\"option\" value=\""+ss[i].zid+"\">"+ss[i].zname+"</li>";
	   	            	}
         	        	$("#input2").html(str1);
         	       	},
 				    error:function(){
 					  alert('错了3');
 				    },
         	   });
         	}
        	$("#addorder").click(function(){
        		  console.log("-=-=-=-=----");
        		  var znamea = $("#zname").html();
        		  var rp = $("#rprice").val();
        		  var rimga = $("#rimg").html();
        		  var intimea = $("#intime").val();
        		  var outtimea = $("#outtime").val();
        		  if(znamea!='房间编号'&&rp!='房间价格'&&rimga!='房间类型'&&intimea!=''&&outtimea!=''){
        			$.post({
          			  url:'orders.do?method=adduorder',   
          			  data:{zname:$("#zname").html(),
            				rprice:$("#rprice").val(),
              				rimg:$("#rimg").html(),
              				intime:$("#intime").val(),
              				outtime:$("#outtime").val()},
              		 
          			  success:function(data){     				 
          				  window.location.href=data+".jsp";
          			  }
          		  });
        		  }
        		  else{
        			  alert("请选择房间类型等!然后再预定");
        		  }      		 
        	  });
        </script>
	
	
	
	
	
	<script src="js/popper.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script
		src="vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.js"></script>
	<script src="vendors/nice-select/js/jquery.nice-select.js"></script>
	<script src="js/mail-script.js"></script>
	<script src="js/stellar.js"></script>
	<script src="vendors/lightbox/simpleLightbox.min.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>