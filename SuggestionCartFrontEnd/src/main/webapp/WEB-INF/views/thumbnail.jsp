<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<script>
$(document).ready(function() {
    $('#myCarousel').carousel({
	interval: 10000
	})
    
    $('#myCarousel').on('slid.bs.carousel', function() {
    	//alert("slid");
	});
    
    
});
</script>
<style>
.container {
    margin-top: 20px;
}
.carousel .carousel-indicators li .fa{
	background-color: #f6f6f6;
	padding: 5px 10px; 
	border-radius: 3px; 
	color: #999;
}

.carousel-indicators {
	margin-left: 25;
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
    max-height: 320px
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

/* Carousel Header Styles */
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
  padding-top: 5px;
  font-family: 'Open Sans', sans-serif;
}

.thumbnail {
    position: relative;
    padding: 0px;
    margin-bottom: 20px;
}

.thumbnail img {
    width: 100%;
}
section{
	padding: 3rem 0;
}
.t-color-1{ color: #fffcfc; }
.b-color-1{ background-color: #fffcfc; }

.heading-border{
	width: 50px;
	height: 1px;
	opacity: 0.5;
	margin-bottom: 30px;
}
.featured-product h1 small{
	margin-left: 30px;
}

.featured-product small a.btn .fa{
	margin-left: 5px;
	font-size: 7px;
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
.featured-product small a.btn .fa{
	margin-left: -1px;
	font-size: 12px;
}


.featured-product small a.btn{
	background-color: #fff;
	color: #000; 
	display: block;
	font-size: 13px; 
	padding: 4px 8px;
	border-radius: 3px; 
	border: 1px solid #eee; 
	margin-left: -30px;
}


.featured-product .thumbnail span{
	color: #aaa; 
	line-height: 4; 
	font-size: 12px;
}
.featured-product .thumbnail strong{
	color: #0873d6;
	font-weight: 600; 
	font-size: 22px;
}

.featured-product .thumbnail:hover img{
	opacity: 0.6;
}

.featured-product .thumbnail:hover span{
	color: #0B82F0;
}
.featured-product .thumbnail:hover h3{
	color: #0B82F0;
}

.featured-product .thumbnail .btn:hover{
	background-color:#0B82F0;
	border-color: #0B82F0;
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
<body>
<section class="featured-product">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="">
							<h1><span class="t-color-1">Best Selling Mobile Products</span>
								<small class="btn-group hidden-xs">
									<a href="mobile_products" class=" btn btn-default btn-sm dropdown-toggle" aria-haspopup="true" 
									   aria-expanded="false">All Categories <i class="fa fa-bars"></i></a>
								</small></h1>
							<div class="heading-border b-color-1"></div>
						</div>
					</div>
				</div> <!-- section title -->
				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
					
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<div class="row">
								<div class="col-sm-3">
									<div class="thumbnail">
										<!--span class="e-label"><div>Sale</div></span-->
										<span class="service-link text-center">
											<img class="img-responsive" src="G:\products/${product.id=8}.jpg" alt="" style="height:200px;width:200px">
											
										</span>
										<div class="caption">
											<div class="category"> Apple 
												<div class="pull-right">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-o"></i>
													<i class="fa fa-star-o"></i>
												</div>
											</div>
											<h3>Apple iPhone 7 (JetBlack,4Gb RAM,128GB) </h3>
											<strong>46,000 Rs</strong>
											<div><a href="product_description/${product.id=8}" class="btn btn-default" role="button">View</a></div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
												<span class="service-link text-center">
													<img class="img-responsive" src="C:\Users\JB\workspace\SuggestionCartFrontEnd\src\main\resources\images\phone\1482472116194068139.jpg" style="width:200px;height:200px" alt="">
													
												</span>
												<div class="caption">
													<div class="category"> Mi 3S Prime
														<div class="pull-right">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
													</div>
													<h3>Redmi 3S Prime (Silver, 32 GB)</h3>
													<strong>8,999 Rs</strong>
													<div><a href="product_description/${product.id=2}" class="btn btn-default" role="button">View</a></div>
												</div>
											</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
												<span class="service-link text-center">
													<img class="img-responsive" src="C:\Users\JB\workspace\SuggestionCartFrontEnd\src\main\resources\images\phone\G5-image350.jpg" style="width:200px;height:200px" alt="">
													
												</span>
												<div class="caption">
													<div class="category"> LG G5
														<div class="pull-right">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
														</div>
													</div>
													<h3>LG <br>G5 TITAN TITAN</h3>
													<strong>34,500 Rs</strong>
													<div>
														<a href="product_description/${product.id=3}" class="btn btn-default" role="button">View</a></div>
												</div>
											</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
												<!--span class="e-label"><div>Sale</div></span-->
												<span class="service-link text-center">
													<img class="img-responsive" src="C:\Users\JB\workspace\SuggestionCartFrontEnd\src\main\resources\images\phone\HTC-10-7.jpg" style="width:200px;height:200px" alt="">
													
												</span>
												<div class="caption">
													<div class="category"> HTC Desire 10
														<div class="pull-right">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
														</div>
													</div>
													<h3>HTC Desire 10 Lifestyle (Polar White, 32 GB)</h3>
													<strong>15,999 Rs</strong>
													<div><a href="product_description/${product.id=4}" class="btn btn-default" role="button">View</a></div>
												</div>
											</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="row">
								<div class="col-sm-3">
									<div class="thumbnail">
												<span class="service-link text-center">
													<img class="img-responsive" src="C:\Users\JB\workspace\SuggestionCartFrontEnd\src\main\resources\images\phone\op3.jpg" style="width:200px;height:200px" alt="">
													
												</span>
												<div class="caption">
													<div class="category"> OnePlus 3
														<div class="pull-right">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
													</div>
													<h3>OnePlus 3 <br>(Gun-Metal, 64 GB) </h3>
													<strong>27,999 Rs</strong>
													<div><a href="product_description/${product.id=5}" class="btn btn-default" role="button">View</a></div>
												</div>
											</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
												<span class="service-link text-center">
													<img class="img-responsive" src="C:\Users\JB\workspace\SuggestionCartFrontEnd\src\main\resources\images\phone\Oppo-A53.jpg" style="width:200px;height:200px" alt="">
													
												</span>
												<div class="caption">
													<div class="category"> Oppo F1S
														<div class="pull-right">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
													</div>
													<h3>Oppo <br>F1S (Gold, 32GB) </h3>
													<strong>14,000 Rs</strong>
													<div>
														<a href="product_description/${product.id=6}" class="btn btn-default" role="button">View</a></div>
												</div>
											</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
												<!--span class="e-label"><div>Sale</div></span-->
												<span class="service-link text-center">
													<img class="img-responsive" src="C:\Users\JB\workspace\SuggestionCartFrontEnd\src\main\resources\images\phone\phone_banner.jpg" style="width:200px;height:200px" alt="">
													
												</span>
												<div class="caption">
													<div class="category"> Google
														<div class="pull-right">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
														</div>
													</div>
													<h3>Google <br>Pixel (Very Silver, 32GB) </h3>
													<strong>57,999 Rs</strong>
													<div><a href="product_description/${product.id=7}" class="btn btn-default" role="button">View</a></div>
												</div>
											</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
												<span class="service-link text-center">
													<img class="img-responsive" src="C:\Users\JB\workspace\SuggestionCartFrontEnd\src\main\resources\images\phone\Samsung-Galaxy-S6-Gold-Platinum.jpg" style="width:200px;height:200px" alt="">
													
												</span>
												<div class="caption">
													<div class="category">Samsung Galaxy S7
														<div class="pull-right">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
													</div>
													<h3>Samsung Galaxy S7 Edge Golden Onyx </h3>
													<strong>55,599 Rs</strong>
													<div>
														<a href="product_description/${product.id=9}" class="btn btn-default" role="button">View</a></div>
												</div>
											</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>		
			
</body>
</html>