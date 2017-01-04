<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About_us</title>
<style>
body{
	font-family: 'Yantramanav', sans-serif;
	overflow-x: hidden;
}

p{
	font-size: 14px;
	font-weight: 300;
}

h2{
	font-weight: 100;
}

h1{
	font-weight: 100;
	font-size: 30px; 
	margin-bottom: 10px; 
	color: #999;
}

section{
	padding: 3rem 0;
}

.t-color-1{ color: #fff; }
.b-color-1{ background-color: #fff;
color:#fff; }
.t-color-2{ color: #fff; }
.b-color-2{ background-color: #fff; }
.t-color-3{ color: #fff; }
.b-color-3{ background-color: #fff; }
.t-color-4{ color: #fff; }
.b-color-4{ background-color: #fff; }
.t-color-5{ color: #ffff; }
.b-color-5{ background-color: #ffff; }
.t-color-6{ color: #fff; }
.b-color-6{ color: #fff; }


.heading-border{
	width: 50px;
	height: 1px;
	opacity: 0.9;
	margin-bottom: 30px;
}
section.all-pro{
	padding: 1em 0;
}

.adds{
	padding: 1em 0 0;
}

.product-add{
	height: auto;
}

.product-add h4{
	max-width: 70%;
}
 
.product-add p {
	color: #fff;
	font-size: 17px;
	margin-bottom: 15px;
	width: 70%;
}

.product-add .img-add{
	height: 100%;
	padding-right: 30px;
}
.product-add .img-add img{
	margin-top: 10px;
	max-width: 100%;
}

.product-title .btn.see-more:hover{
	background-color: #8ec63f;
}
.product-title .btn.see-more{
	background-color: #1ac4e2;
	color: #fff;
	padding: 6px 15px; 
	font-size: 15px;
	border: none;	
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
body { 
  background: url(http://cdn.wonderfulengineering.com/wp-content/uploads/2014/09/blue-wallpaper-36.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
.product-title .btn.see-more .fa{
	font-size: 100%;
}
body {
  min-height: 3000px;
  padding-top: 23px;
  font-family: 'Open Sans', sans-serif;
}
.list-ver{
	list-style: none;
	margin-top: 20px;
	margin-bottom: 20px;
}

.list-ver li .fa{
	border: 1px solid #8aaa63;
	padding: 6px;
	border-radius: 50%; 
	color: #fff; 
	font-size: 11px;
	margin-right: 10px
}

.list-ver li{
	font-weight: 300; 
	font-size: 13px;
	margin-bottom: 10px;
	color: #fff;
}

.description .pager li > a .fa{
	padding-top: 5px;
	color: #fff;
}

.description .pager li > a:hover .fa{
	color: #fff;
}

.description .pager li > a{
	color: #fff;
	background-color: #fff;
	border: 1px solid rgba(238, 238, 238, 0.8);
	border-radius: 3px;
	display: inline-block;
	padding: 5px 14px;
}

.description .pager li > a:hover{ 
	background-color: #8ad2ce;
	color: #fff;
	border: 1px solid #8ad2ce;
}
.desk-com{
	border: 1px solid rgba(238, 238, 238, 0.5);
}

.pro-details h2{
	font-weight: 300; 
	font-size: 27px;
	margin-top: 0; 
	margin-bottom: 15px; 
}

.pro-details .rate-stock{
	font-size: 12px; 
	color: #fff;
	font-weight: 400;
	border-bottom: 1px solid rgba(238, 238, 238, 0.8);
	padding-bottom: 10px;
}

.pro-details .rate-stock li:last-child{
	color: #fff;
}

.pro-details .rate-stock .fa{
	font-size: 10px;
	color: #fff;
}

.pro-details .wish-email{
	font-size: 12px; 
	font-weight: 400;
	color: #fff;
}

.pro-details .wish-email .fa{
	margin-right: 3px;
}

.pro-details p{
	font-weight: 300; 
	font-size: 13px;
	letter-spacing: 0.2px; 
	margin-bottom: 15px;   
	color: #fff;
}

.pro-details .currency span{
	text-decoration: line-through; 
	margin-left: 15px;
	color: #fff;
}

.pro-details .currency{
	font-weight: 600; 
	font-size: 20px; 
	margin-bottom: 10px; 
	color: #fff;
}

.pro-details .btn {
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
	font-size: 13px;
	font-weight: 600;
	margin-bottom: 20px;
}

p.tags a:hover{
	color: #fff;
}

p.tags a{
	color: #fff;
}

p.tags{
	font-size: 12px; 
	font-weight: 400;
	color: #fff;
}

.p-d-social .fa:hover{
	color: #fff;
	cursor: pointer;
}

.p-d-social .fa{
	color: #ccc;
	cursor: default;
}

.p-d-social{
	font-weight: 400; 
	font-size: 12px;
	color: #556273;
}

.description .nav-tabs{
	border-bottom: 0; 
}

.description .nav-tabs > li.active > a, 
.description .nav-tabs > li.active > a:focus, 
.description .nav-tabs > li.active > a:hover {
	background-color: #556273;
	border-color: transparent;
	color: #fff;
}
	
.description .nav-tabs > li > a{
	color: #556273;
	background-color: #fff;
	border-color: rgba(238, 238, 238, 0.8);
}

.description .nav-tabs > li > a:focus,
.description .nav-tabs > li > a:hover {
	background-color: #556273;
	color: #fff;
	border-color: transparent;
}

.description .tab-content{
	padding: 20px; 
	border: 1px solid rgba(238, 238, 238, 0.8);
	border-radius: 4px;
	border-top-left-radius: 0; 
		
}

.description .tab-content h2{
	margin-top: 0;
	font-weight: 300;
	font-size: 25px;
}
	
.description .tab-content p{
	font-weight: 300;
	color: #999;
}
#pro-img{
	padding: 7px; 
	border: 1px solid rgba(238, 238, 238, 0.8); 
	border-radius: 4px;
}

#pro-img .carousel-control.left{
	border-top-right-radius: 3px;
	border-bottom-right-radius: 3px;
	left: 7px;
}

#pro-img .carousel-control.right{
	border-top-left-radius: 3px;
	border-bottom-left-radius: 3px;
	right: 7px;
}

#pro-img .carousel-control.left,
#pro-img .carousel-control.right {
	background-image: none;
}
	
#pro-img .carousel-control:hover.left,
#pro-img .carousel-control:hover.right {
	background-color: #556273;
	color: #fff;
}

#pro-img .carousel-control {
	background-color: #fff;
	height: 28px;
	opacity: 1;
	padding-left: 5px;
	padding-top: 2px;
	padding-right: 5px;
	text-shadow: none;
	top: 45%;
	width: 25px;
	color: #999;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
			<div class="container">
				<div class="row">
					<div class="col-sm-7">
						<img class="img-resonsive big-img" src="images/about-us.jpg" width="650" /> 
					</div>
					<div class="col-sm-5">
						<h2 class="t-color-6" style="margin-top: 0;">Some Words About Us</h2>
						<div class="heading-border b-color-1"></div>
						<div class="b-color-6">
						<p>Lorem ipsum dolor sit amet, no mea aeterno indoctum percipitur. Homero quaerendum ius ei. In pro decore tamquam 									appetere, ea mentitum mediocrem efficiantur quo. Quo no assentior conclusionemque. Qui cu ceteros accusata. Partem 									utamur explicari eos at. Ad brute veritus theophrastus vis, an quo mutat voluptaria mnesarchum.</p>
						<p>Lorem ipsum dolor sit amet, no mea aeterno indoctum percipitur. Homero quaerendum ius ei. In pro decore tamquam 									appetere, ea mentitum mediocrem efficiantur quo. Quo no assentior conclusionemque. indoctum percipitur. Homero quaerendum ius ei. In pro decore tamquam appetere, ea mentitum mediocrem efficiantur quo. assentior conclusionemque.</p>
						<p>Lorem ipsum dolor sit amet, no mea aeterno indoctum percipitur. Homero quaerendum ius ei. In pro decore tamquam 									appetere, ea mentitum mediocrem efficiantur brute veritus theophrastus vis.</p>
					</div>
					</div>
				</div>
			</div>
		</section>
		
		<!-- feature e-market -->
		<section>
			<div class="container">
				<div class="row">
					<div class="col-sm-8">
						<h2 class="t-color-6">Features E-Market</h2>
						<div class="heading-border b-color-1"></div>
						<div class="b-color-6">
						<p>Lorem ipsum dolor sit amet, no mea aeterno indoctum percipitur. Homero quaerendum ius ei. In pro decore tamquam 									appetere, ea mentitum mediocrem efficiantur quo. Quo no assentior conclusionemque. Qui cu ceteros accusata. Partem 									utamur explicari eos at. Ad brute veritus theophrastus vis, an quo mutat voluptaria mnesarchum.</p>
						</div>
						<ul class="list-ver">
							<li><i class="fa fa-check"></i>Mentitum mediocrem efficiantur quo</li>
							<li><i class="fa fa-check"></i>Lorem ipsum dolor sit amet, no mea aeterno indoctum</li>
							<li><i class="fa fa-check"></i>Mentitum mediocrem efficiantur quo no assentior conclusionemque</li>
							<li><i class="fa fa-check"></i>Aaeterno indoctum percipitur homero quaerendum ius ei</li>
							<li><i class="fa fa-check"></i>Indoctum percipitu somero quaerendum ius ei jfjksm n pro decore tamquam </li>
							<li><i class="fa fa-check"></i>Mutat voluptaria mnesarchum impetus</li>
						</ul>
					</div>
					<div class="col-sm-4">
						<h2 class="t-color-6">Why Our Shop</h2>
						<div class="heading-border b-color-1"></div>
						
						<div class="panel-group ques-ask" id="accordion" role="tablist" aria-multiselectable="true">
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingOne">
									<h4 class="panel-title">
										<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-1" aria-expanded="true" aria-controls="collapse-1">Lorem ipsum dolor sit amet</a>
									</h4>
								</div>
								<div id="collapse-1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
									<div class="panel-body">
										<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard .</p>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingTow">
									<h4 class="panel-title">
										<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-2" aria-expanded="true" aria-controls="collapse-2">Lorem ipsum dolor sit</a>
									</h4>
								</div>
								<div id="collapse-2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTow">
									<div class="panel-body">
										<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch.</p>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingThree">
									<h4 class="panel-title">
										<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-3" aria-expanded="true" aria-controls="collapse-3">Lorem ipsum dolor amet</a>
									</h4>
								</div>
								<div id="collapse-3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
									<div class="panel-body">
										<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch.</p>
									</div>
								</div>
							</div>	
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingFour">
									<h4 class="panel-title">
										<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-4" aria-expanded="true" aria-controls="collapse-4">Lorem ipsum dolor</a>
									</h4>
								</div>
								<div id="collapse-4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
									<div class="panel-body">
										<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch.</p>
									</div>
								</div>
							</div>	
						</div>
					</div>
				</div>
			</div>
		</section>
		<br><br><br>
		<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>