<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="assets/css/main.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<script>
$(document).ready(function(){
    $(window).scroll(function () {
           if ($(this).scrollTop() > 50) {
               $('#back-to-top').fadeIn();
           } else {
               $('#back-to-top').fadeOut();
           }
       });
       // scroll body to 0px on click
       $('#back-to-top').click(function () {
           $('#back-to-top').tooltip('hide');
           $('body,html').animate({
               scrollTop: 0
           }, 800);
           return false;
       });
       
       $('#back-to-top').tooltip('show');

});
</script>
<style>
@import url(http://fonts.googleapis.com/css?family=Fjalla+One);
@import url(http://fonts.googleapis.com/css?family=Gudea);
section{
	padding: 3rem 0;
}
.footer1{
    background: #fff url("../images/footer/footer-bg.png") repeat scroll left top;
	padding-top: 40px;
	padding-right: 0;
	padding-bottom: 10px;
	padding-left: 0;/*	border-top-width: 4px;
	border-top-style: solid;
	border-top-color: #003;*/
}

.back-to-top {
    cursor: pointer;
    position: fixed;
    bottom: 20px;
    right: 20px;
    display:none;
}


.title-widget {
	color: #898989;
	font-size: 20px;
	font-weight: 300;
	line-height: 1;
	position: relative;
	text-transform: uppercase;
	font-family: 'Fjalla One', sans-serif;
	margin-top: 0;
	margin-right: 0;
	margin-bottom: 25px;
	margin-left: 0;
	padding-left: 28px;
}

.title-widget::before {
    background-color: #ea5644;
    content: "";
    height: 22px;
    left: 0px;
    position: absolute;
    top: -2px;
    width: 5px;
}



.widget_nav_menu ul {
    list-style: outside none none;
    text-align:left;
    padding-left: 0;
}

.widget_archive ul li {
    background-color: rgba(0, 0, 0, 0.3);
    content: "";
    height: 3px;
    left: 0;
    text-align:left;
    position: absolute;
    top: 7px;
    width: 3px;
}


.widget_nav_menu ul li {
    font-size: 13px;
    font-weight: 700;
    line-height: 20px;
	position: relative;
    text-transform: uppercase;
	border-bottom: 1px solid rgba(0, 0, 0, 0.05);
    margin-bottom: 7px;
    text-align:left;
    padding-bottom: 7px;
	width:95%;
}



.title-median {
    color: #636363;
    font-size: 20px;
    line-height: 20px;
    margin: 0 0 15px;
    text-transform: uppercase;
	font-family: 'Fjalla One', sans-serif;
}

.footerp p {font-family: 'Gudea', sans-serif; }


#social:hover {
    			-webkit-transform:scale(1.1); 
-moz-transform:scale(1.1); 
-o-transform:scale(1.1); 
			}
			#social {
				-webkit-transform:scale(0.8);
                /* Browser Variations: */
-moz-transform:scale(0.8);
-o-transform:scale(0.8); 
-webkit-transition-duration: 0.5s; 
-moz-transition-duration: 0.5s;
-o-transition-duration: 0.5s;
			}           
/* 
    Only Needed in Multi-Coloured Variation 
                                               */
			.social-fb:hover {
				color: #3B5998;
			}
			.social-tw:hover {
				color: #4099FF;
			}
			.social-gp:hover {
				color: #d34836;
			}
			.social-em:hover {
				color: #f39c12;
			}
			.nomargin { margin:0px; padding:0px;}





.footer-bottom {
    background-color: #428bca;
    min-height: 30px;
    width: 100%;
}
.copyright {
    color: #fff;
    line-height: 30px;
    min-height: 30px;
    padding: 7px 0;
}
.design {
    color: #fff;
    line-height: 30px;
    min-height: 30px;
    padding: 7px 0;
    text-align: right;
}
.design a {
    color: #fff;
}
.sponsor{
	background-color: #fcfcfc;
	border-top: 1px solid rgba(238, 238, 238, 0.3);
}
.sponsor img{
	height: 60px;
	margin: 0 5px;
	border-radius: 5px
}

.sponsor .list-inline{
	margin-bottom: 0;
}

.sponsor .carousel{
	position: relative;
}

.sponsor .control-left .fa{
	background-color: #f4f4f4; 
	padding: 6px 10px; 
	border-radius: 4px;
	color: #999;
	position: absolute; 
	top: 15px;
	left: 0;
}

.sponsor .control-left .fa:hover,
.sponsor .control-right .fa:hover{
	background-color: #63b5b2;
	color: #fff;
}
.sponsor .control-right .fa{
	background-color: #f4f4f4; 
	padding: 6px 10px; 
	border-radius: 4px;
	color: #999;
	position: absolute; 
	top: 15px;
	right: 0;
}
</style>
<body>
<section class="sponsor">
			<div class="container">			
				<div id="sponsor" class="carousel slide" data-ride="carousel">
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<div class="row">	
								<div class="col-sm-12">
									<ul class="list-inline text-center">
										<li><img class="" src="C:\Users\JB\workspace\shoppingFrontEnd\src\main\resources\logo\eb436d4929ba8777ab7c2ae71c22a80b-apple-inc-vector-logo.jpg" /></li>
										<li><img class="" src="C:\Users\JB\workspace\shoppingFrontEnd\src\main\resources\logo\FreeVector-Samsung.jpg" /></li>
										<li><img class="" src="C:\Users\JB\workspace\shoppingFrontEnd\src\main\resources\logo\motorola-logo.jpg" /></li>
										<li><img class="" src="images/4.png" /></li>
										<li><img class="" src="images/5.png" /></li>
										<li><img class="" src="images/5.png" /></li>
										
																			</ul>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="row">	
								<div class="col-sm-12">
									<ul class="list-inline text-center">
										<li><img class="" src="images/1.gif" /></li>
										<li><img class="" src="images/2.png" /></li>
										<li><img class="" src="images/3.png" /></li>
										<li><img class="" src="images/4.png" /></li>
										<li><img class="" src="images/5.png" /></li>
										<li><img class="" src="images/5.png" /></li>							
										
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- Controls -->
				<a class="control-left" href="#sponsor" role="button" data-slide="prev"><i class="fa fa-angle-left"></i></a>
				<a class="control-right" href="#sponsor" role="button" data-slide="next"><i class="fa fa-angle-right"></i></a>
				</div>			
			</div>
		</section>	
<br><br><br><br>
<footer class="footer1" align="bottom">
<div class="container">

<div class="row"><!-- row -->
            
                <div class="col-lg-3 col-md-3"><!-- widgets column left -->
                <ul class="list-unstyled clear-margins"><!-- widgets -->
                        
                        	<li class="widget-container widget_nav_menu"><!-- widgets list -->
                    
                                <h1 class="title-widget">Useful links</h1>
                                
                                <ul>
                                	<li><a  href="about_us"><i class="fa fa-angle-double-right"></i> About Us</a></li>
                                    <li><a  href="contact_us"><i class="fa fa-angle-double-right"></i> Contact Us</a></li>
                                    <li><a  href="#"><i class="fa fa-angle-double-right"></i> Success Stories</a></li>
                                    <li><a  href="#"><i class="fa fa-angle-double-right"></i> PG Courses</a></li>
                                    </ul>
                    
							</li>
                            
                        </ul>
                         
                      
                </div><!-- widgets column left end -->
                
                
                
                <div class="col-lg-3 col-md-3"><!-- widgets column left -->
            
                <ul class="list-unstyled clear-margins"><!-- widgets -->
                        
                        	<li class="widget-container widget_nav_menu"><!-- widgets list -->
                    
                                <h1 class="title-widget">Useful links</h1>
                                
                                <ul>
 									<li><a  href="#"><i class="fa fa-angle-double-right"></i>  Test Series Schedule</a></li>
                                    <li><a  href="#"><i class="fa fa-angle-double-right"></i>  Postal Coaching</a></li>
                                    <li><a  href="#"><i class="fa fa-angle-double-right"></i>  PG Dr. Bhatia Books</a></li>
                                    <li><a  href="#"><i class="fa fa-angle-double-right"></i>  UG Courses</a></li>
                                    
                                </ul>
                    
							</li>
                            
                        </ul>
                         
                      
                </div><!-- widgets column left end -->
                
                
                
                <div class="col-lg-3 col-md-3"><!-- widgets column left -->
            
                <ul class="list-unstyled clear-margins"><!-- widgets -->
                        
                        	<li class="widget-container widget_nav_menu"><!-- widgets list -->
                    
                                <h1 class="title-widget">Useful links</h1>
                                
                                <ul>


                <li><a href="#"><i class="fa fa-angle-double-right"></i> Enquiry Form</a></li>
 				<li><a href="#"><i class="fa fa-angle-double-right"></i> Online Test Series</a></li>
				<li><a href="#"><i class="fa fa-angle-double-right"></i> Grand Tests Series</a></li>
				<li><a href="#"><i class="fa fa-angle-double-right"></i> Subject Wise Test Series</a></li>
				

                                </ul>
                    
							</li>
                            
                        </ul>
                         
                      
                </div><!-- widgets column left end -->
                
                
                <div class="col-lg-3 col-md-3"><!-- widgets column center -->
                
                   
                    
                        <ul class="list-unstyled clear-margins"><!-- widgets -->
                        
                        	<li class="widget-container widget_recent_news"><!-- widgets list -->
                    
                                <h1 class="title-widget">Contact Detail </h1>
                                
                                <div class="footerp"> 
                                
                                <h2 class="title-median">SuggestionCART Pvt Ltd.</h2>
                                <p><b>Email id:</b> <a href="mailto:jb20594@gmail.com">jb20594@gmail.com</a></p>
    <p><b>Corp Office / Postal Address:</b></p>
    <p>No:13, Menakshi Nagar, 3rd Street</p>
    <p>Nesapakkam, Chennai-600078<p>
    <p><b>Phone Numbers : </b>9789094744, </p>
    <p> 044-27568832, 9868387223</p>
                                </div>
                                
                                <div class="social-icons">
                                
                                	<ul class="nomargin">
               
                                    
                                    </ul>
                                </div>
                    		</li>
                          </ul>
                       </div>
                       <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Click to return on the top page" data-toggle="tooltip" data-placement="left"><span class="glyphicon glyphicon-chevron-up"></span></a>
                </div>
</div>
</footer>
<!--header-->
</body>
</html>