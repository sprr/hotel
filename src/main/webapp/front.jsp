<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page autoFlush="true" buffer="1094kb"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="icon" href="image/favicon.png" type="image/png">
        <title>Royal Hotel</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="vendors/linericon/style.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
        <link rel="stylesheet" href="vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.css">
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
                    <a class="navbar-brand logo_h" href="front.jsp"><img src="image/Logo.png" alt=""></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                        <ul class="nav navbar-nav menu_nav ml-auto">
                            <li class="nav-item active"><a class="nav-link" href="front.jsp">首页</a></li> 
                            <li class="nav-item"><a class="nav-link" href="about.jsp">关于我们</a></li>
                            <li class="nav-item"><a class="nav-link" href="accomodation.jsp">住宿</a></li>
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
        
        <!--================Banner Area =================-->
        <section class="banner_area">
            <div class="booking_table d_flex align-items-center">
            	<div class="overlay bg-parallax" data-stellar-ratio="0.9" data-stellar-vertical-offset="0" data-background=""></div>
				<div class="container">
					<div class="banner_content text-center">
						<h6>远离单调的生活</h6>
						<h2>放松你的思想</h2>
						<p>让晚风轻轻带走了晚霞<br>我已习惯每个傍晚去想她</p>
						<a href="login.jsp" class="btn theme_btn button_hover">Come on</a>
					</div>
				</div>
            </div>
            <div class="hotel_booking_area position">
                <div class="container">
                    <div class="hotel_booking_table">
                        <div class="col-md-3">
                            <h2>预定<br>你的房间</h2>
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
													<input type='text' class="form-control" placeholder="退房时间" id="outtime" />
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
            </div>
        </section>
        <!--================Banner Area =================-->
        
        <!--================ Accomodation Area  =================-->
        <section class="accomodation_area section_gap">
            <div class="container">
                <div class="section_title text-center">
                    <h2 class="title_color">酒店住宿</h2>
                    <p>我们都生活在一个快生活的时代,我们的时间流逝的很快 </p>
                </div>
                <div class="row mb_30">
                	<c:if test="${empty roomListFront}">
						<jsp:forward page="room.do?method=getAllFront"></jsp:forward>
					</c:if> 
					<c:forEach var="r" items="${roomListFront}">
	                    <div class="col-lg-3 col-sm-6">
	                        <div class="accomodation_item text-center">
	                            <div class="hotel_img">
	                                <img src="${r.rimg }" alt="">
	                                <a href="room.do?getfindbyrid&rid=${r.rid }" class="btn theme_btn button_hover">预定</a>
	                            </div>
	                            <a href="#"><h4 class="sec_h4">${r.rtype }</h4></a>
	                            <h5>${r.rprice }<small>/晚</small></h5>
	                        </div>
	                    </div>
                    </c:forEach> 
                </div>
            </div>
             <a href="accomodation.jsp"  style="left:1300px ;" class="button_hover theme_btn_two">更多优惠套房</a>
        </section>
        <!--================ Accomodation Area  =================-->
        
        <!--================ Facilities Area  =================-->
        <section class="facilities_area section_gap">
            <div class="overlay bg-parallax" data-stellar-ratio="0.8" data-stellar-vertical-offset="0" data-background="">  
            </div>
            <div class="container">
                <div class="section_title text-center">
                    <h2 class="title_w">皇家设施</h2>
                    <p>你们都喜欢的环保系统.</p>
                </div>
                <div class="row mb_30">
                    <div class="col-lg-4 col-md-6">
                        <div class="facilities_item">
                            <h4 class="sec_h4"><i class="lnr lnr-dinner"></i>餐厅</h4>
                            <p>倾心打造至高品味的美食场所，将传统大型中餐与特色餐饮相结合，形成独特的店中店模式，满足不同消费群体的不同需求</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="facilities_item">
                            <h4 class="sec_h4"><i class="lnr lnr-bicycle"></i>体育房</h4>
                            <p>体育场馆是进行运动训练、运动竞赛及身体锻炼的专业性 场所。它是为了满足运动训练、运动竞赛及大众体育消费需要而专门修建的各类运动场所</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="facilities_item">
                            <h4 class="sec_h4"><i class="lnr lnr-shirt"></i>游泳池</h4>
                            <p>游泳池是人们从事游泳运动的场地，人们可以在里面活动或进行比赛。多数游泳池建在地面，根据水温可分为一般游泳池和温水游泳池</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="facilities_item">
                            <h4 class="sec_h4"><i class="lnr lnr-car"></i>租车</h4>
                            <p>租车，又称为“汽车租赁”，该行业被称为“朝阳产业”，它具有无须办理保险、无须年检维修、车型可随意更换等优点，以租车代替买车来控制企业成本</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="facilities_item">
                            <h4 class="sec_h4"><i class="lnr lnr-construction"></i>健身房</h4>
                            <p>齐全的器械设备，有较全的健身及娱乐项目，有专业的教练进行指导   ，有良好的健身氛围。
在健身房不仅能锻炼肌肉，让身材更有形，也能认识很多新朋友。</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="facilities_item">
                            <h4 class="sec_h4"><i class="lnr lnr-coffee-cup"></i>酒吧</h4>
                            <p>提供啤酒、葡萄酒、洋酒、鸡尾酒等酒精类饮料的消费场所。Bar多指娱乐休闲类的酒吧，提供现场的乐队或歌手、专业舞蹈团队、“舞女”表演</p>
                        </div>
                    </div>
                </div>
            </div><div class="tlinks">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>
        </section>
        <!--================ Facilities Area  =================-->
        
        <!--================ About History Area  =================-->
        <section class="about_history_area section_gap">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 d_flex align-items-center">
                        <div class="about_content ">
                            <h2 class="title title_color">关于我们 <br>我们的故事<br>任务 & 梦想</h2>
                            <p>不适当的行为往往被一笑置之，因为“男孩就是男孩”，女性面临更高的行为标准，尤其是在工作场所。这就是为什么作为女性，我们在工作中的行为无可指责是至关重要的。不适当的行为常常被嘲笑.</p>
                           
                        </div>
                    </div>
                    <div class="col-md-6">
                        <img class="img-fluid" src="image/about_bg.jpg" alt="img">
                    </div>
                </div>
            </div>
        </section>
        <!--================ About History Area  =================-->
        
        <!--================ Testimonial Area  =================-->
        <section class="testimonial_area section_gap">
            <div class="container">
                <div class="section_title text-center">
                    <h2 class="title_color">客户的证明</h2>
                    <p>不求与人相比，但求超越自己，要哭就哭出激动的泪水，要笑就笑出成长的性格! </p>
                </div>
                <div class="testimonial_slider owl-carousel">
                    <div class="media testimonial_item">
                        <img class="rounded-circle" src="image/testtimonial-1.jpg" alt="">
                        <div class="media-body">
                            <p>作为有意识的旅行者，我们必须时刻关注我们亲爱的地球母亲 </p>
                            <a href="#"><h4 class="sec_h4">Fanny Spencer</h4></a>
                            <div class="star">
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star-half-o"></i></a>
                            </div>
                        </div>
                    </div>    
                    <div class="media testimonial_item">
                        <img class="rounded-circle" src="image/testtimonial-1.jpg" alt="">
                        <div class="media-body">
                            <p>作为有意识的旅行者，我们必须时刻关注我们亲爱的地球母亲 </p>
                            <a href="#"><h4 class="sec_h4">Fanny Spencer</h4></a>
                            <div class="star">
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star-half-o"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="media testimonial_item">
                        <img class="rounded-circle" src="image/testtimonial-1.jpg" alt="">
                        <div class="media-body">
                            <p>作为有意识的旅行者，我们必须时刻关注我们亲爱的地球母亲 </p>
                            <a href="#"><h4 class="sec_h4">Fanny Spencer</h4></a>
                            <div class="star">
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star-half-o"></i></a>
                            </div>
                        </div>
                    </div>    
                    <div class="media testimonial_item">
                        <img class="rounded-circle" src="image/testtimonial-1.jpg" alt="">
                        <div class="media-body">
                            <p>作为有意识的旅行者，我们必须时刻关注我们亲爱的地球母亲 </p>
                            <a href="#"><h4 class="sec_h4">Fanny Spencer</h4></a>
                            <div class="star">
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star-half-o"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================ Testimonial Area  =================-->
        
        <!--================ Latest Blog Area  =================-->
        <section class="latest_blog_area section_gap">
            <div class="container">
                <div class="section_title text-center">
                    <h2 class="title_color">最新博文</h2>
                    <p>世上没有绝望的处境，只有对处境绝望的人。</p>
                </div>
                <div class="row mb_30">
                    <div class="col-lg-4 col-md-6">
                        <div class="single-recent-blog-post">
                            <div class="thumb">
                                <img class="img-fluid" src="image/blog/blog-1.jpg" alt="post">
                            </div>
                            <div class="details">
                                <div class="tags">
                                    <a href="#" class="button_hover tag_btn">旅行</a>
                                    <a href="#" class="button_hover tag_btn">生活方式</a>
                                </div>
                                <a href="#"><h4 class="sec_h4">低成本广告</h4></a>
                                <p>命运要你成长的时候，总会安排一些让你不顺心的人或事</p>
                                <h6 class="date title_color">31st January,2018</h6>
                            </div>	
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="single-recent-blog-post">
                            <div class="thumb">
                                <img class="img-fluid" src="image/blog/blog-2.jpg" alt="post">
                            </div>
                            <div class="details">
                                <div class="tags">
                                    <a href="#" class="button_hover tag_btn">旅行</a>
                                    <a href="#" class="button_hover tag_btn">生活方式</a>
                                </div>
                                <a href="#"><h4 class="sec_h4">有创意的户外广告</h4></a>
                                <p>自我怀疑和恐惧会干扰我们实现或设定目标的能力</p>
                                <h6 class="date title_color">31st January,2018</h6>
                            </div>	
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="single-recent-blog-post">
                            <div class="thumb">
                                <img class="img-fluid" src="image/blog/blog-3.jpg" alt="post">
                            </div>
                            <div class="details">
                                <div class="tags">
                                    <a href="#" class="button_hover tag_btn">旅行</a>
                                    <a href="#" class="button_hover tag_btn">生活方式</a>
                                </div>
                                <a href="#"><h4 class="sec_h4">这是如何利用免费的分类</h4></a>
                                <p>你为什么想激励自己?</p>
                                <h6 class="date title_color">31st January,2018</h6>
                            </div>	
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================ Recent Area  =================-->
        
        <!--================ start footer Area  =================-->	
        <footer class="footer-area section_gap">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3  col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h6 class="footer_title">关于</h6>
                            <p>世界已经变得如此快，以至于人们不想站在一边看一页信息，他们更愿意看一篇演示文稿，并理解其中的信息。这已经到了一定程度 </p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h6 class="footer_title">导航链接</h6>
                            <div class="row">
                                <div class="col-4">
                                    <ul class="list_style">
                                         <li class="nav-item active"><a class="nav-link" href="front.jsp">首页</a></li> 
                            <li class="nav-item"><a class="nav-link" href="about.jsp">关于我们</a></li>
                            <li class="nav-item"><a class="nav-link" href="accomodation.jsp">住宿</a></li>
                            <li class="nav-item"><a class="nav-link" href="gallery.jsp">酒店展览</a></li>
                                    </ul>
                                </div>
                                <div class="col-4">
                                    <ul class="list_style">
                                     <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">博客</a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item"><a class="nav-link" href="blog.jsp">博客</a></li>
                                    <li class="nav-item"><a class="nav-link" href="blog-single.jsp">博客信息</a></li>
                                </ul>
                            </li> 
                            <li class="nav-item"><a class="nav-link" href="elements.jsp">元素</a></li>
                            <li class="nav-item"><a class="nav-link" href="contact.jsp">联系我们</a></li>
                        </ul>
                                    </ul>
                                </div>										
                            </div>							
                        </div>
                    </div>							
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h6 class="footer_title">实时通讯</h6>
                            <p>为业务专业人士夹在高OEM价格和平庸的印刷和图形输出, </p>		
                            <div id="mc_embed_signup">
                                <form target="_blank" action="#/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscribe_form relative">
                                    <div class="input-group d-flex flex-row">
                                        <input name="EMAIL" placeholder="Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address '" required="" type="email">
                                        <button class="btn sub-btn"><span class="lnr lnr-location"></span></button>		
                                    </div>									
                                    <div class="mt-10 info"></div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-footer-widget instafeed">
                            <h6 class="footer_title">安装</h6>
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
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | made with Colorlib -  More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
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
	            		 str+="<li data-value=\"1\" id='' class=\"option\" onclick=\"get("+ss[i].rid+")\" value=\""+ss[i].rimg+"\">"+ss[i].rtype+"</li>";
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
/*       		  var data = {      				
      				zname:$("#zname").html(),
      				rprice:$("#rprice").val(),
      				rimg:$("#rimg").html(),
      				intime:$("#intime").val(),
      				outtime:$("#outtime").val()
      		  }; */
      		  
      	  });
        </script>
        
        <script src="js/popper.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="vendors/owl-carousel/owl.carousel.min.js"></script>
        <script src="js/jquery.ajaxchimp.min.js"></script>
        <script src="js/mail-script.js"></script>
        <script src="vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.js"></script>
        <script src="vendors/nice-select/js/jquery.nice-select.js"></script>
        <script src="js/mail-script.js"></script>
        <script src="js/stellar.js"></script>
        <script src="vendors/lightbox/simpleLightbox.min.js"></script>
        <script src="js/custom.js"></script>
    </body>
</html>