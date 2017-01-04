<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib
    prefix="c"
    uri="http://java.sun.com/jsp/jstl/core" 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1maximum-scale=1, user-scalable=no">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script>
   $(document).ready(function() {
	      $('.carousel').carousel({interval: 8000});
	    });
  </script>
<title>SuggestionCART</title>
</head>
<style>
#content{
    margin-top: 100px;
    z-index: 0;
    position: absolute;
}
.container {
    margin-top: 0px;
}
.carousel .carousel-indicators li .fa{
	background-color: #f6f6f6;
	padding: 5px 10px; 
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
.btn-primary {
color: #fff;
background-color: #428bca;
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
}

.thumbnail {
    position: relative;
    padding: 0px;
    margin-bottom: 20px;
}

.thumbnail img {
    width: 100%;
}
section.special-price{
	padding: 0;
	background: url(http://www.solidbackgrounds.com/images/2560x1440/2560x1440-white-solid-color-background.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}

.special-price .price-intro{
	padding: 4rem 0;
	background-colour:#fffcfc ;
}

.special-price h3{
	font-weight: 100;
	letter-spacing: 1px;
	color: #0B82F0; 
	font-size: 60px;
	margin-bottom: 0;
	margin-top: 0;
}

.special-price p{
	font-size: 25px; 
	font-weight: 100; 
	color: #11161a;
	margin: 0 auto;
	padding-bottom: 0;  
}

.special-price .btn {
  background: #428bca none repeat scroll 0 0;
  border-radius: 3px;
  color: #fff;
  font-size: 20px;
  font-weight: 300;
  margin-top: 12px;
  padding: 8px 30px;
  border-color: #428bca;
}

blockquote {
  border-left: 3px solid #1ac4e2;
  font-size: 17.5px;
  margin: 0;
  padding: 0 20px;
}
.t-color-1{ color: #fffcfc; }
.b-color-1{ background-color: #fffcfc; }

.heading-border{
	width: 50px;
	height: 1px;
	opacity: 0.5;
	margin-bottom: 30px;
}
/* product info */
.product-info{
	background-color: #fcfcfc;
	border-bottom: 1px solid rgba(238, 238, 238, 0.3);
}

.product-info .media{
	margin-bottom: 25px;
}

.product-info .media-left img{
	padding: 5px; 
	border: 1px solid rgba(238, 238, 238, 0.8);
	background-color: #fff; 
	border-radius: 5px;
}

.product-info h3{
	font-size: 17px; 
	font-weight: 300;
}

.product-info .category{
	font-size: 11px;
	color: #fcc88e;
	padding-bottom: 10px;
	margin-bottom: 10px;
	border-bottom: 1px solid rgba(238, 238, 238, 0.8);
}

.product-info strong {
	color: #1ac4e2;
	font-size: 22px;
	font-weight: 600;
}

.product-info .media-left{
	position: relative;
}

.product-info .media-left .fa {
	background-color: #1ac4e2;
	border-radius: 50%;
	color: #fff;
	font-size: 11px;
	height: 30px;
	left: 45px;
	position: absolute;
	top: 33%;
	width: 30px;
	padding-top: 9px;
	opacity: 0;
}

.product-info  .media:hover .media-left img{
	opacity: 0.6;
}

.product-info .media:hover .media-body h3{
	color: #1ac4e2;
}

.product-info .media:hover .media-left .fa{
	opacity: 1;
}
section{
	padding: 3rem 0;
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
 
.single-add{
	background: rgba(212,228,239,1);
/* Old Browsers */background: -moz-linear-gradient(left, rgba(212,228,239,1) 0%, rgba(203,222,235,1) 12%, rgba(198,218,233,1) 18%, rgba(182,207,226,1) 38%, rgba(171,200,221,1) 52%, rgba(161,193,216,1) 65%, rgba(155,189,213,1) 73%, rgba(134,174,204,1) 100%);
 /* FF3.6+ */background: -webkit-gradient(left top, right top, color-stop(0%, rgba(212,228,239,1)), color-stop(12%, rgba(203,222,235,1)), color-stop(18%, rgba(198,218,233,1)), color-stop(38%, rgba(182,207,226,1)), color-stop(52%, rgba(171,200,221,1)), color-stop(65%, rgba(161,193,216,1)), color-stop(73%, rgba(155,189,213,1)), color-stop(100%, rgba(134,174,204,1)));
/* Chrome, Safari4+ */background: -webkit-linear-gradient(left, rgba(212,228,239,1) 0%, rgba(203,222,235,1) 12%, rgba(198,218,233,1) 18%, rgba(182,207,226,1) 38%, rgba(171,200,221,1) 52%, rgba(161,193,216,1) 65%, rgba(155,189,213,1) 73%, rgba(134,174,204,1) 100%);
 /* Chrome10+,Safari5.1+ */background: -o-linear-gradient(left, rgba(212,228,239,1) 0%, rgba(203,222,235,1) 12%, rgba(198,218,233,1) 18%, rgba(182,207,226,1) 38%, rgba(171,200,221,1) 52%, rgba(161,193,216,1) 65%, rgba(155,189,213,1) 73%, rgba(134,174,204,1) 100%);
 /* Opera 11.10+ */background: -ms-linear-gradient(left, rgba(212,228,239,1) 0%, rgba(203,222,235,1) 12%, rgba(198,218,233,1) 18%, rgba(182,207,226,1) 38%, rgba(171,200,221,1) 52%, rgba(161,193,216,1) 65%, rgba(155,189,213,1) 73%, rgba(134,174,204,1) 100%);
 /* IE 10+ */background: linear-gradient(to right, rgba(212,228,239,1) 0%, rgba(203,222,235,1) 12%, rgba(198,218,233,1) 18%, rgba(182,207,226,1) 38%, rgba(171,200,221,1) 52%, rgba(161,193,216,1) 65%, rgba(155,189,213,1) 73%, rgba(134,174,204,1) 100%);
/* W3C */filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#d4e4ef', endColorstr='#86aecc', GradientType=1 );
/* IE6-9 */
}

.single-add h4 {
	color: #fff;
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
	border-bottom: 2px solid  #0B82F0;
}

.single-add .img-add{
	padding: 15px 20px;
	position: absolute; 
	right: 0;
	bottom: 0;
}

.single-add .img-add img{
	max-width: 140px;
	margin-bottom:-12px;
}
section.home{
	padding: 0;
}

section.home .intro{
	padding-top: 5rem;
	width: 100%;
    height: 100%;
}


.home{
	background: url(https://s-media-cache-ak0.pinimg.com/originals/77/7b/8a/777b8ac3664c3a142c4d7c70a162d968.jpg) scroll no-repeat 0 0 / cover;
}

.home .intro{
	background: url(../images/strange-bullseyes.png) scroll ;
}

.intro-content{
	padding: 5rem 0;
	padding-bottom: 10rem;
}

.home img{
	margin-left:-50px;
	max-height: 480px;
}

.home h1{
	 margin-left:50px;
	margin-top: 0;
	margin-bottom: 15px;
	font-weight: 100; 
	font-size: 60px; 
	color: #2980b9; 
}

.home h2 {
	margin-left:50px;
	color: #2980b9;
	font-size: 70px;
	font-weight: 700;
	margin-bottom: 20px;
	margin-top: 0;
	font-family: sans-serif;
	text-transform: uppercase;
}

.home h2 span{
	color: #fff;
	border-radius: 5px;
	background-color: #0B82F0;
	padding: 0 10px;  
	height: 100px;
}

.home p{
	margin-left:50px;
	color: #2980b9; 
	font-size: 20px; 
	font-weight: 100; 
}

.home .btn.btn-default{
	margin-left:50px;
	background-color: #0B82F0;
	color: #fff; 
	font-weight: 600; 
	font-size: 13px; 
	padding: 8px 15px; 
	border: transparent; 
	border-bottom: 2px solid #556273; 
	border-radius: 5px;
}

.home .carousel-control:hover{
	background-color: #556273;
}

.home .carousel-control {
	background-color: rgba(225, 225, 225, 0.3);
	height: 50px;
	padding-top: 10px;
	padding-left: 5px;
	padding-right: 5px;
	width: 45px;
	top: 38%;
	opacity: 1;
}

.home .carousel-control .fa{
	font-size: 30px; 
	text-shadow: none;
	color: #2980b9;
}

.home .carousel-control.right{
	border-top-left-radius: 4px;
	border-bottom-left-radius: 4px;
	padding-left: 8px;
}

.home .carousel-control.left{
	border-top-right-radius: 4px;
	border-bottom-right-radius: 4px;
	padding-right: 8px;
}

.home .carousel-control.right,
.home .carousel-control.left {
	background-image: none;
}

.home .carousel-indicators {
	bottom: 0;
	left: 0;
	top: auto;
	margin-left: 1px;
	right: 0;
	width: auto;
}

.home .carousel-indicators li.active{
	background-color: #fff;
	border-color: #0B82F0;
	opacity: 1;
}

.home .carousel-indicators li{
	background-color: #0B82F0;
	border-color: #0B82F0;
	opacity: 1;
}

.home .carousel-indicators li{
	display: inline-block;
	margin-left: 2px;
	margin-right: 2px;
	margin-bottom: 10px;
  	text-indent:-999;
	height: 10px;
	width: 10px; 
}

</style>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
	<div class="row">
		<section class="home">
			<div class="intro">
				<div id="home" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#home" data-slide-to="0" class="active"></li>
						<li data-target="#home" data-slide-to="1"></li>
						<li data-target="#home" data-slide-to="2"></li>
						<li data-target="#home" data-slide-to="3"></li>
						<li data-target="#home" data-slide-to="4"></li>
						<li data-target="#home" data-slide-to="5"></li>
					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<div class="container">
								<div class="row">
									<div class="col-sm-7">
										<div class="intro-content">
											<h1>Last Chance</h1>
											<h2>Biggest <span class="highlight">Sale</span></h2>
											<p>Nam apeirian assentior ei, utquo eros posse verterem. Cum eu error congue saperet. Teer eam exerci vputate consetetur.</p>
											<a class="btn btn-default">Shop Now</a>
										</div>
									</div>
									<div class="col-sm-5"><br>
										<img class="img-responsive" src="C:\Users\JB\workspace\shoppingFrontEnd\src\main\resources\images\desk-slide.png" height="742" alt="" />
									</div>	
								</div>	
							</div>	
						</div>
						<div class="item">
							<div class="container">
								<div class="row">
									<div class="col-sm-7">
										<div class="intro-content">
											<h1>Last Chance</h1>
											<h2>Biggest <span class="highlight">Sale</span></h2>
											<p>Nam apeirian assentior ei, utquo eros posse verterem. Cum eu error congue saperet. Teer eam exerci vputate consetetur.</p>
											<a class="btn btn-default">Shop Now</a>
										</div>
									</div>
									<div class="col-sm-5"><br><br><br>
										<img class="img-responsive" src="C:\Users\JB\workspace\shoppingFrontEnd\src\main\resources\images\Mobile-phone.png" width="100" height="742" alt="" />
									</div>	
								</div>	
							</div>	
						</div>
						<div class="item">
							<div class="container">
								<div class="row">
									<div class="col-sm-7">
										<div class="intro-content">
											<h1>Last Chance</h1>
											<h2>Biggest <span class="highlight">Sale</span></h2>
											<p>Nam apeirian assentior ei, utquo eros posse verterem. Cum eu error congue saperet. Teer eam exerci vputate consetetur.</p>
											<a class="btn btn-default">Shop Now</a>
										</div>
									</div>
									<div class="col-sm-5"><br>
										<img class="img-responsive" src="C:\Users\JB\workspace\shoppingFrontEnd\src\main\resources\images\product-slide3.png" alt="" />
									</div>	
								</div>	
							</div>	
						</div>
						<div class="item">
							<div class="container">
								<div class="row">
									<div class="col-sm-7">
										<div class="intro-content">
											<h1>Last Chance</h1>
											<h2>Biggest <span class="highlight">Sale</span></h2>
											<p>Nam apeirian assentior ei, utquo eros posse verterem. Cum eu error congue saperet. Teer eam exerci vputate consetetur.</p>
											<a class="btn btn-default">Shop Now</a>
										</div>
									</div>
									<div class="col-sm-5"><br>
										<img class="img-responsive" src="C:\Users\JB\workspace\shoppingFrontEnd\src\main\resources\images\Samsung-SHUD-TV.png" alt="" />
									</div>	
								</div>	
							</div>	
						</div>
						<div class="item">
							<div class="container">
								<div class="row">
									<div class="col-sm-7">
										<div class="intro-content">
											<h1>Last Chance</h1>
											<h2>Biggest <span class="highlight">Sale</span></h2>
											<p>Nam apeirian assentior ei, utquo eros posse verterem. Cum eu error congue saperet. Teer eam exerci vputate consetetur.</p>
											<a class="btn btn-default">Shop Now</a>
										</div>
									</div>
									<div class="col-sm-5"><br>
										<img class="img-responsive" src="https://media.playstation.com/is/image/SCEA/playstation-4-slim-vertical-product-shot-01-us-07sep16?$TwoColumn_Image$" alt="" />
									</div>	
								</div>	
							</div>	
						</div>
						<div class="item">
							<div class="container">
								<div class="row">
									<div class="col-sm-7">
										<div class="intro-content">
											<h1>Last Chance</h1>
											<h2>Biggest <span class="highlight">Sale</span></h2>
											<p>Nam apeirian assentior ei, utquo eros posse verterem. Cum eu error congue saperet. Teer eam exerci vputate consetetur.</p>
											<a class="btn btn-default">Shop Now</a>
										</div>
									</div>
									<div class="col-sm-5"><br>
										<img class="img-responsive" src="http://ciniholdings.com.mt/wp-content/uploads/2015/10/8590669109814-435x435.png" alt="" />
									</div>	
								</div>	
							</div>	
						</div>
					</div>
					<!-- Controls -->
					<a class="left carousel-control" href="#home" role="button" data-slide="prev"><i class="fa fa-angle-left"></i></a>
					<a class="right carousel-control" href="#home" role="button" data-slide="next"><i class="fa fa-angle-right"></i></a>
				</div>
			</div>
		</section>
    	
	</div>
</div>
    <div class="container" id="tourpackages-carousel">
      
      <div class="row">
					<div class="col-sm-12">
						<div class="">
							<h1><span class="t-color-1">Featured Products</span>
							<small class="btn-group hidden-xs"></small>
							<a href="appliance_products" class=" btn btn-default btn-sm dropdown-toggle" aria-haspopup="true" aria-expanded="false">All Categories <i class="fa fa-bars"></i></a>
							</h1>
							<div class="heading-border b-color-1"></div>
						</div>
					</div>
        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="C:\Users\JB\workspace\SuggestionCartFrontEnd\src\main\resources\images\moto-z-droid-1000-BHlxH8Uhiw.png" alt="">
              <div class="caption">
                <h4>Thumbnail label</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, soluta, eligendi doloribus sunt minus amet sit debitis repellat. Consectetur, culpa itaque odio similique suscipit</p>
                <p><a href="#" class="btn btn-info btn-xs" role="button">Button</a> <a href="#" class="btn btn-default btn-xs" role="button">Button</a></p>
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="http://placehold.it/500x300" alt="">
              <div class="caption">
                <h4>Thumbnail label</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, soluta, eligendi doloribus sunt minus amet sit debitis repellat. Consectetur, culpa itaque odio similique suscipit</p>
                <p><a href="#" class="btn btn-info btn-xs" role="button">Button</a> <a href="#" class="btn btn-default btn-xs" role="button">Button</a></p>
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="http://placehold.it/500x300" alt="">
              <div class="caption">
                <h4>Thumbnail label</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, soluta, eligendi doloribus sunt minus amet sit debitis repellat. Consectetur, culpa itaque odio similique suscipit</p>
                <p><a href="#" class="btn btn-info btn-xs" role="button">Button</a> <a href="#" class="btn btn-default btn-xs" role="button">Button</a></p>
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="http://placehold.it/500x300" alt="">
              <div class="caption">
                <h4>Thumbnail label</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, soluta, eligendi doloribus sunt minus amet sit debitis repellat. Consectetur, culpa itaque odio similique suscipit</p>
                <p><a href="#" class="btn btn-info btn-xs" role="button">Button</a> <a href="#" class="btn btn-default btn-xs" role="button">Button</a></p>
            </div>
          </div>
        </div>
      </div>
    </div><br><br>
    <!-- special price -->
		<section class="special-price">
			<div class="price-intro">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<div class="pull-left">
								<blockquote>
								<h3>SuggestionCART</h3>
								<p>Let the Internet Suggest the product for you. </p></div>
							</block-quote>
							<br>
							<div class="pull-right"><a href="suggestion_cart" class="btn btn-primary btn-lg"> Click HERE</a>
							</div> 
						</div>
					</div> <!-- section title -->
				</div>
			</div>
		</section>	
		<jsp:include page="thumbnail.jsp"></jsp:include><br><br>
		<section class="emarket-adds">
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="single-add">
							<h4>Get <span>50%</span> Discount</h4>
							<a href="#" class="btn btn-default" role="button">Learn More</a>
							<span class="img-add"><img src="C:\Users\JB\workspace\SuggestionCartFrontEnd\src\main\resources\images\moto-z-droid-1000-BHlxH8Uhiw.png" alt="" / ></span>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="single-add">
							<h4>Best <span>Offer</span> for You</h4>
							<a href="#" class="btn btn-default" role="button">Learn More</a>
							<span class="img-add"><img src="images/red-tablet.png" alt="" /></span>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="single-add">
							<h4><span>Only</span> Best smartphone</h4>
							<a href="#" class="btn btn-default" role="button">Learn More</a>
							<span class="img-add"><img src="images/red-tablet.png" alt="" /></span>
						</div>
					</div>
				</div>
			</div>
		</section>	
		<br><br><br>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>