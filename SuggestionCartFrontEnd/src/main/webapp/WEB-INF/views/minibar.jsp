<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="css/font-awesome.min.css" rel="stylesheet">
		<link href="css/linearicons.css" rel="stylesheet">
        <link href="css/owl.carousel.css" rel="stylesheet">
        <link href="css/owl.theme.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
		<link href="css/responsive.css" rel="stylesheet">
<style>
@import url(https://fonts.googleapis.com/css?family=Open+Sans:400,800,700,600,300);
@import url(https://fonts.googleapis.com/css?family=Raleway:400,900,700,600,500,300,200,100,800);
@import url(https://fonts.googleapis.com/css?family=Lobster);
@import url(https://fonts.googleapis.com/css?family=Playball);

#content{
    margin-top: 100px;
    z-index: 0;
    position: absolute;
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
#div-login-msg, #div-lost-msg, #div-register-msg {
	border: 1px solid #dadfe1;
	height: 30px;
	line-height: 28px;
	transition: all ease-in-out 500ms;
}

#div-login-msg.success, #div-lost-msg.success, #div-register-msg.success
	{
	border: 1px solid #68c3a3;
	background-color: #c8f7c5;
}

#div-login-msg.error, #div-lost-msg.error, #div-register-msg.error {
	border: 1px solid #eb575b;
	background-color: #ffcad1;
}

#icon-login-msg, #icon-lost-msg, #icon-register-msg {
	width: 30px;
	float: left;
	line-height: 28px;
	text-align: center;
	background-color: #dadfe1;
	margin-right: 5px;
	transition: all ease-in-out 500ms;
}

#icon-login-msg.success, #icon-lost-msg.success, #icon-register-msg.success
	{
	background-color: #68c3a3 !important;
}

#icon-login-msg.error, #icon-lost-msg.error, #icon-register-msg.error {
	background-color: #eb575b !important;
}

#img_logo {
	max-height: 100px;
	max-width: 100px;
}

.modal-backdrop.in {
	filter: alpha(opacity = 80);
	opacity: .50;
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

.btn:focus, .btn:active:focus, .btn.active:focus, .btn.focus, .btn:active.focus,
	.btn.active.focus {
	outline: none;
}

.btn-lg, .btn-group-lg>.btn {
	border-radius: 0px;
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
  background: url(http://cdn.wonderfulengineering.com/wp-content/uploads/2014/09/blue-wallpaper-36.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}

#container {
	width: 1000px; /* The width is fixed by pixels */
	height: 800px; /* The height is fixed by pixels*/
	color: #fff;
}

#login-dp {
	min-width: 250px;
	padding: 14px 14px 0;
	overflow: hidden;
	background-color: rgba(255, 255, 255, .8);
}

#login-dp .help-block {
	font-size: 12px
}

#login-dp .bottom {
	background-color: rgba(255, 255, 255, .8);
	border-top: 1px solid #ddd;
	clear: both;
	padding: 14px;
}

#login-dp .social-buttons {
	margin: 12px 0
}

#login-dp .social-buttons a {
	width: 49%;
}

#login-dp .form-group {
	margin-bottom: 10px;
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


/* small menu */
.small-menu{
   background-color: #8ad2ce;
	border-bottom-color: #63b5b2;
    min-height: 30px;  
}

.small-menu .list-inline{
    margin: 4px 0;
    margin-right: 200px;
}

.info-link{
    margin-bottom: 0;
}

.social-link > li,
.info-link > li {    
    font-size: 11px; 
    padding-right: 20px;
    padding-left: 0;
    cursor: pointer;
}


.social-link > li > span, 
.info-link > li > span {
    color: #555;
    display: inline-block;
    font-size: 11px;
    font-weight: 600;
    letter-spacing: -0.5px;
    margin-left: 20px;
    text-transform: uppercase;
    word-spacing: 2px;
}

.list-inline li:last-child{
    padding-right: 0 !important;
}

.social-link > li:first-child span{
    text-transform: lowercase;
}

.social-link > li > i.fa,
.info-link > li > i.fa {
    color: #0B82F0;
    float: left;
    margin-top: 1px;
}

.small-menu-2{
    background-color: #f6f6f6;
    
    
}

.small-menu-2 .social-link > li > span, 
.small-menu-2 .info-link > li > span{
    color: #606060;
}

</style>
</head>
<body>
<header class="header">
<div class="header-top">
<div class="small-menu small-menu-2">
                <div class="container">
                    <div class="row">
                    <div class="col-md-5 col-sm-4 col-xs-7">
                            <ul class="list-inline pull-right social-link">
                                <li><a href="https://www.gmail.co.in/" title="Email" target="_blank"><i class="fa fa-paper-plane"></i><span class="hidden-sm hidden-xs">jb20594@gmail.com </span></a></li>
                                <li><a href="https://www.facebook.com/" class="icoFacebook" title="Facebook" target="_blank"><i class="fa fa-facebook"></i></a></li>
                                 <li><a href="https://www.twitter.com/" class="icoTwitter" title="Twitter" target="_blank"><i class="fa fa-twitter"></i></a></li>
                                 <li><a href="https://www.plus.google.com/" class="icoGoogle" title="Google +" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                               <li><a href="https://www.instagram.com/" class="icoInstagram" title="Instagram" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            </header>
</body>
</html>