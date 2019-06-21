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
        <link rel="stylesheet" href="vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.css">
        <link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
        <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
        <link rel="stylesheet" href="vendors/lightbox/simpleLightbox.css">
        <!-- main css -->
        <link rel="stylesheet" href="css/frontstyle.css">
        <link rel="stylesheet" href="css/responsive.css">
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
                           <li class="nav-item"><a class="nav-link" href="front.jsp">首页</a></li> 
                            <li class="nav-item"><a class="nav-link" href="about.jsp">关于我们</a></li>
                            <li class="nav-item"><a class="nav-link" href="accomodation.jsp">住宿</a></li>
                            <li class="nav-item active"><a class="nav-link" href="gallery.jsp">画廊</a></li>
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
            <div class="overlay bg-parallax" data-stellar-ratio="0.8" data-stellar-vertical-offset="0" data-background=""></div>
            <div class="container">
                <div class="page-cover text-center">
                    <h2 class="page-cover-tittle">画廊</h2>
                    <ol class="breadcrumb">
                        <li><a href="front.jsp">首页</a></li>
                        <li class="active">画廊</li>
                    </ol>
                </div>
            </div>
        </section>
        <!--================Breadcrumb Area =================-->
        
        <!--================Breadcrumb Area =================-->
        <section class="gallery_area section_gap">
            <div class="container">
                <div class="section_title text-center">
                    <h2 class="title_color">酒店画廊</h2>
                    <p>谁都喜欢友好的生态系统。</p>
                </div>
                <div class="row imageGallery1" id="gallery">
                
                	<c:if test="${empty SelectImg}">
						<jsp:forward page="img.do?getSelectImgAll"></jsp:forward>
					</c:if>
	
					<c:forEach var="r" items="${SelectImg}">
	                    <div class="col-md-4 gallery_item">
	                        <div class="gallery_img">
	                            <img src="${r.img_info }" alt="">
	                            <div class="hover">
	                            	<a class="light" href="image/gallery/01.jpg"><i class="fa fa-expand"></i></a>
	                            </div>
	                        </div>
	                    </div>
                    </c:forEach>
                    
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
                                        <li><a href="#">首页</a></li>
                                        <li><a href="#">特色</a></li>
                                        <li><a href="#">服务</a></li>
                                        <li><a href="#">文件夹</a></li>
                                    </ul>
                                </div>
                                <div class="col-4">
                                    <ul class="list_style">
                                        <li><a href="#">团队</a></li>
                                        <li><a href="#">定价</a></li>
                                        <li><a href="#">博客</a></li>
                                        <li><a href="#">接触</a></li>
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
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | made with Colorlib -  More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家"></a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank"></a>
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
        <!-- <script type="text/javascript">
	        $.ajax({
	        	type:'post',
	        	url:'img.do?getSelectImg',
	        	contentType:'application/json;charset=utf-8',
	            dataType: "json",
	            success: function(data){
	            	 var ss=eval(data);
	            	 var str="";
	            	 for(var i=0;i<ss.length;i++){
	            		 str+="<div class=\"col-md-4 gallery_item\">"
	            		 +"<div class=\"gallery_img\">"
	            		 +"<img src=\""+ss[i].img_info+"\" alt=\"\">"
	            		 +"<div class=\"hover\">"
	            		 +"<a class=\"light\" href=\"image/gallery/01.jpg\"><i class=\"fa fa-expand\"></i></a>"
	            		 +"</div>"
	            		 +"</div>"
	            		 +"</div>";
	            	 }
	            	 $("#gallery").html(str);
	            },
				error:function(){
					alert('错了');
				},
	        	
	        });
        </script> -->
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
    </body>
</html>