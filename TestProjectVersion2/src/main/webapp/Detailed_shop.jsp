<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html> 
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="ko"> <!--<![endif]-->  
<head>
    <title>Blog Large Right Sidebar | Unify - Responsive Website Template</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

	<!-- color -->
	<link rel="stylesheet" href="assets/css/theme-colors/blue.css">

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- Web Fonts -->
    <link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <!-- CSS Header and Footer -->
    <link rel="stylesheet" href="assets/css/headers/header-default.css">
    <link rel="stylesheet" href="assets/css/footers/footer-v2.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="assets/plugins/animate.css">
    <link rel="stylesheet" href="assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/plugins/fancybox/source/jquery.fancybox.css">    
    <link rel="stylesheet" href="assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
    <link rel="stylesheet" href="assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">

    <!-- CSS Page Style -->    
    <link rel="stylesheet" href="assets/css/pages/blog.css">
    <link rel="stylesheet" href="assets/css/pages/blog_magazine.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="assets/css/custom.css">
    
    <!--======== ????????? ????????????======= -->
    <style>    
    #RPath{
		color:#2ecc71;
	}
    #CTitle{
		font-size:30px;
		    
    }
    /*
    	?????? ?????? ?????????
    */
    
    </style>
    <!--======== ????????? ????????????======= -->
</head>	

<body>    

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

    <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left" id="RPath"><b>???????????????</b></h1>
            <ul class="pull-right breadcrumb">
                <li><a href="homepage.html">Home</a></li>
                <li><a href="lookcafe.html">?????? ????????????</a></li>
                <li class="active">????????????</li>
            </ul>
        </div>
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

    <!--=== Content Part ===-->
    <div class="container content">		
    	<div class="row blog-page">    
            <!-- Left Sidebar -->
        	<div class="col-md-8">  
                <!--Blog Post-->        
                <div class="blog margin-bottom-20">
                    <p id="CTitle">${cafe.cafe_name}</p>
                    <div class="blog-post-tags">
                        <ul class="list-unstyled list-inline blog-tags">
                            <li>
                                <a href="#">${cafe.cafe_hashtag1}</a> 
                                <a href="#">${cafe.cafe_hashtag2}</a>
                                <a href="#">${cafe.cafe_hashtag3}</a>
                                <a href="#">${cafe.cafe_hashtag4}</a>
                            </li>
                        </ul>                                                
                    </div>
                    <div class="blog-img">
                        <div class="carousel slide carousel-v1" id="myCarousel">
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img width="750" height="550" src="${cafe.cafe_image1}">
                                </div>
                                <div class="item">
                                    <img width="750" height="550" src="${cafe.cafe_image2}">
                                    </div>
                                <div class="item">
                                    <img width="750" height="550" src="${cafe.cafe_image3}">
                                </div>
                            </div>
                            
                            <div class="carousel-arrow">
                                <a data-slide="prev" href="#myCarousel" class="left carousel-control">
                                    <i class="fa fa-angle-left"></i>
                                </a>
                                <a data-slide="next" href="#myCarousel" class="right carousel-control">
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <p id="CTitle" style="white-space: pre-line;">${cafe.cafe_linescription}</p>
                </div>  
               <div class="tab-v1">
	                    <ul class="nav nav-tabs margin-bottom-20 nav-justified" id="Introduction">
	                        <li class="active"><a data-toggle="tab" href="#home">????????????</a></li>
	                        <li ><a data-toggle="tab" href="#settings2">????????????</font></a></li>
	                        <li><a data-toggle="tab" href="#settings3">????????????</a></li>
	                        <li><a data-toggle="tab" href="#settings4">????????????</a></li>
	                        <li><a data-toggle="tab" href="#settings5">Q&A</a></li>
	                        <li><a data-toggle="tab" href="#settings6">????????????</a></li>
	                    </ul>
	                    <div class="tab-content">
	                        <!-- Tab Content 1 -->
	                        <div id="home" class="tab-pane fade in active">
	                            <div id="accordion-v1" class="panel-group acc-v1">
	                                <div class="panel panel-default">
	                                    <div class="panel-heading">
	                                        <h4 class="panel-title">
	                                            <a href="#collapse-One" data-parent="#accordion-v1" data-toggle="collapse" class="accordion-toggle">
	                                                ????????????
	                                            </a>
	                                        </h4>
	                                    </div>
	                                    <div class="panel-collapse collapse in" id="collapse-One">
	                                        <div class="panel-body">
	                                        		<p style="white-space: pre-line;"><font size="3pt" >${cafe.cafe_spaceintroduction}</font></p>
	                                            <hr>
	                                            <p>
	                                            <b>??????</b>&emsp;${cafe.cafe_address}
	                                            <p>
	                                            <b>?????????</b>&emsp;${cafe.cafe_contact}
	                                            <p>
	                                            <b>????????????</b>&emsp;${cafe.cafe_time}
	                                            <p>
												<b>?????????</b>&emsp;${cafe.cafe_rest}
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>    
	                        </div>
	                        <!-- End Tab Content 1 -->
	
	                        <!-- Tab Content 2 -->
	                        <div id="settings2" class="tab-pane fade">
	                            <div id="accordion-v2" class="panel-group acc-v1">
	                                <div class="panel panel-default">
	                                    <div class="panel-heading">
	                                        <h4 class="panel-title">
	                                            <a href="#collapse-v2-One" data-parent="#accordion-v2" data-toggle="collapse" class="accordion-toggle">
	                                               	????????????
	                                            </a>
	                                        </h4>
	                                    </div>
	                                    <div class="panel-collapse collapse in" id="collapse-v2-One">
	                                        <div class="panel-body">
	                   	                     <p style="white-space: pre-line;"><font size="3pt" >${cafe.cafe_infrainformation}</font></p>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>    
	                        </div>
	                        <!-- Tab Content 2 -->
	                        
	                        <!-- Tab Content 3 -->
	                        <div id="settings3" class="tab-pane fade">
	                            <div id="accordion-v3" class="panel-group acc-v1">
	                                <div class="panel panel-default">
	                                    <div class="panel-heading">
	                                        <h4 class="panel-title">
	                                            <a href="#collapse-v3-One" data-parent="#accordion-v3" data-toggle="collapse" class="accordion-toggle">
	                                                ????????????
	                                            </a>
	                                        </h4>
	                                    </div>
	                                    <div class="panel-collapse collapse in" id="collapse-v3-One">
	                                        <div class="panel-body">
	                                            <p style="white-space: pre-line;"><font size="3pt" >${cafe.cafe_note}</font></p>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>    
	                        </div>
	                        <!-- Tab Content 3 -->
	                        
	                        <!-- Tab Content 4 -->                        
	                        <div id="settings4" class="tab-pane fade">
	                            <div id="accordion-v4" class="panel-group acc-v1">
	                                <div class="panel panel-default">
	                                    <div class="panel-heading">
	                                        <h4 class="panel-title">
	                                            <a href="#collapse-v4-One" data-parent="#accordion-v4" data-toggle="collapse" class="accordion-toggle">
	                                                ????????????
	                                            </a>
	                                        </h4>
	                                    </div>
	                                    <div class="panel-collapse collapse in" id="collapse-v4-One">
	                                        <div class="panel-body">
	                                            <p style="white-space: pre-line;"><font size="3pt" >${cafe.cafe_refund}</font></p>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <!-- Tab Content 4 -->
	                        
	                        <!-- 5 -->
	                        <div id="settings5" class="tab-pane fade">
	                            <div id="accordion-v4" class="panel-group acc-v1">
	                                <div class="panel panel-default">
	                                    <div class="panel-heading">
	                                        <h4 class="panel-title">
	                                            <a href="#collapse-v5-One" data-parent="#accordion-v5" data-toggle="collapse" class="accordion-toggle">
	                                                Q&A
	                                            </a>
	                                        </h4>
	                                    </div>
	                                    <div class="panel-collapse collapse in" id="collapse-v5-One">
	                                        <div class="panel-body">
	                                            Q&A??????
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <!-- 5 -->
	                        
	                        <!-- 6 -->
	                        <div id="settings6" class="tab-pane fade">
	                            <div id="accordion-v4" class="panel-group acc-v1">
	                                <div class="panel panel-default">
	                                    <div class="panel-heading">
	                                        <h4 class="panel-title">
	                                            <a href="#collapse-v6-One" data-parent="#accordion-v6" data-toggle="collapse" class="accordion-toggle">
	                                                ????????? ??????
	                                            </a>
	                                        </h4>
	                                    </div>
	                                    <div class="panel-collapse collapse in" id="collapse-v6-One">
	                                        <div class="panel-body">
	                                            <div class="headline"><h2>????????? ??????</h2></div>
								            <div class="row-v4">
								                <div class="col-md-pull pull-left">             
								                     <div class="row blog-comments">
								                        <div class="col-sm-2">
								                            <img class="img-responsive rounded-x" src="assets/img/team/logo.png" alt="">
								                        </div>
								                        <div class="col-sm-10">
								                            <blockquote>
								                            	<div class="row">
									                             	<div class="col-sm-2">
										                             	<h2>?????????</h2>
										                            </div>
										                            
									                             	<div class="col-sm-4 col-sm-offset-6">
										                             	  <ul class="list-inline star-vote">
														                      <li><i class="color-green fa fa-star"></i></li>
														                      <li><i class="color-green fa fa-star"></i></li>
														                      <li><i class="color-green fa fa-star"></i></li>
														                      <li><i class="color-green fa fa-star-o"></i></li>
														                      <li><i class="color-green fa fa-star-o"></i></li>
														                 </ul>
										                            </div>                        
									                            </div>
									                            <p>
								                                <p>?????? ?????? ????????? ???????????? ????????????????????? ?????? ????????? ????????? ????????? ?????? ??????????????? ???????????? ????????? ?????? ??????????????? ???????????? ????????? ??? ???????????????. ???????????? ???????????? ????????? ????????????! ?????? ??????????????? ?????????!</p>
								                            	<h6>2021.04.05</h6>
								                            </blockquote> 
								                            
								                            <blockquote>
								                            	<h2>???????????? ??????</h2>
								                            	<p>???????????????! ???????????? ??????????????? :D ?????????????????? ???????????????, ????????? ????????? ?????? ??????????????????!! ???????????? ????????? ????????? ???????????? ???????????? :-)</p>
								                            	<h6>2021.04.08</h6>
								                            </blockquote>
								                        </div>
								                    </div>
								                    <hr>
								     
								                     <div class="row blog-comments">
								                        <div class="col-sm-2">
								                            <img class="img-responsive rounded-x" src="assets/img/team/logo.png" alt="">
								                        </div>
								                        <div class="col-sm-10">
								                            <blockquote>
								                            	<div class="row">
									                             	<div class="col-sm-2">
										                             	<h2>?????????</h2>
										                            </div>
										                            
									                             	<div class="col-sm-4 col-sm-offset-6">
										                             	  <ul class="list-inline star-vote">
														                      <li><i class="color-green fa fa-star"></i></li>
														                      <li><i class="color-green fa fa-star"></i></li>
														                      <li><i class="color-green fa fa-star"></i></li>
														                      <li><i class="color-green fa fa-star-o"></i></li>
														                      <li><i class="color-green fa fa-star-o"></i></li>
														                 </ul>
										                            </div>                        
									                            </div>
									                            <p>
								                                <p>?????? ????????? ????????? ????????? ?????? ?????? ??????????????????. ????????? ????????? ?????? ???????????? ????????????????????? ?????????????????? ???????????? ????????? ?????????????????????. ??????????????? ?????? ????????? ???????????? ???????????? ???????????? ???????????????. ????????? ???????????? ??????????????????. ????????? ??? ??????????????? ???????????? ???????????? ???????????? (???????????? ????????? ?????? ??????, ????????????)????????? ???????????? ???????????? ?????????.</p>
								                               <h6>2021.04.01</h6>
								                            </blockquote> 
								                            
								                            <blockquote>
								                            	<h2>???????????? ??????</h2>
								                            	<p>???????????????! ???????????? ??????????????? :D ?????????????????? ???????????????, ????????? ????????? ?????? ??????????????????!! ???????????? ????????? ????????? ???????????? ???????????? :-)</p>
								                            	<h6>2021.04.05</h6>
								                            </blockquote>
								                        </div>
								                    </div>
								                    <hr>
								                    
								                     <div class="row blog-comments">
								                        <div class="col-sm-2">
								                            <img class="img-responsive rounded-x" src="assets/img/team/logo.png" alt="">
								                        </div>
								                        <div class="col-sm-10">
								                            <blockquote>
								                            	<div class="row">
									                             	<div class="col-sm-2">
										                             	<h2>?????????</h2>
										                            </div>
										                            
									                             	<div class="col-sm-4 col-sm-offset-6">
										                             	  <ul class="list-inline star-vote">
														                      <li><i class="color-green fa fa-star"></i></li>
														                      <li><i class="color-green fa fa-star"></i></li>
														                      <li><i class="color-green fa fa-star"></i></li>
														                      <li><i class="color-green fa fa-star-o"></i></li>
														                      <li><i class="color-green fa fa-star-o"></i></li>
														                 </ul>
										                            </div>                        
									                            </div>
									                            <p>
								                                <p>??????????????? ?????? ??????????????? ???~~?????? ???????????? ?????? ???????????? ???????????? ???????????? ???????????? ???????????????, ?????? ?????????????????????????????? ????????? ????????? ??????????????? ???????????? ????????? ?????? ????????? ??????????????? ????????? ??????????????? ?????????. ?????? ??? ????????????. ?????? ???????????? ?????? ????????? ?????? ??????????????????????????? ???????????? ??????????????? ???????????? ???????????? ??? ??? ????????? ?????? ???????????????</p>
								                               <h6>2021.03.11</h6>
								                            </blockquote> 
								                            
								                            <blockquote>
								                            	<h2>???????????? ??????</h2>
								                            	<p>???????????????! ???????????? ??????????????? :D ?????????????????? ???????????????, ????????? ????????? ?????? ??????????????????!! ???????????? ????????? ????????? ???????????? ???????????? :-)</p>
								                            	<h6>2021.03.20</h6>
								                            </blockquote>
								                        </div>
								                    </div>
								                    <hr>  
								                            
									                 <!--Pegination Centered-->
									                 <div class="c ol-md-6 col-md-offset-4">
									                        <ul class="pagination">
									                            <li><a href="#">&laquo;</a></li>
									                            <li><a href="#">1</a></li>
									                            <li class="active"><a href="#">2</a></li>
									                            <li><a href="#">3</a></li>
									                            <li><a href="#">4</a></li>
									                            <li><a href="#">&raquo;</a></li>
									                       </ul>                                                      
									                  </div>
									                  <!--End Pegination Centered-->      
												  </div><!-- <div class="col-md-8">  -->
								                </div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <!-- 6 -->                           
	                    </div>
	                </div> 
                        
            </div><!-- col-md-8 -->
            <!-- End Left Sidebar -->

            <!-- Right Sidebar -->
        	<div class="col-md-4 magazine-page">
            	<!-- Search Bar -->
                <div class="headline headline-md"><h2>????????????</h2></div> 
                           
 				<div class="tab-pane fade in active" id="home-1">
	                <div class="tag-box tag-box-v1 margin-bottom-40">
	                    <div class="tab-pane fade in active" id="home-1">
                            <form action="order.do" method="post" id="sky-form" class="sky-form">
                                <fieldset>
                                    <section>
                                        <div class="headline"><h2>?????? ?????? ??????</h2></div>
                                        <label class="input">
                                            <i class="icon-append fa fa-calendar"></i>
                                            <input type="text" name="reser_date" id="date">
                                        </label>
                                    </section>
                                 </fieldset>
                                 
                                 <fieldset>
			                        <section>
			                            <div class="headline"><h2> ?????? ?????? ??????</h2></div>
			                            <div class="row">
                                    		<div class="col col-7">
                                            	<select name="reser_time" id="reser_time" class="form-control">
							                        <option></option>
							                        <option>?????? 01:00</option>
							                        <option>?????? 02:00</option>
							                        <option>?????? 03:00</option>
							                        <option>?????? 04:00</option>
							                        <option>?????? 05:00</option>
							                        <option>?????? 06:00</option>
							                        <option>?????? 07:00</option>
							                        <option>?????? 08:00</option>
							                        <option>?????? 09:00</option>
							                        <option>?????? 10:00</option>
							                        <option>?????? 11:00</option>
							                        <option>?????? 12:00</option>
							                        <option>?????? 13:00</option>
							                        <option>?????? 14:00</option>
							                        <option>?????? 15:00</option>
							                        <option>?????? 16:00</option>
							                        <option>?????? 17:00</option>
							                        <option>?????? 18:00</option>
							                        <option>?????? 19:00</option>
							                        <option>?????? 20:00</option>
							                        <option>?????? 21:00</option>
							                        <option>?????? 22:00</option>
							                        <option>?????? 23:00</option>
							                        <option>?????? 24:00</option>
							                    </select>   
                                  			</div>
                                  		</div>
                                  	</section>
			                     </fieldset>
                   
                                 <fieldset>
			                        <section>
			                            <div class="headline"><h2> ?????? ?????? ??????</h2></div>
			                            <div class="row">
                                    		<div class="col col-7">
                                            	<select name="reser_usertime" id="reser_usertime" class="form-control">
							                        <option></option>
							                        <option>1??????</option>
							                        <option>2??????</option>
							                        <option>3??????</option>
							                        <option>4??????</option>
							                        <option>5??????</option>
							                        <option>6??????</option>
							                        <option>7??????</option>
							                        <option>8??????</option>
							                        <option>9??????</option>
							                        <option>10??????</option>
							                    </select>   
                                  			</div>
                                  		</div>
                                  	</section>
			                     </fieldset>
			                     
                                 <fieldset>
                                    <section>
                                        <div class="headline"><h2>?????? ?????? ??????</h2></div>
                                        <div class="row">
                                        	<div class="col col-12">
                                            <table>
                                            	<tr>
                                                	<td width="30%">
                                                		<label class="radio"><input type="radio" name="reser_category" checked value="${cafe.cafe_category1}"><i class="rounded-x"></i>${cafe.cafe_category1}</label>
                                                	</td>
                                                	<td width="70%" align="right">${cafe.cafe_category1Price} / ??????(???)</td>
                                                </tr>
                                                <tr>
                                                	<td width="30%"><label class="radio"><input type="radio" name="reser_category"><i class="rounded-x"></i>${cafe.cafe_category2}</label></td>
                                                	<td width="70%" align="right" >${cafe.cafe_category2Price} / ??????(???)</td>                                          		
                                                </tr>
                                            </table>
                                            </div>
                                        </div>   
                                    </section>
                                </fieldset>
                                
                                <fieldset>
                                    <section>
                                        <div class="headline"><h2>??? ?????? ??????</h2></div>
                                        <div class="row">
                                            <div class="col col-7">
                                            	<select name="reser_person" class="form-control">
							                        <option>1</option>
							                        <option>2</option>
							                        <option>3</option>
							                        <option>4</option>
							                        <option>5</option>
							                        <option>6</option>
							                    </select>    
                                            </div>
                                        </div>   
                                    </section>
                                </fieldset>
                                                        
                                <fieldset>
                                    <section>
                                        <div class="headline"><h2>?????? ?????? ??????</h2></div>
                                       <label class="textarea">
			                                <textarea name="reser_request" rows="3"></textarea>
			                           </label>
			                         </section>
                                </fieldset>
                                <button class="btn-u btn-block btn-u-green" type="submit">????????????</button>
                             </form>
                        </div>	    
                    </div>                
	                    
	                    
	                    
	                    
	                </div>
            </div>
            <!-- End Right Sidebar -->
        </div><!--/row-->        
    </div><!--/container-->		
    <!--=== End Content Part ===-->

    <!--===========================
    
  	   Footer ?????????????????????
  
    =============================-->
    <hr>
    <div id="footer-v2" class="footer-v2">
        <div class="footer">
            <div class="container">
                <div class="row">
                    <!-- About -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <a class="logo" href="homepage.html">
                		<img src="./logoimg/MainLogo.png" alt="Logo" width="180"></a>
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
                            <li><a href="#"><font color="black">About us</font></a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#"><font color="black">????????????</font></a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#"><font color="black">?????????</font></a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#"><font color="black">1:1??????</font></a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#"><font color="black">????????? ??????</font></a><i class="fa fa-angle-right"></i></li>
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
    <!--=======================
    
     				Footer ????????????

	========================--> 
</div><!--/wrapper-->

<!-- JS Global Compulsory -->           
<script type="text/javascript" src="assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="assets/plugins/smoothScroll.js"></script>
<script type="text/javascript" src="assets/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="assets/plugins/sky-forms-pro/skyforms/js/jquery.form.min.js"></script>
<script type="text/javascript" src="assets/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>
<script src="assets/plugins/sky-forms-pro/skyforms/js/jquery.maskedinput.min.js"></script>
<script src="assets/plugins/sky-forms-pro/skyforms/js/jquery-ui.min.js"></script>
<script src="assets/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="assets/js/custom.js"></script>
<!-- JS Page Level -->           
<script type="text/javascript" src="assets/js/app.js"></script>
<script type="text/javascript" src="assets/js/forms/login.js"></script>
<script type="text/javascript" src="assets/js/forms/contact.js"></script>
<script type="text/javascript" src="assets/js/plugins/fancy-box.js"></script>
<script type="text/javascript" src="assets/js/plugins/datepicker.js"></script>

    
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
        FancyBox.initFancybox();        
        LoginForm.initLoginForm();
        ContactForm.initContactForm();
        Datepicker.initDatepicker();
        });
</script>
<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
    <script src="assets/plugins/html5shiv.js"></script>
    <script src="assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</html>	