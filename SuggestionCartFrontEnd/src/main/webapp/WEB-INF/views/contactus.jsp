<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact_us</title>
<style>
body { 
  background: url(http://cdn.wonderfulengineering.com/wp-content/uploads/2014/09/blue-wallpaper-36.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
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
.t-color-5{ color: #ffff; }
.b-color-5{ background-color: #ffff; }
.t-color-6{ color: #fff; }
.b-color-6{ background-color: #fff; }


.pice-map{
	margin-bottom: 30px;
}

.big-map{
	margin-bottom: 20px;
}

.big-map iframe{
	border: 1px solid rgba(238, 238, 238, 0.5);
	border-radius: 3px;
	padding: 8px;
}

.pice-map .thumbnail p{
	color: #fff;
}
.pice-map .thumbnail strong{
	font-weight: 400;
	color: #fff; 
	margin-bottom: 10px; 
	display: block
}
.pice-map .thumbnail h4{
	margin-bottom: 2px; 
	font-weight: 400; 
	font-size: 20px;
	color: #fff;
}
.pice-map .thumbnail{
	border-color: rgba(238, 238, 238, 0.5);
	border-bottom: 3px solid rgba(238, 238, 238, 0.5);
	padding: 8px;
}

.pice-map .thumbnail:hover{
	border-color: #8ad2ce;
	border-bottom: 3px solid #8ad2ce;
	cursor: pointer;
}

.other-address{
	margin-top: 30px;
	color: #fff;
}
.other-address .media-left .fa{
	border: 1px solid #8ad2ce;
	width: 55px;
	height: 55px;
	padding-top: 15px; 
	text-align: center;
	font-size: 20px;
	border-radius: 50%; 
	color: #fff;
}
.pice-map .thumbnail p{
	color: #fff;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
			<div class="container">	
				<div class="row big-map">
					<div class="col-sm-12">
						<!-- google map -->
						<iframe src=http://www.mapi.ie/create-google-map/map.php?width=100%&amp;height=350&amp;hl=en&amp;q=Nesapakkam+(SuggestionCART)&amp;ie=UTF8&amp;t=&amp;z=14&amp;iwloc=A&amp;output=embed" width="100%" height="370" allowfullscreen></iframe>
					</div>
				</div>	
				<div class="row">
					<div class="col-sm-6">
						<h2 class="t-color-6">Get In Touch</h2>
						<div class="heading-border b-color-1"></div>
						<ul class="media-list other-address">
							<li class="media">
								<div class="media-body">
						<p>Lorem ipsum dolor sit amet, no mea aeterno indoctum percipitur. Homero quaerendum ius ei. In pro decore tamquam appetere, ea mentitum mediocrem efficiantur quo. Quo no assentior conclusionemque ceteros accusata.</p>
								</div>
							</li>
							<li class="media">
								<div class="media-left">
									<i class="fa fa-map"></i>
								</div>
								<div class="media-body">
									<p>Lebel 2, 13 Elezabe, +8492575, USA</p>
									<p> Melbounire, Victoria 3000, +8492575, USA</p>
								</div>
							</li>
							<li class="media">
								<div class="media-left">
									<i class="fa fa-envelope-o"></i>
								</div>
								<div class="media-body">
									<p>support@gmail.com</p>
									<p>example@gmail.com</p>
								</div>
							</li>
							<li class="media">
								<div class="media-left">
									<i class="fa fa-mobile"></i>
								</div>
								<div class="media-body">
									<p>+880183947930</p>
									<p>+(980)1839479</p>
								</div>
							</li>
							<li class="media">
								<div class="media-left">
									<i class="fa fa-clock-o"></i>
								</div>
								<div class="media-body">
									<p>From Monday to Friday</p>
									<p>9.00 AM to 5.00 PM</p>
								</div>
							</li>
						</ul>
					</div>
					<div class="col-sm-6">
						<h2 class="t-color-6">FeedBack</h2>
						<div class="heading-border b-color-1"></div>
						<div class="row form">
							<div class="col-sm-6">
								<div class="form-group">
									<input type="text" class="form-control" id="exampleInputEmail1" placeholder="Name">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
								</div>
							</div>
							<div class="col-sm-12">
								<div class="form-group">
									<input type="text" class="form-control" id="exampleInputEmail1" placeholder="Subject">
								</div>
							</div>
							<div class="col-sm-12">
								<div class="form-group">
									<textarea class="form-control" rows="8" placeholder="Message"></textarea>
								</div>
								<button class="btn btn-Primary btn-lg" type="submit">Send Message</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>