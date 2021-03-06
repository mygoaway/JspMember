<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>Unify - Responsive Website Template</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- Web Fonts -->
    <link rel='stylesheet' type='text/csss' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/shop.style.css">
    
    <!-- CSS Header and Footer -->
    <link rel="stylesheet" href="assets/css/headers/header-default.css">
    <link rel="stylesheet" href="assets/css/footers/footer-v2.css">

    
    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="assets/plugins/animate.css">    
    <link rel="stylesheet" href="assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/plugins/scrollbar/css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">
    <link rel="stylesheet" href="assets/plugins/revolution-slider/rs-plugin/css/settings.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="assets/css/custom.css">
</head>	

<body class="header-fixed">
<div class="wrapper">
    
    <!--==========================================
    
    					Header ?????? ???????????????~!!!!!
    
    =================================================-->    
    <div class="header">
        <div class="container">
            <!-- Logo -->
            <a class="logo" href="homepage.jsp">
                <img src="./logoimg/MainLogo.png" alt="Logo" width="180">
            </a>
            <!-- End Logo -->
            
            <!-- Topbar -->
            <div class="topbar">
                <ul class="loginbar pull-right">  
                    <li><a href="page_login.html">?????????</a></li>  
                    <li class="topbar-devider"></li>   
                    <li><a href="page_registration.html">????????????</a></li>   
                </ul>
            </div>
            <!-- End Topbar -->

            <!-- Toggle get grouped for better mobile display -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="fa fa-bars"></span>
            </button>
            <!-- End Toggle -->
        </div>
        <!--/end container-->

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
            <div class="container">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="homepage.jsp">Home</a>
                   </li>
                  
                    <li>
                        <a href="">????????????</a>
                    </li>
                    
                    <li>
                        <a href="/TestProjectVersion2/lookcafe.do">?????? ????????????</a>
                    </li>
                    
                    <li>
                        <a href="">?????? ?????????</a>
                    </li>
                    
                     <li>
                        <a href="#">?????? ??????</a>
                    </li>                   

                   <li>
                        <a href="#">?????? ??????</a>
                    </li>             
                </ul>
            </div><!--/end container-->
        </div><!--/navbar-collapse-->
    </div>
    <!--=============================================
    
    								End Header ?????? ????????????.!!!
    
    ================================================-->
    
	<!--=== ??????????????? ????????? ?????? ???????????? ?????????!! ===-->
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">?????? ????????????</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="homepage.html">Home</a></li>
                <li class="active">?????? ????????????</li>
            </ul>
        </div>
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->
    
    <!--=== Content Part ===-->
    <div class="container content-md">
    	 <!-- Recent Works -->
        <div class="heading heading-v1 margin-bottom-20">
            <h2>?????? ????????? ????????? ??????</h2>
            <p>?????? ????????? ????????? ?????? ????????????</p>
        </div>
                <!--=== Illustration v2 ===-->
        <div class="illustration-v2 margin-bottom-60">
            <div class="customNavigation margin-bottom-25">
                <a class="owl-btn prev rounded-x"><i class="fa fa-angle-left"></i></a>
                <a class="owl-btn next rounded-x"><i class="fa fa-angle-right"></i></a>
            </div>

            <ul class="list-inline owl-slider">
                <li class="item">
                    <div class="product-img">
                        <a href="shop-ui-inner.html"><img class="full-width img-responsive" src="assets/img/main/Cafe1.jpg" alt=""></a>
                        <a class="product-review" href="shop-ui-inner.html">Quick review</a>
                        <a class="add-to-cart" href="#"><i class="fa fa-shopping-cart"></i>????????????</a>
                    	<div class="shop-rgba-dark-green rgba-banner">New</div>
                    </div>
                    <!-- ????????????  ?????? ??????  -->
                    <div class="product-description product-description-brd">
                        <div class="overflow-h margin-bottom-5">
                            <div class="pull-left">
                                <h4 class="title-price"><a href="shop-ui-inner.html">???????????? 1</a></h4>
                                <span class="gender text-uppercase">2??????</span>
                                
                            </div>    
                            <div class="product-price">
                                <span class="title-price">2000???</span>
                            </div>
                        </div>    
                        <ul class="list-inline product-ratings">
                            <li><i class="rating-selected fa fa-star"></i></li>
                            <li><i class="rating-selected fa fa-star"></i></li>
                            <li><i class="rating-selected fa fa-star"></i></li>
                            <li><i class="rating fa fa-star"></i></li>
                            <li><i class="rating fa fa-star"></i></li>
                            <li class="like-icon"><a data-original-title="Add to wishlist" data-toggle="tooltip" data-placement="left" class="tooltips" href="#"><i class="fa fa-heart"></i></a></li>
                        </ul>    
                    </div>
                </li>
              <!--??????????????? ????????? ?????? 2?????? ?????????  -->
                <li class="item">
                    <div class="product-img">
                        <a href="shop-ui-inner.html"><img class="full-width img-responsive" src="assets/img/main/Cafe1.jpg" alt=""></a>
                        <a class="product-review" href="shop-ui-inner.html">Quick review</a>
                        <a class="add-to-cart" href="#"><i class="fa fa-shopping-cart"></i>????????????</a>
						<div class="shop-rgba-dark-green rgba-banner">New</div>                    
                    </div> 
                    <div class="product-description product-description-brd">
                        <div class="overflow-h margin-bottom-5">
                            <div class="pull-left">
                                <h4 class="title-price"><a href="shop-ui-inner.html">???????????? 2</a></h4>
                      		<span class="gender"></span> 
                                <span class="gender">4??????</span>
                            </div>    
                            <div class="product-price">
                                <span class="title-price">6000???</span>
                         			
                         
                            </div>
                        </div>    
                        <ul class="list-inline product-ratings">
                            <li><i class="rating-selected fa fa-star"></i></li>
                            <li><i class="rating-selected fa fa-star"></i></li>
                            <li><i class="rating-selected fa fa-star"></i></li>
                            <li><i class="rating fa fa-star"></i></li>
                            <li><i class="rating fa fa-star"></i></li>
                            <li class="like-icon"><a data-original-title="Add to wishlist" data-toggle="tooltip" data-placement="left" class="tooltips" href="#"><i class="fa fa-heart"></i></a></li>
                        </ul>    
                    </div>
                </li>
                <li class="item">
                    <div class="product-img">
                        <a href="shop-ui-inner.html"><img class="full-width img-responsive" src="assets/img/main/Cafe1.jpg" alt=""></a>
                        <a class="product-review" href="shop-ui-inner.html">Quick review</a>
                        <a class="add-to-cart" href="#"><i class="fa fa-shopping-cart"></i>????????????</a>
                         <div class="shop-rgba-dark-green rgba-banner">New</div>
                    </div> 
                    <div class="product-description product-description-brd">
                        <div class="overflow-h margin-bottom-5">
                            <div class="pull-left">
                                <h4 class="title-price"><a href="shop-ui-inner.html">????????????3</a></h4>
                                <span class="gender text-uppercase">2??????</span>
 
                            </div>    
                            <div class="product-price">
                                <span class="title-price">4000???</span>
                            </div>
                        </div>    
                        <ul class="list-inline product-ratings">
                            <li><i class="rating-selected fa fa-star"></i></li>
                            <li><i class="rating-selected fa fa-star"></i></li>
                            <li><i class="rating-selected fa fa-star"></i></li>
                            <li><i class="rating fa fa-star"></i></li>
                            <li><i class="rating fa fa-star"></i></li>
                            <li class="like-icon"><a data-original-title="Add to wishlist" data-toggle="tooltip" data-placement="left" class="tooltips" href="#"><i class="fa fa-heart"></i></a></li>
                        </ul>    
                    </div>
                </li>
                <li class="item">
                    <div class="product-img">
                        <a href="shop-ui-inner.html"><img class="full-width img-responsive" src="assets/img/main/Cafe1.jpg" alt=""></a>
                        <a class="product-review" href="shop-ui-inner.html">Quick review</a>
                        <a class="add-to-cart" href="#"><i class="fa fa-shopping-cart"></i>????????????</a>
                        <div class="shop-rgba-dark-green rgba-banner">New</div>
                    </div> 
                    <div class="product-description product-description-brd">
                        <div class="overflow-h margin-bottom-5">
                            <div class="pull-left">
                                <h4 class="title-price"><a href="shop-ui-inner.html">????????????4</a></h4>
                                <span class="gender">6??????</span>
                            </div>    
                            <div class="product-price">
                                <span class="title-price">9000???</span>
                            </div>
                        </div>    
                        <ul class="list-inline product-ratings">
                            <li><i class="rating-selected fa fa-star"></i></li>
                            <li><i class="rating-selected fa fa-star"></i></li>
                            <li><i class="rating-selected fa fa-star"></i></li>
                            <li><i class="rating fa fa-star"></i></li>
                            <li><i class="rating fa fa-star"></i></li>
                            <li class="like-icon"><a data-original-title="Add to wishlist" data-toggle="tooltip" data-placement="left" class="tooltips" href="#"><i class="fa fa-heart"></i></a></li>
                        </ul>    
                    </div>
                </li>
                <li class="item">
                    <div class="product-img">
                        <a href="shop-ui-inner.html"><img class="full-width img-responsive" src="assets/img/main/Cafe1.jpg" alt=""></a>
                        <a class="product-review" href="shop-ui-inner.html">Quick review</a>
                        <a class="add-to-cart" href="#"><i class="fa fa-shopping-cart"></i>????????????</a>
                    	<div class="shop-rgba-dark-green rgba-banner">New</div>
                    	</div> 
                    <div class="product-description product-description-brd">
                        <div class="overflow-h margin-bottom-5">
                            <div class="pull-left">
                                <h4 class="title-price"><a href="shop-ui-inner.html">???????????? 5</a></h4>
                                <span class="gender">3??????</span>
                            </div>    
                            <div class="product-price">
                                <span class="title-price">3000???</span>
                            </div>
                        </div>    
                        <ul class="list-inline product-ratings">
                            <li><i class="rating-selected fa fa-star"></i></li>
                            <li><i class="rating-selected fa fa-star"></i></li>
                            <li><i class="rating-selected fa fa-star"></i></li>
                            <li><i class="rating fa fa-star"></i></li>
                            <li><i class="rating fa fa-star"></i></li>
                            <li class="like-icon"><a data-original-title="Add to wishlist" data-toggle="tooltip" data-placement="left" class="tooltips" href="#"><i class="fa fa-heart"></i></a></li>
                        </ul>    
                    </div>
                </li>
                <li class="item">
                    <div class="product-img">
                        <a href="shop-ui-inner.html"><img class="full-width img-responsive" src="assets/img/main/Cafe1.jpg" alt=""></a>
                        <a class="product-review" href="shop-ui-inner.html">????????????</a>
                        <a class="add-to-cart" href="#"><i class="fa fa-shopping-cart"></i>????????????</a>
                       	  <div class="shop-rgba-dark-green rgba-banner">New</div>
                    </div> 
                    <div class="product-description product-description-brd">
                        <div class="overflow-h margin-bottom-5">
                            <div class="pull-left">
                                <h4 class="title-price"><a href="shop-ui-inner.html">???????????? 8</a></h4>
                           
                                <span class="gender">6??????</span>
                            </div>    
                            <div class="product-price">
                                <span class="title-price">9000</span>
                            </div>
                        </div>    
                        <ul class="list-inline product-ratings">
                            <li><i class="rating-selected fa fa-star"></i></li>
                            <li><i class="rating-selected fa fa-star"></i></li>
                            <li><i class="rating-selected fa fa-star"></i></li>
                            <li><i class="rating fa fa-star"></i></li>
                            <li><i class="rating fa fa-star"></i></li>
                            <li class="like-icon"><a data-original-title="Add to wishlist" data-toggle="tooltip" data-placement="left" class="tooltips" href="#"><i class="fa fa-heart"></i></a></li>
                        </ul>    
                    </div>
                </li>    
                <li class="item">
                    <div class="product-img">
                        <a href="shop-ui-inner.html"><img class="full-width img-responsive" src="assets/img/main/Cafe1.jpg" alt=""></a>
                        <a class="product-review" href="shop-ui-inner.html">Quick review</a>
                        <a class="add-to-cart" href="#"><i class="fa fa-shopping-cart"></i>????????????</a>
                    	<div class="shop-rgba-dark-green rgba-banner">New</div>
                    	</div> 
                    <div class="product-description product-description-brd">
                        <div class="overflow-h margin-bottom-5">
                            <div class="pull-left">
                                <h4 class="title-price"><a href="shop-ui-inner.html">???????????? 5</a></h4>
                                <span class="gender">3??????</span>
                            </div>    
                            <div class="product-price">
                                <span class="title-price">3000???</span>
                            </div>
                        </div>    
                        <ul class="list-inline product-ratings">
                            <li><i class="rating-selected fa fa-star"></i></li>
                            <li><i class="rating-selected fa fa-star"></i></li>
                            <li><i class="rating-selected fa fa-star"></i></li>
                            <li><i class="rating fa fa-star"></i></li>
                            <li><i class="rating fa fa-star"></i></li>
                            <li class="like-icon"><a data-original-title="Add to wishlist" data-toggle="tooltip" data-placement="left" class="tooltips" href="#"><i class="fa fa-heart"></i></a></li>
                        </ul>    
                    </div>
                </li>
            </ul>
        </div> 
        <!--=== ?????? ??????????????? ???==-->
    	
    
        <div class="heading heading-v1 margin-bottom-40">
            <h2>????????????</h2>
        </div>

        <!--=== ???????????? ===-->
        <div class="row illustration-v2">
        	<c:forEach var="cafe" items="${list}">
	            <div class="col-md-3 col-sm-6 md-margin-bottom-30">
	                <div class="product-img">
	                    <a href="/TestProjectVersion2/list.do?cafe_id=${cafe.cafe_id}"><img class="full-width img-responsive" src="${cafe.cafe_image1}" style="width:273px; height:180px;"></a>
	                    <a class="add-to-cart" href="/TestProjectVersion2/list.do?cafe_id=${cafe.cafe_id}"><i class="fa fa-shopping-cart"></i>????????????</a>
	                </div>
	                <div class="product-description product-description-brd">
	                    <div class="overflow-h margin-bottom-5">
	                        <div class="pull-left">
	                            <h4 class="title-price"><a href="/TestProjectVersion2/list.do?cafe_id=${cafe.cafe_id}">${cafe.cafe_name}</a></h4>
	                            <span class="gender text-uppercase">${cafe.cafe_category1} / ${cafe.cafe_category2}</span>   
	                       		<h6>${cafe.cafe_hashtag1}  ${cafe.cafe_hashtag2}</h6>
	                       		<h6>${cafe.cafe_category1Price} / ??????(???)</h6>
	                        </div>    
	                    </div>    
	                </div>
	            </div>
            </c:forEach>
        </div> 
        <!--=== ?????? ???????????? ===-->
	</div>

    <!--=== Footer v2 ===-->
    <div id="footer-v2" class="footer-v2">
        <div class="footer">
            <div class="container">
                <div class="row">
                    <!-- About -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <a class="logo" href="homepage.html">
                		<img src="./logoimg/MainLogo.png" alt="Logo" width="180">
            			</a>
                        <p class="margin-bottom-20"><p>Study from Anywhere! ????????? ????????? ????????? ?????????. ???????????? ?????? ????????????</p>
                        <p>????????? ?????? ??????????????? ?????? ?????? ??????????????? ?????? ??????????????????. ????????? ??????????????????????????? ??????????????? ???????????? ????????????. ????????? ????????? ?????? ???????????? ??? ????????? ?????? ???????????? ????????????.</p>
                        <form class="footer-subsribe">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Email Address">                            
                                <span class="input-group-btn">
                                    <button class="btn-u" type="button">Go</button>
                                </span>
                            </div>                  
                        </form>                         
                    </div>
                    <!-- End About -->
                    
                    <!-- Link List -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <div class="headline"><h2 class="heading-sm">Useful Links</h2></div>
                        <ul class="list-unstyled link-list">
                            <li><a href="#">About us</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">????????????</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">?????????</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">1:1??????</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">????????? ??????</a><i class="fa fa-angle-right"></i></li>
                        </ul>
                    </div>
                    <!-- End Link List -->                   

                    <!-- Latest Tweets -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <div class="latest-tweets">
                            <div class="headline"><h2 class="heading-sm">Latest Tweets</h2></div>
                            <div class="latest-tweets-inner">
                                <i class="fa fa-twitter"></i>
                                <p>
                                    <a href="#">@htmlstream</a> 
                                    ????????? ???????????? ???????????????.
                                    <a href="#">http://t.co/sBav7dm</a> 
                                    <small class="twitter-time">2 hours ago</small>
                                </p>    
                            </div>
                            <div class="latest-tweets-inner">
                                <i class="fa fa-twitter"></i>
                                <p>
                                    <a href="#">@user</a> 
                                    ????????? ????????? ??????????????? ????????? ???????????????.
                                    <a href="#">http://t.co/sBav7dm</a> 
                                    <small class="twitter-time">4 hours ago</small>
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- End Latest Tweets -->    

                    <!-- Address -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <div class="headline"><h2 class="heading-sm">Contact Us</h2></div>                         
                        <address class="md-margin-bottom-40">
                            <i class="fa fa-home"></i>??????????????? ????????? ????????????11 ???????????? 3??? <br />
                            <i class="fa fa-phone"></i>Phone: 010 123 3456 <br />
                            <i class="fa fa-globe"></i>Website: <a href="#">www.studycafe.com</a> <br />
                            <i class="fa fa-envelope"></i>Email: <a href="mailto:info@anybiz.com">studycafe@xxx.com</a> 
                        </address>

                        <!-- Social Links -->
                        <ul class="social-icons">
                            <li><a href="#" data-original-title="Facebook" class="rounded-x social_facebook"></a></li>
                            <li><a href="#" data-original-title="Twitter" class="rounded-x social_twitter"></a></li>
                            <li><a href="#" data-original-title="Goole Plus" class="rounded-x social_googleplus"></a></li>
                            <li><a href="#" data-original-title="Linkedin" class="rounded-x social_linkedin"></a></li>
                        </ul>
                        <!-- End Social Links -->
                    </div>
                    <!-- End Address -->
                </div>
            </div> 
        </div><!--/footer-->

        <div class="copyright">
            <div class="container">
                <p class="text-center">2015 &copy; All Rights Reserved. Unify Theme by <a target="_blank" href="https://twitter.com/htmlstream">Htmlstream</a></p>
            </div> 
        </div><!--/copyright--> 
    </div>
    <!--=== End Footer v2 ===-->

        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">                     
                        <p>
                            2015 &copy; All Rights Reserved.
                           <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
                        </p>
                    </div>

                    <!-- Social Links -->
                    <div class="col-md-6">
                        <ul class="footer-socials list-inline">
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Facebook">
                                    <i class="fa fa-facebook"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Skype">
                                    <i class="fa fa-skype"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Google Plus">
                                    <i class="fa fa-google-plus"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Linkedin">
                                    <i class="fa fa-linkedin"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Pinterest">
                                    <i class="fa fa-pinterest"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Twitter">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Dribbble">
                                    <i class="fa fa-dribbble"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- End Social Links -->
                </div>
            </div> 
        </div><!--/copyright-->
    </div>
    <!--=== End Footer Version 1 ===-->
</div><!--/wrapper-->

<!-- JS Global Compulsory -->			
<script type="text/javascript" src="assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="assets/plugins/smoothScroll.js"></script>
<script type="text/javascript" src="assets/plugins/parallax-slider/js/modernizr.js"></script>
<script type="text/javascript" src="assets/plugins/parallax-slider/js/jquery.cslider.js"></script>
<script type="text/javascript" src="assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="assets/js/custom.js"></script>
<!-- JS Page Level -->           
<script type="text/javascript" src="assets/js/app.js"></script>
<script type="text/javascript" src="assets/js/plugins/owl-carousel.js"></script>
<script type="text/javascript" src="assets/js/plugins/parallax-slider.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
      	App.init();
        OwlCarousel.initOwlCarousel();        
        ParallaxSlider.initParallaxSlider();
    });
</script>
<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
    <script src="assets/plugins/html5shiv.js"></script>
    <script src="assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</html>