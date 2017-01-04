<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<head>
<title>Home Page</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1maximum-scale=1, user-scalable=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Passion+One'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="assets/css/main.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
	$(document).ready(
			function() {
				$(".dropdown").hover(
						function() {
							$('.dropdown-menu', this).not('.in .dropdown-menu')
									.stop(true, true).slideDown("400");
							$(this).toggleClass('open');
						},
						function() {
							$('.dropdown-menu', this).not('.in .dropdown-menu')
									.stop(true, true).slideUp("400");
							$(this).toggleClass('open');
						});
			});
	
</script>
<style>
@import url(http://fonts.googleapis.com/css?family=Open+Sans:400,700);

body {
	font-family: 'Open Sans', 'sans-serif';
}

.mega-dropdown {
	position: static !important;
}

.mega-dropdown-menu {
	padding: 20px 0px;
	width: 100%;
	box-shadow: none;
	-webkit-box-shadow: none;
}

.mega-dropdown-menu>li>ul {
	padding: 0;
	margin: 0;
}
.carousel-inner > .item > img, .carousel-inner > .item > a > img {
    width: 100%;
}

.mega-dropdown-menu>li>ul>li {
	list-style: none;
}

.mega-dropdown-menu>li>ul>li>a {
	display: block;
	color: #222;
	padding: 3px 5px;
}

.mega-dropdown-menu>li ul>li>a:hover, .mega-dropdown-menu>li ul>li>a:focus
	{
	text-decoration: none;
}

.mega-dropdown-menu .dropdown-header {
	font-size: 18px;
	color: #ff3546;
	padding: 5px 60px 5px 5px;
	line-height: 30px;
}

.carousel-control .glyphicon-chevron-left, .carousel-control .glyphicon-chevron-right
	{
	font-size: 12px;
	background-color: inherit;
	line-height: 30px;
	text-shadow: none;
	color: #333;
}

* {
	font-family: 'Oxygen', sans-serif;
}

#login-modal .modal-dialog {
    width: 350px;
}

#div-login-msg,
#div-lost-msg,
#div-register-msg {
    border: 1px solid #dadfe1;
    height: 30px;
    line-height: 28px;
    transition: all ease-in-out 500ms;
}

#div-login-msg.success,
#div-lost-msg.success,
#div-register-msg.success {
    border: 1px solid #68c3a3;
    background-color: #c8f7c5;
}

#div-login-msg.error,
#div-lost-msg.error,
#div-register-msg.error {
    border: 1px solid #eb575b;
    background-color: #ffcad1;
}

#icon-login-msg,
#icon-lost-msg,
#icon-register-msg {
    width: 30px;
    float: left;
    line-height: 28px;
    text-align: center;
    background-color: #dadfe1;
    margin-right: 5px;
    transition: all ease-in-out 500ms;
}

#icon-login-msg.success,
#icon-lost-msg.success,
#icon-register-msg.success {
    background-color: #68c3a3 !important;
}

#icon-login-msg.error,
#icon-lost-msg.error,
#icon-register-msg.error {
    background-color: #eb575b !important;
}

#img_logo {
    max-height: 100px;
    max-width: 100px;
}
.modal-backdrop.in {
    filter: alpha(opacity=50);
    opacity: .8;
}

.modal-content {
    background-color: #ececec;
    border: 1px solid #bdc3c7;
    border-radius: 0px;
    outline: 0;
}

.modal-header {
    min-height: 16.43px;
    padding: 15px 15px 15px 15px;
    border-bottom: 0px;
}

.modal-body {
    position: relative;
    padding: 5px 15px 5px 15px;
}

.modal-footer {
    padding: 15px 15px 15px 15px;
    text-align: left;
    border-top: 0px;
}

.checkbox {
    margin-bottom: 0px;
}

.btn {
    border-radius: 0px;
}

.btn:focus,
.btn:active:focus,
.btn.active:focus,
.btn.focus,
.btn:active.focus,
.btn.active.focus {
    outline: none;
}

.btn-lg, .btn-group-lg>.btn {
    border-radius: 0px;
}

.btn-link {
    padding: 5px 10px 0px 0px;
    color: #95a5a6;
}

.btn-link:hover, .btn-link:focus {
    color: #2c3e50;
    text-decoration: none;
}

.glyphicon {
    top: 0px;
}

.form-control {
  border-radius: 0px;
}
body, html {
	height: 100%;
	background-repeat: no-repeat;
	background-color: #d3d3d3;
	font-family: 'Oxygen', sans-serif;
}

.main {
	margin-top: 70px;
}

h1.title {
	font-size: 50px;
	font-family: 'Passion One', cursive;
	font-weight: 400;
}

hr {
	width: 10%;
	color: #fff;
}

.form-group {
	margin-bottom: 15px;
}

label {
	margin-bottom: 15px;
}

input, input::-webkit-input-placeholder {
	font-size: 11px;
	padding-top: 3px;
}

.main-login {
	background-color: #fff;
	/* shadows and rounded borders */
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	-moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	-webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}

.main-center {
	margin-top: 30px;
	margin: 0 auto;
	max-width: 330px;
	padding: 40px 40px;
}

.login-button {
	margin-top: 5px;
}

.login-register {
	font-size: 11px;
	text-align: center;
}

body {
	background:url("C:\Users\JB\workspace\shoppingFrontEnd\src\main\resources\images\background.jpg");
	background-repeat: no-repeat;
}

#container {
	position: fixed;
	width: 1000px; /* The width is fixed by pixels */
	height:800px; /* The height is fixed by pixels*/
	color: #fff;
}


.navbar {
	*position: fixed !important;
}

.btn-fb {
	color: #fff;
	background-color: #3b5998;
}

.btn-fb:hover {
	color: #fff;
	background-color: #496ebc
}

.btn-tw {
	color: #fff;
	background-color: #55acee;
}

.btn-tw:hover {
	color: #fff;
	background-color: #59b5fa;
}

@media ( max-width :768px) {
	#login-dp {
		background-color: inherit;
		color: #fff;
	}
	#login-dp .bottom {
		background-color: inherit;
		border-top: 0 none;
	}
}
.popover.primary {
	border-color: #337ab7;
}

.popover.primary>.arrow {
	border-top-color: #337ab7;
}

.popover.primary>.popover-title {
	color: #fff;
	background-color: #337ab7;
	border-color: #337ab7;
}

.popover.success {
	border-color: #d6e9c6;
}

.popover.success>.arrow {
	border-top-color: #d6e9c6;
}

.popover.success>.popover-title {
	color: #3c763d;
	background-color: #dff0d8;
	border-color: #d6e9c6;
}

.popover.info {
	border-color: #bce8f1;
}

.popover.info>.arrow {
	border-top-color: #bce8f1;
}

.popover.info>.popover-title {
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}

.popover.warning {
	border-color: #faebcc;
}

.popover.warning>.arrow {
	border-top-color: #faebcc;
}

.popover.warning>.popover-title {
	color: #8a6d3b;
	background-color: #fcf8e3;
	border-color: #faebcc;
}

.popover.danger {
	border-color: #ebccd1;
}

.popover.danger>.arrow {
	border-top-color: #ebccd1;
}

.popover.danger>.popover-title {
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}

@import url(http://fonts.googleapis.com/css?family=Open+Sans:400,700);

body {
	font-family: 'Open Sans', 'sans-serif';
}

.mega-dropdown {
	position: static !important;
}

.mega-dropdown-menu {
	padding: 20px 0px;
	width: 100%;
	box-shadow: none;
	-webkit-box-shadow: none;
}

.mega-dropdown-menu>li>ul {
	padding: 0;
	margin: 0;
}
.carousel-inner > .item > img, .carousel-inner > .item > a > img {
    width: 100%;
}

.mega-dropdown-menu>li>ul>li {
	list-style: none;
}

.mega-dropdown-menu>li>ul>li>a {
	display: block;
	color: #222;
	padding: 3px 5px;
}

.mega-dropdown-menu>li ul>li>a:hover, .mega-dropdown-menu>li ul>li>a:focus
	{
	text-decoration: none;
}

.mega-dropdown-menu .dropdown-header {
	font-size: 18px;
	color: #ff3546;
	padding: 5px 60px 5px 5px;
	line-height: 30px;
}

.carousel-control .glyphicon-chevron-left, .carousel-control .glyphicon-chevron-right
	{
	font-size: 12px;
	background-color: inherit;
	line-height: 30px;
	text-shadow: none;
	color: #333;
}

* {
	font-family: 'Oxygen', sans-serif;
}

#login-modal .modal-dialog {
    width: 350px;
}

#div-login-msg,
#div-lost-msg,
#div-register-msg {
    border: 1px solid #dadfe1;
    height: 30px;
    line-height: 28px;
    transition: all ease-in-out 500ms;
}

#div-login-msg.success,
#div-lost-msg.success,
#div-register-msg.success {
    border: 1px solid #68c3a3;
    background-color: #c8f7c5;
}

#div-login-msg.error,
#div-lost-msg.error,
#div-register-msg.error {
    border: 1px solid #eb575b;
    background-color: #ffcad1;
}

#icon-login-msg,
#icon-lost-msg,
#icon-register-msg {
    width: 30px;
    float: left;
    line-height: 28px;
    text-align: center;
    background-color: #dadfe1;
    margin-right: 5px;
    transition: all ease-in-out 500ms;
}

#icon-login-msg.success,
#icon-lost-msg.success,
#icon-register-msg.success {
    background-color: #68c3a3 !important;
}

#icon-login-msg.error,
#icon-lost-msg.error,
#icon-register-msg.error {
    background-color: #eb575b !important;
}

#img_logo {
    max-height: 100px;
    max-width: 100px;
}
.modal-backdrop.in {
    filter: alpha(opacity=50);
    opacity: .8;
}

.modal-content {
    background-color: #ececec;
    border: 1px solid #bdc3c7;
    border-radius: 0px;
    outline: 0;
}

.modal-header {
    min-height: 16.43px;
    padding: 15px 15px 15px 15px;
    border-bottom: 0px;
}

.modal-body {
    position: relative;
    padding: 5px 15px 5px 15px;
}

.modal-footer {
    padding: 15px 15px 15px 15px;
    text-align: left;
    border-top: 0px;
}

.checkbox {
    margin-bottom: 0px;
}

.btn {
    border-radius: 0px;
}

.btn:focus,
.btn:active:focus,
.btn.active:focus,
.btn.focus,
.btn:active.focus,
.btn.active.focus {
    outline: none;
}

.btn-lg, .btn-group-lg>.btn {
    border-radius: 0px;
}

.btn-link {
    padding: 5px 10px 0px 0px;
    color: #95a5a6;
}

.btn-link:hover, .btn-link:focus {
    color: #2c3e50;
    text-decoration: none;
}

.glyphicon {
    top: 0px;
}

.form-control {
  border-radius: 0px;
}
body, html {
	height: 100%;
	background-repeat: no-repeat;
	background-color: #d3d3d3;
	font-family: 'Oxygen', sans-serif;
}

.main {
	margin-top: 70px;
}

h1.title {
	font-size: 50px;
	font-family: 'Passion One', cursive;
	font-weight: 400;
}

hr {
	width: 10%;
	color: #fff;
}

.form-group {
	margin-bottom: 15px;
}

label {
	margin-bottom: 15px;
}

input, input::-webkit-input-placeholder {
	font-size: 11px;
	padding-top: 3px;
}

.main-login {
	background-color: #fff;
	/* shadows and rounded borders */
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	-moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	-webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}

.main-center {
	margin-top: 30px;
	margin: 0 auto;
	max-width: 330px;
	padding: 40px 40px;
}


body {
	background:url("C:\Users\JB\workspace\shoppingFrontEnd\src\main\resources\images\background.jpg");
	background-repeat: no-repeat;
}

#container {
	position: fixed;
	width: 1000px; /* The width is fixed by pixels */
	height:800px; /* The height is fixed by pixels*/
	color: #fff;
}


.navbar {
	*position: fixed !important;
}

.btn-fb {
	color: #fff;
	background-color: #3b5998;
}

.btn-fb:hover {
	color: #fff;
	background-color: #496ebc
}

.btn-tw {
	color: #fff;
	background-color: #55acee;
}

.btn-tw:hover {
	color: #fff;
	background-color: #59b5fa;
}

</style>
</head>
<body>

<jsp:include page="minibar.jsp"></jsp:include>
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<button class="navbar-toggle" type="button" data-toggle="collapse"
				data-target=".js-navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="home">SuggestionCART</a>
		</div>
		<div class="collapse navbar-collapse js-navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="dropdown mega-dropdown"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown">Electronics<span
						class="caret"></span></a>
					<ul class="dropdown-menu mega-dropdown-menu">
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Electronics</li>
								<div id="menCollection" class="carousel slide" data-ride="carousel">
									<div class="carousel-inner">
										<div class="item active">
											<a href="mobile_phones"><img
												src="C:\Users\JB\workspace\shoppingFrontEnd\src\main\resources\images\iphone-7-plus-silver.jpg"
												class="img-responsive" alt="product 1" style="width:900px;height:200px"></a>
											<h4>
												<small><center>Latest Apple iphone 7</center></small>
											</h4>
											
										</div>
										<!-- End Item -->
										<div class="item">
											<a href="#"><img
												src="C:\Users\JB\workspace\shoppingFrontEnd\src\main\resources\images\600_006_Galaxy_S7_bk_Left_Angle.png"
												class="img-responsive" alt="product 2" style="width:900px;height:200px"></a>
											<h4>
												<small><center>New Samsung Galaxy S7 Edge</center></small>
											</h4>
											
										</div>
										<!-- End Item -->
										<div class="item">
											<a href=""><img
												src="C:\Users\JB\workspace\shoppingFrontEnd\src\main\resources\images\moto-z-motorola-lenovo-2-official.jpg"
												class="img-responsive" alt="product 3" style="width:900px;height:200px"></a>
											<h4>
												<small><center>Latest Tech in Moto Z</center></small>
											</h4>
											
										</div>
										<!-- End Item -->
									</div>
									<!-- End Carousel Inner -->
									<!-- Controls -->
									
								</div>
								<!-- /.carousel -->
								<li class="divider"></li>
								<li><a href="mobile_phones">View all Collection <span
										class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Mobile Phones</li>
								<li><a href="mobile_phones">Apple</a></li>
								<li><a href="mobile_phones">Samsung</a></li>
								<li><a href="mobile_phones">Motorola</a></li>
								<li><a href="mobile_phones">Lenovo</a></li>
								<li class="divider"></li>
							
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Mobile Accessories</li>
								<li><a href="#">Headsets & Headphones</a></li>
								<li><a href="#">Powerbanks</a></li>
								<li><a href="#">Mobile Cases</a></li>
								<li><a href="#">Screengaurds</a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Wearables</li>
								<li><a href="#">Smart Watches</a></li>
								<li><a href="#">Smart Bands</a></li>
								<li><a href="#">Smart Glasses(VR)</a></li>
							</ul>
						</li>
					</ul></li>
				<li class="dropdown mega-dropdown"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown">Appliances<span
						class="caret"></span></a>
					<ul class="dropdown-menu mega-dropdown-menu">
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Appliances</li>
								<div id="menCollection" class="carousel slide" data-ride="carousel">
									<div class="carousel-inner">
										<div class="item active">
											<a href="mobile_phones"><img
												src="https://images-na.ssl-images-amazon.com/images/I/71Gni5tDf9L._SL1500_.jpg"
												class="img-responsive" alt="product 1" style="width:950px;height:200px"></a>
											<h4>
												<small><center>Latest Sony 4K Television</center></small>
											</h4>
										</div>
										<!-- End Item -->
										<div class="item">
											<a href="#"><img
												src="http://www.samsung.com/uk/discover/multimedia/article_images/ces-hero-image-v1%202.jpg"
												class="img-responsive" alt="product 2" style="width:950px;height:200px"></a>
											<h4>
												<small><center>New Samsung Ultra HD Television</center></small>
											</h4>
											
										</div>
										<!-- End Item -->
										<div class="item">
											<a href=""><img
												src="http://image3.mouthshut.com/images/imagesp/925748105s.jpg"
												class="img-responsive" alt="product 3" style="width:950px;height:200px"></a>
											<h4>
												<small><center>Latest 4k VU Television</center></small>
											</h4>
											
										</div>
										<!-- End Item -->
									</div>
									<!-- End Carousel Inner -->
									<!-- Controls -->
									
								</div>
								<!-- /.carousel -->
								<li class="divider"></li>
								<li><a href="mobile_phones">View all Collection <span
										class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Television</li>
								<li><a href="appliance_products">Sony</a></li>
								<li><a href="appliance_products">Samsung</a></li>
								<li><a href="appliance_products">VU</a></li>
								<li><a href="appliance_products">Panasonic</a></li>
								<li class="divider"></li>
							
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Kitchen Appliances</li>
								<li><a href="#">Microwave Ovens</a></li>
								<li><a href="#">Juicer</a></li>
								<li><a href="#">Water Purifiers</a></li>
								<li><a href="#">Coffee Makers</a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Washing Machine</li>
								<li><a href="#">Fully Automatic Front Load</a></li>
								<li><a href="#">Semi Automatic Top Load</a></li>
								<li><a href="#">Fully Automatic Top Load</a></li>
							</ul>
						</li>
					</ul></li>
				<li class="dropdown mega-dropdown"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown">Sports & More<span
						class="caret"></span></a>
					<ul class="dropdown-menu mega-dropdown-menu">
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Sports & More</li>
								<div id="menCollection" class="carousel slide" data-ride="carousel">
									<div class="carousel-inner">
										<div class="item active">
											<a href=""><img
												src="http://www.sonyinsider.com/wp-content/uploads/2010/10/ofy2wz.png"
												class="img-responsive" alt="product 1" style="width:900px;height:200px"></a>
											<h4>
												<small><center>All new PS3</center></small>
											</h4>
											
										</div>
										<!-- End Item -->
										<div class="item">
											<a href="#"><img
												src="https://media.playstation.com/is/image/SCEA/playstation-4-slim-vertical-product-shot-01-us-07sep16?$TwoColumn_Image$"
												class="img-responsive" alt="product 2" style="width:900px;height:200px"></a>
											<h4>
												<small><center>Upgraded PS4</center></small>
											</h4>
											
										</div>
										<!-- End Item -->
										<div class="item">
											<a href=""><img
												src="https://s3.euronics.ee/UserFiles/Products/Images/86379_xbox-360-4gb-e-console-xbox-360-15250854-5.png"
												class="img-responsive" alt="product 3" style="width:900px;height:200px"></a>
											<h4>
												<small><center>Microsoft Xbox 360</center></small>
											</h4>
											
										</div>
										<!-- End Item -->
									</div>
									<!-- End Carousel Inner -->
									<!-- Controls -->
									
								</div>
								<!-- /.carousel -->
								<li class="divider"></li>
								<li><a href="mobile_phones">View all Collection <span
										class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Sports</li>
								<li><a href="Books&More">Cricket</a></li>
								<li><a href="Books&More">Badminton</a></li>
								<li><a href="Books&More">Tennis</a></li>
								<li><a href="Books&More">Table Tennis</a></li>
								<li class="divider"></li>
							
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Fitness Accessories</li>
								<li><a href="#">Gloves</a></li>
								<li><a href="#">AB Exercisers</a></li>
								<li><a href="#">Yoga Mats</a></li>
								<li><a href="#">Dumbbells</a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Gaming</li>
								<li><a href="#">PS3</a></li>
								<li><a href="#">PS4</a></li>
								<li><a href="#">Xbox 360</a></li>
							</ul>
						</li>
					</ul></li>
			</ul> 
			<ul class="nav navbar-nav navbar-right">
				<c:if test="${empty SuccessMessage}">
				<li><a href="register">Register<span class="glyphicon glyphicon-user"></span></a></li>
				<%--/*data-toggle="modal" data-target="#login-modal"*/ --%>
					<li><a href="login">Sign
							in <span class="glyphicon glyphicon-log-in"></span>
					</a></li>
				</c:if>
				<c:if test="${not empty SuccessMessage}">
					<li><a href="#">My Cart<span
							class="glyphicon glyphicon-shopping-cart"></span></a></li>
					<li><a href="logout">Logout<span
							class="glyphicon glyphicon-log-out"></span></a></li>
				</c:if>
			</ul>
		</div>
	</div>
	</nav>
</body>
</html>