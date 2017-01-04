<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Appliance_Products</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="css/font-awesome.min.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
		<link href="css/blog-single.css" rel="stylesheet">
		<link href="css/responsive.css" rel="stylesheet">
		<script src="js/jquery.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="js/custom.js"></script>
        <script>
        $(document).ready(function() {
            $('#myCarousel').carousel({
        	interval: 10000
        	})
            
            $('#myCarousel').on('slid.bs.carousel', function() {
            	//alert("slid");
        	});
            
            
        });</script>
        <style>
        @import url(https://fonts.googleapis.com/css?family=Yantramanav:400,100,700,500,900,300);
@import url(https://fonts.googleapis.com/css?family=Black+Ops+One&subset=latin,latin-ext);
@import "compass/css3";
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

.t-color-1{ color: #1ac4e2; }
.b-color-1{ background-color: #1ac4e2; }
.t-color-2{ color: #f8a01b; }
.b-color-2{ background-color: #f8a01b; }
.t-color-3{ color: #8ec63f; }
.b-color-3{ background-color: #8ec63f; }
.t-color-4{ color: #A672AA; }
.b-color-4{ background-color: #A672AA; }
.t-color-5{ color: #f14723; }
.b-color-5{ background-color: #f14723; }
.t-color-6{ color: #556273; }
.b-color-6{ background-color: #556273; }


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
body { 
  background: url(http://bjstlh.com/data/wallpapers/5/WDF_538696.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
font-family: 'Yantramanav', sans-serif;
	overflow-x: hidden;
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
.section{
	padding: 3rem 0;
}
.t-color-1{ color: #fffcfc; }
.b-color-1{ background-color: #fffcfc; }
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
.btn-primary {
color: #fff;
background-color: #428bca;
}
.heading-border{
	width: 50px;
	height: 3px;
	opacity: 0.5;
	margin-bottom: 30px;
}
.featured-product h1 small{
	margin-left: 30px;
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
								<div class="">
									<h1><span class="t-color-1">Recommended Products</span></h1>
									<div class="heading-border b-color-1"></div>
								</div>
							</div>
						</div> <!-- section title -->
						
						<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carousel-example-generic" data-slide-to="0" class="active"><i class="fa fa-angle-left"></i></li>
								<li data-target="#carousel-example-generic" data-slide-to="1"><i class="fa fa-angle-right"></i></li>
							</ol>
							<div class="carousel-inner" role="listbox">
								<div class="item active">
									<div class="row">
										<div class="col-sm-4">
											<div class="thumbnail">
												<!--span class="e-label"><div>Sale</div></span-->
												<span class="service-link text-center">
													<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
													<div class="list-inline">
														<a href=""><i class="fa fa-eye"></i></a>
														<a href=""><i class="fa fa-link"></i></a>
													</div>
												</span>
												<div class="caption">
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
													<strong>$899.00</strong>
													<div><a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
												</div>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="thumbnail">
												<span class="service-link text-center">
													<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
													<div class="list-inline">
														<a href=""><i class="fa fa-eye"></i></a>
														<a href=""><i class="fa fa-link"></i></a>
													</div>
												</span>
												<div class="caption">
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
													<strong>$899.00</strong>
													<div><a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
												</div>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="thumbnail">
												<span class="service-link text-center">
													<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
													<div class="list-inline">
														<a href=""><i class="fa fa-eye"></i></a>
														<a href=""><i class="fa fa-link"></i></a>
													</div>
												</span>
												<div class="caption">
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
													<strong>$899.00</strong>
													<div>
														<a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="row">
										<div class="col-sm-4">
											<div class="thumbnail">
												<!--span class="e-label"><div>Sale</div></span-->
												<span class="service-link text-center">
													<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
													<div class="list-inline">
														<a href=""><i class="fa fa-eye"></i></a>
														<a href=""><i class="fa fa-link"></i></a>
													</div>
												</span>
												<div class="caption">
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
													<strong>$899.00</strong>
													<div><a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
												</div>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="thumbnail">
												<span class="service-link text-center">
													<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
													<div class="list-inline">
														<a href=""><i class="fa fa-eye"></i></a>
														<a href=""><i class="fa fa-link"></i></a>
													</div>
												</span>
												<div class="caption">
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
													<strong>$899.00</strong>
													<div><a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
												</div>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="thumbnail">
												<span class="service-link text-center">
													<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
													<div class="list-inline">
														<a href=""><i class="fa fa-eye"></i></a>
														<a href=""><i class="fa fa-link"></i></a>
													</div>
												</span>
												<div class="caption">
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
													<strong>$899.00</strong>
													<div>
														<a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- desktop -->
						<div class="featured-product desktop">
							<div class="row">
								<div class="col-sm-12">
									<div class="row">
										<div class="col-sm-12">
											<h1><span class="t-color-1">Appliances</span></h1>
											<div class="heading-border b-color-1"></div>
										</div>
									</div> <!-- section title -->
									
									<div class="row">
										<div class="col-sm-4">
											<div class="thumbnail">
												<!--span class="e-label"><div>Sale</div></span-->
												<span class="service-link text-center">
													<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
													<div class="list-inline">
														<a href=""><i class="fa fa-eye"></i></a>
														<a href=""><i class="fa fa-link"></i></a>
													</div>
												</span>
												<div class="caption">
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
													<strong>$899.00</strong>
													<div><a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
												</div>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="thumbnail">
												<span class="service-link text-center">
													<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
													<div class="list-inline">
														<a href=""><i class="fa fa-eye"></i></a>
														<a href=""><i class="fa fa-link"></i></a>
													</div>
												</span>
												<div class="caption">
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
													<strong>$899.00</strong>
													<div><a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
												</div>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="thumbnail">
												<span class="service-link text-center">
													<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
													<div class="list-inline">
														<a href=""><i class="fa fa-eye"></i></a>
														<a href=""><i class="fa fa-link"></i></a>
													</div>
												</span>
												<div class="caption">
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
													<strong>$899.00</strong>
													<div>
														<a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-4">
											<div class="thumbnail">
												<!--span class="e-label"><div>Sale</div></span-->
												<span class="service-link text-center">
													<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
													<div class="list-inline">
														<a href=""><i class="fa fa-eye"></i></a>
														<a href=""><i class="fa fa-link"></i></a>
													</div>
												</span>
												<div class="caption">
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
													<strong>$899.00</strong>
													<div><a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
												</div>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="thumbnail">
												<span class="service-link text-center">
													<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
													<div class="list-inline">
														<a href=""><i class="fa fa-eye"></i></a>
														<a href=""><i class="fa fa-link"></i></a>
													</div>
												</span>
												<div class="caption">
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
													<strong>$899.00</strong>
													<div><a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
												</div>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="thumbnail">
												<span class="service-link text-center">
													<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
													<div class="list-inline">
														<a href=""><i class="fa fa-eye"></i></a>
														<a href=""><i class="fa fa-link"></i></a>
													</div>
												</span>
												<div class="caption">
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
													<strong>$899.00</strong>
													<div>
														<a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-4">
											<div class="thumbnail">
												<!--span class="e-label"><div>Sale</div></span-->
												<span class="service-link text-center">
													<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
													<div class="list-inline">
														<a href=""><i class="fa fa-eye"></i></a>
														<a href=""><i class="fa fa-link"></i></a>
													</div>
												</span>
												<div class="caption">
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
													<strong>$899.00</strong>
													<div><a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
												</div>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="thumbnail">
												<span class="service-link text-center">
													<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
													<div class="list-inline">
														<a href=""><i class="fa fa-eye"></i></a>
														<a href=""><i class="fa fa-link"></i></a>
													</div>
												</span>
												<div class="caption">
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
													<strong>$899.00</strong>
													<div><a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
												</div>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="thumbnail">
												<span class="service-link text-center">
													<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
													<div class="list-inline">
														<a href=""><i class="fa fa-eye"></i></a>
														<a href=""><i class="fa fa-link"></i></a>
													</div>
												</span>
												<div class="caption">
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
													<strong>$899.00</strong>
													<div>
														<a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div> <!-- desktop -->
						<!-- pagination -->
					</div><!--div 9 -->
				</div>
			</div>
		</section>
		<br><br><br><br><br><br><br><br><br>
		<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>