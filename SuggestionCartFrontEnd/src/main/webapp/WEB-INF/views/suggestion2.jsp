<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Birthday_Suggestion</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="css/font-awesome.min.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
		<style>
		 @import url(https://fonts.googleapis.com/css?family=Yantramanav:400,100,700,500,900,300);
@import url(https://fonts.googleapis.com/css?family=Black+Ops+One&subset=latin,latin-ext);
@import "compass/css3";
.carousel .carousel-indicators li .fa{
	background-color: #f6f6f6;
	padding: 2px 5px; 
	border-radius: 3px; 
	color: #999;
}

.carousel-indicators {
	margin-left: 0;
	right: 0;
	left: auto;
	top: -70px;
	width: auto;
}

.carousel-indicators li.active{
	border: 1px solid ;
}

.carousel-indicators li.active .fa{
	background-color: #1ac4e2;
	color: #fff;
}

.carousel-indicators li{
	border: 1px solid ;
	display: inline;
	margin: 0;
  	text-indent: 0;
}
/* Carousel Styles */
.carousel-indicators .active {
    background-color: #2980b9;
}

.carousel-inner img {
    width: 100%;
    max-height: 180px;
}

.carousel-control {
    width: 0;
}

.carousel-control.left,
.carousel-control.right {
	opacity: 1;
	filter: alpha(opacity=100);
	background-image: none;
	background-repeat: no-repeat;
	text-shadow: none;
}


.carousel-control .glyphicon-chevron-left, 
.carousel-control .glyphicon-chevron-right, 
.carousel-control .icon-prev, 
.carousel-control .icon-next {
	position: absolute;
	top: 45%;
	z-index: 5;
	display: inline-block;
}

.carousel-control .glyphicon-chevron-left,
.carousel-control .icon-prev {
	left: 0;
}

.carousel-control .glyphicon-chevron-right,
.carousel-control .icon-next {
	right: 0;
}



.carousel-control.left span:hover,
.carousel-control.right span:hover {
	opacity: .7;
	filter: alpha(opacity=70);
}

.emarket-adds{
	background: url(http://www.solidbackgrounds.com/images/2560x1440/2560x1440-white-solid-color-background.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}

.single-add{
	position: relative;
	padding: 20px 30px;
	margin-bottom: 20px;
	border-radius: 5px;
	height: 150px;
}
.header-text {
    position: absolute;
    top: 20%;
    left: 1.8%;
    right: auto;
    width: 96.66666666666666%;
    color: #fff;
}

.header-text h2 {
    font-size: 40px;
}

.header-text h2 span {
    background-color: #2980b9;
	padding: 10px;
}

.header-text h3 span {
	background-color: #000;
	padding: 15px;
}

.btn-min-block {
    min-width: 170px;
    line-height: 26px;
}

.btn-theme {
    color: #fff;
    background-color: transparent;
    border: 2px solid #fff;
    margin-right: 15px;
}

.btn-theme:hover {
    color: #000;
    background-color: #fff;
    border-color: #fff;
}
@import url(http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,700,400italic);

font-family: 'Open Sans', sans-serif;

html {
  font-family: 'Open Sans', sans-serif;
}

body {
  min-height: 3000px;
  padding-top: 23px;
  font-family: 'Open Sans', sans-serif;
}section{
	padding: 3rem 0;
}

.t-color-1{ color: #fff; }
.b-color-1{ background-color: #fff; }
.t-color-2{ color: #fff; }
.b-color-2{ background-color: #fff; }
.t-color-3{ color: #fff; }
.b-color-3{ background-color: #fff; }
.t-color-4{ color: #fff; }
.b-color-4{ background-color: #fff; }
.t-color-5{ color: #fff; }
.b-color-5{ background-color: #fff; }
.t-color-6{ color: #fff; }
.b-color-6{ background-color: #fff; }

.heading-border{
	width: 50px;
	height: 1px;
	opacity: 0.5;
	margin-bottom: 30px;
}
section.all-pro{
	padding: 1em 0;
}
.btn.show-more .fa{
	margin-left: 10px;
}
	
.btn.show-more{
	border-radius: 0; 
	border: none;
	box-shadow: none; 
	padding: 14px 30px;
	text-transform: uppercase;
	margin: 20px 0; 
	font-weight: 600; 
	font-size: 15px; 
	background-color: #1ac4e2;
	border-bottom: 2px solid #219FD7;
}

.btn.show-more:hover{
	background-color: #8ad2ce;
	border-bottom-color: #63b5b2;
}

.product-title .btn.see-more .fa{
	font-size: 100%;
}
.sidebar .progress{
	height: 8px;
	background-color: #ebebeb;
}

.sidebar .well a.btn{
  -moz-border-bottom-colors: none;
  -moz-border-left-colors: none;
  -moz-border-right-colors: none;
  -moz-border-top-colors: none;
  background-color: #8ec63f;
  border-color: -moz-use-text-color -moz-use-text-color #8aaa63;
  border-image: none;
  border-style: none none solid;
  border-width: 0 0 2px;
  color: #fff;
  font-size: 12px;
  font-weight: 600;
  margin-top: 10px;
}

.sidebar .well p{
	color: #556273;
	font-size: 14px;
	font-weight: 400; 
	margin-bottom: 20px;
	text-transform: capitalize;
}

.sidebar .well p span{
	color: #8ec63f;
}

.sidebar .well small{
	color: #556273;
	font-size: 13px; 
	margin-bottom: 10px; 
	word-spacing: 2px;
	display: block;
}

.sidebar .wedget .media-list{
	margin-bottom: 0;
}
.sidebar .wedget .media{
	margin-bottom: 0;
}

.sidebar .well strong{
	color: #556273;
	font-size: 17px; 
	font-weight: 400;
	padding-bottom: 10px;
	display: block; 
	margin-top: 3px;
}

.sidebar .single-add .img-add {
  	padding: 15px 20px;
	top: 20px;
}

.sidebar .single-add{
	padding: 15px; 20px;
	margin-bottom: 20px;
}

.sidebar .well .heading-border{
	margin-bottom: 25px;
}

.sidebar .check-box{
	list-style: none; 
	padding: 0;
}

.sidebar .check-box li .btn.active{
	background-color: #7ac7c2;
	color: #fff;
	
}

.sidebar .check-box li .btn-group{
	width: 100%;
}

.sidebar .check-box li{
	margin-bottom: 8px;
}

.sidebar .btn-group > .btn:first-child:not(:last-child):not(.dropdown-toggle) {
  border-bottom-right-radius: 2px;
  border-top-right-radius: 2px;
}

.sidebar .check-box li .btn{
	padding: 3px 5px;
	background-color: #ebebeb;
	color: transparent;
	border: transparent;
	font-size: 10px; 
	margin-right: 8px; 
	box-shadow: none; 
	border-radius: 2px;
}

.sidebar .footer-top .category {
	border-bottom: 1px solid rgba(105, 118, 135, 0.1);
	margin-bottom: 0;
}

.sidebar .footer-top .media-left img {
  background-color: #fff;
  border: 1px solid rgba(105, 118, 135, 0.1);
  border-radius: 3px;
  height: 65px;
  padding: 5px;
  width: 70px;
}
.sidebar .well.wedget{
	background-color: #fcfcfc;
	border-color: transparent;
	padding: 20px;
	box-shadow: none;
	border-radius: 3px;
}
/* desktop */
.desktop-bar h3 .fa{
	color: #f0f0f0;
	font-size: 12px;
	border: 1px solid #f0f0f0; 
	padding: 5px 6px; 
	border-radius: 50%;
}
.desktop-bar h3{
	font-size: 18px; 
	font-weight: 400; 
}
.desktop-bar{
	background-color: #1ac4e2; 
	color: #fff;
	height: 62px;
	padding: 0;
}

.desktop-bar .breadcrumb{
	background: transparent;
	border: transparent; 
	line-height: 4.3;
	padding: 0; 
	margin: 0;
}

.desktop-bar .breadcrumb > li a{
	color: #F0f0f0;
	font-size: 14px;
	text-decoration: none;
	font-weight: 400;
}

.desktop-bar .breadcrumb > li.active a{
	color: #fff;
}

.desktop-bar .breadcrumb > li + li::before {
	color: #fff;
	content: "\f0da";
	font-family:'FontAwesome';
	padding: 0 5px;
}

#desktop {
	padding-bottom: 10px;
	padding-top: 10px;
}

#desktop .navbar-nav > li > a {
	color: #ccc; 
	line-height: 2.4;
	padding-bottom: 0;
	padding-top: 0;
}

#desktop .navbar-nav > li.active > a {
	background-color: transparent;
	color: #fff;
}

#desktop .navbar-form{
	margin-bottom: 0;
	margin-top: 0;
}

.selection{
	position: relative;
	display: inline-block;
	color: #fff; 
	font-size: 11px; 
	text-transform: uppercase;
	font-weight: 400; 
	margin-right: 10px
}

.desk-nav{
	background-color: #556273;
	border: transparent; 
	border-radius: 4px; 
	margin-bottom: 30px; 
	box-shadow: none
}

#desktop .form-control{
	width: 130px;
	color: #ccc; 
	margin: 0 5px;
	background: #697687;
	box-shadow: none;
	border-radius: 50px; 
	border: transparent;
}

/* desktop sidebar */

.sidebar .progress{
	height: 8px;
	background-color: #ebebeb;
}

.sidebar .well a.btn{
  -moz-border-bottom-colors: none;
  -moz-border-left-colors: none;
  -moz-border-right-colors: none;
  -moz-border-top-colors: none;
  background-color: #8ec63f;
  border-color: -moz-use-text-color -moz-use-text-color #8aaa63;
  border-image: none;
  border-style: none none solid;
  border-width: 0 0 2px;
  color: #fff;
  font-size: 12px;
  font-weight: 600;
  margin-top: 10px;
}

.sidebar .well p{
	color: #556273;
	font-size: 14px;
	font-weight: 400; 
	margin-bottom: 20px;
	text-transform: capitalize;
}

.sidebar .well p span{
	color: #8ec63f;
}

.sidebar .well small{
	color: #556273;
	font-size: 13px; 
	margin-bottom: 10px; 
	word-spacing: 2px;
	display: block;
}

.sidebar .wedget .media-list{
	margin-bottom: 0;
}
.sidebar .wedget .media{
	margin-bottom: 0;
}

.sidebar .well strong{
	color: #556273;
	font-size: 17px; 
	font-weight: 400;
	padding-bottom: 10px;
	display: block; 
	margin-top: 3px;
}

.sidebar .single-add .img-add {
  	padding: 15px 20px;
	top: 20px;
}

.sidebar .single-add{
	padding: 15px; 20px;
	margin-bottom: 20px;
}

.sidebar .well .heading-border{
	margin-bottom: 25px;
}

.sidebar .check-box{
	list-style: none; 
	padding: 0;
}

.sidebar .check-box li .btn.active{
	background-color: #7ac7c2;
	color: #fff;
	
}

.sidebar .check-box li .btn-group{
	width: 100%;
}

.sidebar .check-box li{
	margin-bottom: 8px;
}

.sidebar .btn-group > .btn:first-child:not(:last-child):not(.dropdown-toggle) {
  border-bottom-right-radius: 2px;
  border-top-right-radius: 2px;
}

.sidebar .check-box li .btn{
	padding: 3px 5px;
	background-color: #ebebeb;
	color: transparent;
	border: transparent;
	font-size: 10px; 
	margin-right: 8px; 
	box-shadow: none; 
	border-radius: 2px;
}

.sidebar .footer-top .category {
	border-bottom: 1px solid rgba(105, 118, 135, 0.1);
	margin-bottom: 0;
}

.sidebar .footer-top .media-left img {
  background-color: #fff;
  border: 1px solid rgba(105, 118, 135, 0.1);
  border-radius: 3px;
  height: 65px;
  padding: 5px;
  width: 70px;
}
.sidebar .well.wedget{
	background-color: #fcfcfc;
	border-color: transparent;
	padding: 20px;
	box-shadow: none;
	border-radius: 3px;
}
/* slide desk */
#desk-slide{
	
    background: -moz-linear-gradient(45deg, rgba(19,70,128,1) 0%, rgba(32,84,147,1) 9%, rgba(57,111,183,1) 26%, rgba(107,164,255,1) 59%); /* ff3.6+ */
    background: -webkit-gradient(linear, left bottom, right top, color-stop(0%, rgba(19,70,128,1)), color-stop(9%, rgba(32,84,147,1)), color-stop(26%, rgba(57,111,183,1)), color-stop(59%, rgba(107,164,255,1))); /* safari4+,chrome */
    background: -webkit-linear-gradient(45deg, rgba(19,70,128,1) 0%, rgba(32,84,147,1) 9%, rgba(57,111,183,1) 26%, rgba(107,164,255,1) 59%); /* safari5.1+,chrome10+ */
    background: -o-linear-gradient(45deg, rgba(19,70,128,1) 0%, rgba(32,84,147,1) 9%, rgba(57,111,183,1) 26%, rgba(107,164,255,1) 59%); /* opera 11.10+ */
    background: -ms-linear-gradient(45deg, rgba(19,70,128,1) 0%, rgba(32,84,147,1) 9%, rgba(57,111,183,1) 26%, rgba(107,164,255,1) 59%); /* ie10+ */
    background: linear-gradient(45deg, rgba(19,70,128,1) 0%, rgba(32,84,147,1) 9%, rgba(57,111,183,1) 26%, rgba(107,164,255,1) 59%); /* w3c */
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#6BA4FF', endColorstr='#134680',GradientType=1 ); /* ie6-9 */
}

#desk-slide{
	padding: 20px 40px;
	border-radius: 4px;
}

#desk-slide .btn {
	-moz-border-bottom-colors: none;
	-moz-border-left-colors: none;
	-moz-border-right-colors: none;
	-moz-border-top-colors: none;
	background-color: #8ad2ce;
	border-color: -moz-use-text-color -moz-use-text-color #63b5b2;
	border-image: none;
	border-style: none none solid;
	border-width: 0 0 2px;
	color: #fff;
	font-weight: 600;
}

#desk-slide h2{
	color: #fff;
	font-weight: 100;
	margin-bottom: 20px;
}

#desk-slide .carousel-control.left{
	border-top-right-radius: 3px;
	border-bottom-right-radius: 3px;
}

#desk-slide .carousel-control.right{
	border-top-left-radius: 3px;
	border-bottom-left-radius: 3px;
}

#desk-slide .carousel-control.left,
#desk-slide .carousel-control.right {
	background-image: none;
}
	
#desk-slide .carousel-control:hover.left,
#desk-slide .carousel-control:hover.right {
	background-color: #556273;
	color: #fff;
}

#desk-slide .carousel-control {
	background-color: #fff;
	height: 30px;
	opacity: 1;
	padding-left: 5px;
	padding-right: 5px;
	padding-top: 2px;
	text-shadow: none;
	top: 45%;
	width: 25px;
	color: #999;
}

.media.desk-media{
	margin-bottom: 30px;
}

.media.desk-media .list-inline li:first-child{
	margin-right: 40px;
}

.media.desk-media .btn{
	margin-top: 0;
}

.media.desk-media p{
	border-bottom: 1px solid rgba(238, 238, 238, 0.5);
	padding-bottom: 15px; 
	font-weight: 300;   
}

.media.desk-media strong{
	line-height: 2.1;
}

.media.desk-media h3{
	border-bottom: none; 
	margin-bottom: 0px; 
	color: #556273;
}

.media.desk-media .btn:hover {
  -moz-border-bottom-colors: none;
  -moz-border-left-colors: none;
  -moz-border-right-colors: none;
  -moz-border-top-colors: none;
  background-color: #8ad2ce;
  border-color: -moz-use-text-color -moz-use-text-color #63b5b2;
  border-image: none;
  border-style: none none solid;
  border-width: 0 0 2px;
  color: #fff;
  font-weight: 600;
}

.media.desk-media .media-left{
	position: relative;
	margin: 0 auto;
}

.thumb-overlay{
	margin-right: 20px;
}

.thumb-overlay .fa{
	background-color: #1ac4e2;
	position: absolute; 
	top: 42%;
	color: #fff;
	padding: 8px 8px; 
	border-radius: 50%;
	opacity: 0;
}

.desk-media .list-inline li{
	margin-right: 10px;
}

.desk-media span .fa{
	margin-right: 4px;
}

.desk-media:hover .wish{
	color: #f14723;
}

.media.desk-media:hover h3{
	color: #63b5b2;
}

.media.desk-media:hover .thumb-overlay .fa{
	opacity: 1;
}
.single-add h4 {
	color: #0B82F0;
	font-size: 20px;
	font-weight: 600;
	max-width: 140px;
}

.single-add h4 span{
	font-size: 30px;
	font-weight: 100;
}

.single-add .btn{
	border: 0; 
	background-color: #0B82F0; 
	color: #fff; 
	font-weight: 600;
	border-bottom: 2px solid  #63B5B2;;
}

.single-add .img-add{
	padding: 15px 20px;
	position: absolute; 
	right: 0;
	bottom: 0;
}

.single-add .img-add img{
	max-width: 140px;
	margin-bottom: 12px;
}
.thumbnail {
    position: relative;
    padding: 0px;
    margin-bottom: 20px;
}

.thumbnail img {
    width: 100%;
}
.featured-product small a.btn{
	background-color: #0B82F0;
	color: #fff; 
	display: block;
	font-size: 11px; 
	padding: 2px 8px;
	border-radius: 3px; 
	border: 1px solid #eee; 
	margin-left: 30px;
}
.featured-product .thumbnail{
	padding: 15px;
	border-color: rgba(238, 238, 238, 0.8);
	border-radius: 5px;
}

.featured-product .thumbnail img{
	margin-bottom: 15px;
}

.featured-product .thumbnail .caption{
	padding: 0;
}
.category{
	font-size: 15px; 
	text-transform: capitalize; 
	color: #999;
}
.category .fa{
	color: #fcc686;
	font-size: 11px;
}

.featured-product .thumbnail h3 {
	color: #697687;
	font-size: 17px;
	font-weight: 300;
	margin-top: 8px;
	border-bottom: 1px solid rgba(238, 238, 238, 0.8);
	padding-bottom: 10px;
}

.featured-product .thumbnail .btn{
	margin-top: 10px; 
	border: 0; 
	border-bottom: 2px solid #8AAA63;
	color: #fff; 
	background-color: #8ec63f; 
	font-weight: 600; 
	font-size: 13px;
}
.featured-product small a.btn .fa{
	margin-left: 5px;
	font-size: 7px;
}

.featured-product .thumbnail span{
	color: #aaa; 
	line-height: 4; 
	font-size: 12px;
}
.featured-product .thumbnail strong{
	color: #1ac4e2;
	font-weight: 600; 
	font-size: 22px;
}

.featured-product .thumbnail:hover img{
	opacity: 0.6;
}

.featured-product .thumbnail:hover span{
	color: #F14723;
}
.featured-product .thumbnail:hover h3{
	color: #8ad2ce;
}

.featured-product .thumbnail .btn:hover{
	background-color: #8ad2ce;
	border-color: #63b5b2;
}

.featured-product .thumbnail:hover .service-link .fa{
	opacity: 1;
}

.service-link{
	position: relative;
	display: block;
}

.service-link .list-inline{
	position: absolute;
	display: inline-block;
	margin-left: -30px;
	top: 60px;  
	left: auto;
}
.service-link .fa{
	width: 30px; 
	background-color: #1ac4e2; 
	height: 30px; 
	border-radius: 50%; 
	color: #fff; 
	opacity: 0;
	text-align: center;
	padding: 8px;
}
.section{
	padding: 3rem 0;
}
.best-selling{
	padding-bottom: 3.5rem;
}

.best-selling h1 small{
	margin-left: 30px;
}

.best-selling small a.btn .fa{
	margin-left: -1px;
	font-size: 12px;
}

.best-selling small a.btn{
	background-color: #fff;
	color: #000; 
	display: block;
	font-size: 13px; 
	padding: 4px 8px;
	border-radius: 3px; 
	border: 1px solid #eee; 
	margin-left: -30px;
}

.best-selling .media-left{
	padding-right: 20px;
}

.best-selling .media{
	padding: 15px;
	border: 1px solid rgba(238, 238, 238, 0.8);
	border-radius: 5px;
}

.best-selling .media .caption{
	padding: 0;
}
.best-selling .media h3 {
  color: #fff;
  font-size: 17px;
  font-weight: 300;
  margin-top: 8px;
  border-bottom: 1px solid rgba(238, 238, 238, 0.8);
  padding-bottom: 10px;
}

.best-selling .media .btn{
	margin-top: 10px; 
	border: 0; 
	border-bottom: 2px solid #0B82F0;
	color: #fff; 
	background-color: #0B82F0; 
	font-weight: 600; 
	font-size: 13px;
}

.best-selling .media .btn:hover{
	background-color: #165ea1;
	border-color: #165ea1;
}

.best-selling .media span{
	color: #aaa; 
	line-height: 4; 
	font-size: 12px;
}

.best-selling .media strong{
	color: #fff;
	font-weight: 600; 
	font-size: 22px;
}

.best-selling .carousel-indicators li.active .fa{
	background-color: #f47820;
	color: #fff;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
		<section class="featured-product recommented-product">
			<div class="container">
				<div class="row">
					<div class="col-sm-3">
						<div class="sidebar">
							<div class="well wedget footer-top">
							 	<strong>Special Offers</strong>
								<div class="heading-border b-color-6"></div>
								<ul class="media-list">
									<li class="media">
										<div class="media-left"><img src="images/featured-1.jpg" alt=""></div>
										<div class="media-body">
											<p class="media-heading">Lorem ipsum dolor</p>
											<div class="category">
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i> 
												<i class="fa fa-star"></i> 
												<i class="fa fa-star"></i> 
												<i class="fa fa-star-o"></i>
											</div>
											<strong>$899.99</strong>
										</div>
									</li>
									<li class="media">
										<div class="media-left"><img src="images/featured-1.jpg" alt=""></div>
										<div class="media-body">
											<p class="media-heading">Lorem ipsum dolor</p>
											<div class="category">
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i> 
												<i class="fa fa-star"></i> 
												<i class="fa fa-star"></i> 
												<i class="fa fa-star-o"></i>
											</div>
											<strong>$899.99</strong>
										</div>
									</li>
									<li class="media">
										<div class="media-left"><img src="images/featured-1.jpg" alt=""></div>
										<div class="media-body">
											<p class="media-heading">Lorem ipsum dolor</p>
											<div class="category">
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i> 
												<i class="fa fa-star"></i> 
												<i class="fa fa-star"></i> 
												<i class="fa fa-star-o"></i>
											</div>
											<strong>$899.99</strong>
										</div>
									</li>
									
								</ul>
							</div>
							<div class="emarket-adds">
							<div class="single-add">
								<h4>Get <span>50%</span> Discount</h4>
								<a href="#" class="btn btn-default" role="button">Learn More</a>
								<span class="img-add"><img class="img-responsive" src="images/red-tablet.png" width="120px" alt="" /></span>
							</div>
							</div>
							<div class="well wedget footer-top">
							 	<strong>Featured Products</strong>
								<div class="heading-border b-color-6"></div>
								<ul class="media-list">
									<li class="media">
										<div class="media-left"><img src="images/featured-1.jpg" alt=""></div>
										<div class="media-body">
											<p class="media-heading">Lorem ipsum dolor</p>
											<div class="category">
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i> 
												<i class="fa fa-star"></i> 
												<i class="fa fa-star"></i> 
												<i class="fa fa-star-o"></i>
											</div>
											<strong>$899.99</strong>
										</div>
									</li>
									<li class="media">
										<div class="media-left"><img src="images/featured-1.jpg" alt=""></div>
										<div class="media-body">
											<p class="media-heading">Lorem ipsum dolor</p>
											<div class="category">
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i> 
												<i class="fa fa-star"></i> 
												<i class="fa fa-star"></i> 
												<i class="fa fa-star-o"></i>
											</div>
											<strong>$899.99</strong>
										</div>
									</li>
								</ul>
							</div>
						</div> <!-- sidebar -->
					</div>
				<div class="col-sm-9">
						<div class="row">
							<div class="col-sm-12">
								<div id="desk-slide" class="carousel slide" data-ride="carousel">
									<div class="carousel-inner" role="listbox">
										<div class="item active">
											<div class="row">
												<div class="col-sm-8">
													<h2>Harry up! E-market is the Best and Perfect Solution for Online Store</h2>
													<a class="btn btn-default" href="#">Buy Now</a>
												</div>
												<div class="col-sm-4">
													<img class="img-responsive" src="images/desk-slide.png" alt="" />
												</div>
											</div>
										</div>
										<div class="item">
											<div class="row">
												<div class="col-sm-8">
													<h2>Harry up! E-market is the Best and Perfect Solution for Online Store</h2>
													<a class="btn btn-default" href="#">Buy Now</a>
												</div>
												<div class="col-sm-4">
													<img class="img-responsive" src="images/desk-slide.png" alt="" />
												</div>
											</div>
										</div>
									</div>
									<a class="left carousel-control" href="#desk-slide" role="button" data-slide="prev"><i class="fa fa-angle-left"></i></a>
									<a class="right carousel-control" href="#desk-slide" role="button" data-slide="next"><i class="fa fa-angle-right"></i></a>
								</div>
							</div>
						</div> <!-- slide -->
						<br><br><br>
						<!-- slide desktop -->
						<div class="slide-desktop">
							<div class="row">
								<div class="col-sm-12">
									<div class="row">
										<div class="col-sm-12">
											<h1><span class="t-color-6">Desktops</span></h1>
											<div class="heading-border b-color-6"></div>
										</div>
									</div> <!-- section title -->
									<div class="row hidden-xs">
										<div class="col-sm-12">
										</div>
									</div>	
								</div>
							</div>
							<br><br>
							<div class="best-selling">
								<div class="row">
									<div class="col-sm-12">
										<div class="media desk-media">
											<div class="media-left">
												<img src="images/e-add-1.jpg" alt="">
												<div class="thumb-overlay text-center"><i class="fa fa-eye"></i></div>
											</div>
											<div class="media-body">
												<div class="category"> category
													<div class="pull-right">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-o"></i>
													</div>
												</div>
												<h3>Lorem ipsum dolor sit amet dolorem molestie</h3>
												<p>Lorem ipsum dolor sit amet dolorem molestie assentior ei, utquo eros posse verterem. Cum eu error congue saperet treer eam exerci utquo eros posse verterem error</p>

												<div class="list-inline">
													<li><strong>$899.00</strong></li>
													<li><a href="#" class="btn btn-default" role="button">Add to Cart</a></li>
																			</div>
											</div>
										</div>
										<br><br><br>
										<div class="media desk-media">
											<div class="media-left">
												<img src="images/e-add-1.jpg" alt="">
												<div class="thumb-overlay text-center"><i class="fa fa-eye"></i></div>
											</div>
											<div class="media-body">
												<div class="category"> category
													<div class="pull-right">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-o"></i>
													</div>
												</div>
												<h3>Lorem ipsum dolor sit amet dolorem molestie</h3>
												<p>Lorem ipsum dolor sit amet dolorem molestie assentior ei, utquo eros posse verterem. Cum eu error congue saperet treer eam exerci utquo eros posse verterem error</p>

												<div class="list-inline">
													<li><strong>$899.00</strong></li>
													<li><a href="#" class="btn btn-default" role="button">Add to Cart</a></li>
													</div>
											</div>
										</div>
										<br><br><br>
										<div class="media desk-media">
											<div class="media-left">
												<img src="images/e-add-1.jpg" alt="">
												<div class="thumb-overlay text-center"><i class="fa fa-eye"></i></div>
											</div>
											<div class="media-body">
												<div class="category"> category
													<div class="pull-right">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-o"></i>
													</div>
												</div>
												<h3>Lorem ipsum dolor sit amet dolorem molestie</h3>
												<p>Lorem ipsum dolor sit amet dolorem molestie assentior ei, utquo eros posse verterem. Cum eu error congue saperet treer eam exerci utquo eros posse verterem error</p>

												<div class="list-inline">
													<li><strong>$899.00</strong></li>
													<li><a href="#" class="btn btn-default" role="button">Add to Cart</a></li>
													</div>
											</div>
										</div>
										<br><br><br>
										<div class="media desk-media">
											<div class="media-left">
												<img src="images/e-add-1.jpg" alt="">
												<div class="thumb-overlay text-center"><i class="fa fa-eye"></i></div>
											</div>
											<div class="media-body">
												<div class="category"> category
													<div class="pull-right">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-o"></i>
													</div>
												</div>
												<h3>Lorem ipsum dolor sit amet dolorem molestie</h3>
												<p>Lorem ipsum dolor sit amet dolorem molestie assentior ei, utquo eros posse verterem. Cum eu error congue saperet treer eam exerci utquo eros posse verterem error</p>

												<div class="list-inline">
													<li><strong>$899.00</strong></li>
													<li><a href="#" class="btn btn-default" role="button">Add to Cart</a></li>
													</div>
											</div>
										</div>
										<br><br><br>
										<div class="media desk-media">
											<div class="media-left">
												<img src="images/e-add-1.jpg" alt="">
												<div class="thumb-overlay text-center"><i class="fa fa-eye"></i></div>
											</div>
											<div class="media-body">
												<div class="category"> category
													<div class="pull-right">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-o"></i>
													</div>
												</div>
												<h3>Lorem ipsum dolor sit amet dolorem molestie</h3>
												<p>Lorem ipsum dolor sit amet dolorem molestie assentior ei, utquo eros posse verterem. Cum eu error congue saperet treer eam exerci utquo eros posse verterem error</p>

												<div class="list-inline">
													<li><strong>$899.00</strong></li>
													<li><a href="#" class="btn btn-default" role="button">Add to Cart</a></li>
												</div>
											</div>
										</div>
										<br><br><br>
										<div class="media desk-media">
											<div class="media-left">
												<img src="images/e-add-1.jpg" alt="">
												<div class="thumb-overlay text-center"><i class="fa fa-eye"></i></div>
											</div>
											<div class="media-body">
												<div class="category"> category
													<div class="pull-right">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-o"></i>
													</div>
												</div>
												<h3>Lorem ipsum dolor sit amet dolorem molestie</h3>
												<p>Lorem ipsum dolor sit amet dolorem molestie assentior ei, utquo eros posse verterem. Cum eu error congue saperet treer eam exerci utquo eros posse verterem error</p>

												<div class="list-inline">
													<li><strong>$899.00</strong></li>
													<li><a href="#" class="btn btn-default" role="button">Add to Cart</a></li>
												</div>
											</div>
										</div>
									</div>
									
								</div>
							</div>
						</div> <!-- slide desktop -->
						</div><!--div 9 -->
				</div>
			</div>
		</section>
		<br>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>