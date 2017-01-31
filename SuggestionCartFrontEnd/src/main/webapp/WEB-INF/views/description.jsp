<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mobile Description</title>
<link href='https://fonts.googleapis.com/css?family=Passion+One'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
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
	var cartApp = angular.module ("addToCartApp", []);

	 cartApp.controller("addToCartCtrl", function ($scope, $http){
	 	
	 	 /*
	      * retrieveCart method is used to get all cart items at the starting of the application
	      */
	     $scope.retrieveCart = function (cartId) {
	 		console.log(cartId);
	         $scope.cartId = cartId;
	         $scope.refreshCartItems(cartId);
	     };
	     
	     
	     /*
	      * removeItemFromCart method is used to remove a item from the cart
	      */
	     $scope.removeItemFromCart = function (id) {
	         $http.put('http://localhost:9080/SuggestionCartFrontEnd/removeItem/'+id).success(function (data) {
	             $scope.refreshCartItems();
	         });
	     };

	 	 /*
	      * addItemToCart method is used to add items into the cart
	      */
	     $scope.addItemToCart = function (id) {
	         $http.put('http://localhost:9080/SuggestionCartFrontEnd/product_description/usercart/cart/addItem/'+id).success(function (data) {
	             alert("Item added to the cart!")
	         });
	     };
	    
	    
	     /*
	      * GrandTotalOfItems method is called on cart page to calculate grand total for the added items
	      */
	     $scope.GrandTotalOfItems = function () {
	         var grandTotal=0;

	         for (var i=0; i<$scope.cart.cartItems.length; i++) {
	             grandTotal+=$scope.cart.cartItems[i].totalPrice;
	        }

	         return grandTotal;
	     };
	     /*
	 	 * refreshCartItems method is called by others methods in same controller to refresh the cart
	 	 */
	     $scope.refreshCartItems = function () {
	         $http.get('http://localhost:9080/SuggestionCartFrontEnd/refreshCart/'+$scope.cartId).success(function (data) {
	            $scope.cart=data;
	         });
	     };
	     
	     /*
	      * clearCartItems method is used to delete all items from the cart
	      */
	     $scope.clearCartItems = function () {
	     	$http['delete']('http://localhost:9080/SuggestionCartFrontEnd/clearCartItems/'+$scope.cartId).success(function (data)
	     			{$scope.refreshCartItems()
	     		});
	     };
	 });
</script>
</head>
<style>
@import url(http://fonts.googleapis.com/css?family=Fjalla+One);
@import url(http://fonts.googleapis.com/css?family=Gudea);
  body, html {
	height: 100%;
	background-repeat: no-repeat;
	background-color: #d3d3d3;
	font-family: 'Oxygen', sans-serif;
}
body { 
  background: url(http://cdn.wonderfulengineering.com/wp-content/uploads/2014/09/blue-wallpaper-36.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
body {
  min-height: 1000px;
  padding-top:23px;
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

 .desk-com{
	border: 1px solid rgba(238, 238, 238, 0.5);
}

.pro-details h2{
	font-weight: 300; 
	font-size: 35px;
	margin-top: 0; 
	margin-bottom: 15px;
	color:#fff; 
}
.pro-details h3{
	color:#fff; 
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
	color: #ccc;
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
	color: #1ac4e2;
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
	color: #8ad2ce;
	cursor: pointer;
}

.p-d-social .fa{
	color: #fff;
	cursor: default;
}

.p-d-social{
	font-weight: 400; 
	font-size: 12px;
	color: #fff;
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
	font-size: 35px;
	color:#fff;
}
	
.description .tab-content p{
	font-weight: 300;
	color: #999;
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
	color: #556273;
}

.description .pager li > a:hover .fa{
	color: #fff;
}

.description .pager li > a{
	color: #999;
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

#pro-img{
    width:420px;
    height:425px;
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
	color: #0B82F0;
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
											<a href="mobile_products"><img
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
								<li><a href="mobile_products">View all Collection <span
										class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Mobile Phones</li>
								<li><a href="mobile_products">Apple</a></li>
								<li><a href="mobile_products">Samsung</a></li>
								<li><a href="mobile_products">Motorola</a></li>
								<li><a href="mobile_products">Lenovo</a></li>
								<li class="divider"></li>
							
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Mobile Accessories</li>
								<li><a>Headsets & Headphones</a></li>
								<li><a>Powerbanks</a></li>
								<li><a>Mobile Cases</a></li>
								<li><a>Screengaurds</a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Laptops</li>
								<li><a>Dell</a></li>
								<li><a>Asus</a></li>
								<li><a>Lenevo</a></li>
							</ul>
						</li>
					</ul></li>
				<li class="dropdown mega-dropdown"><a
					class="dropdown-toggle" data-toggle="dropdown">Appliances<span
						class="caret"></span></a>
					<ul class="dropdown-menu mega-dropdown-menu">
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Appliances</li>
								<div id="menCollection" class="carousel slide" data-ride="carousel">
									<div class="carousel-inner">
										<div class="item active">
											<a><img
												src="https://images-na.ssl-images-amazon.com/images/I/71Gni5tDf9L._SL1500_.jpg"
												class="img-responsive" alt="product 1" style="width:950px;height:200px"></a>
											<h4>
												<small><center>Latest Sony 4K Television</center></small>
											</h4>
										</div>
										<!-- End Item -->
										<div class="item">
											<a><img
												src="http://www.samsung.com/uk/discover/multimedia/article_images/ces-hero-image-v1%202.jpg"
												class="img-responsive" alt="product 2" style="width:950px;height:200px"></a>
											<h4>
												<small><center>New Samsung Ultra HD Television</center></small>
											</h4>
											
										</div>
										<!-- End Item -->
										<div class="item">
											<a><img
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
								<li><a href="mobile_products">View all Collection <span
										class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Television</li>
								<li><a>Sony</a></li>
								<li><a>Samsung</a></li>
								<li><a>VU</a></li>
								<li><a>Panasonic</a></li>
								<li class="divider"></li>
							
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Kitchen Appliances</li>
								<li><a>Microwave Ovens</a></li>
								<li><a>Juicer</a></li>
								<li><a>Water Purifiers</a></li>
								<li><a>Coffee Makers</a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Washing Machine</li>
								<li><a>Fully Automatic Front Load</a></li>
								<li><a>Semi Automatic Top Load</a></li>
								<li><a>Fully Automatic Top Load</a></li>
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
											<a><img
												src="http://www.sonyinsider.com/wp-content/uploads/2010/10/ofy2wz.png"
												class="img-responsive" alt="product 1" style="width:900px;height:200px"></a>
											<h4>
												<small><center>All new PS3</center></small>
											</h4>
											
										</div>
										<!-- End Item -->
										<div class="item">
											<a><img
												src="https://media.playstation.com/is/image/SCEA/playstation-4-slim-vertical-product-shot-01-us-07sep16?$TwoColumn_Image$"
												class="img-responsive" alt="product 2" style="width:900px;height:200px"></a>
											<h4>
												<small><center>Upgraded PS4</center></small>
											</h4>
											
										</div>
										<!-- End Item -->
										<div class="item">
											<a><img
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
								<li><a href="mobile_products">View all Collection <span
										class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Sports</li>
								<li><a>Cricket</a></li>
								<li><a>Badminton</a></li>
								<li><a>Tennis</a></li>
								<li><a>Table Tennis</a></li>
								<li class="divider"></li>
							
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Fitness Accessories</li>
								<li><a>Gloves</a></li>
								<li><a>AB Exercisers</a></li>
								<li><a>Yoga Mats</a></li>
								<li><a>Dumbbells</a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Gaming</li>
								<li><a>PS3</a></li>
								<li><a>PS4</a></li>
								<li><a>Xbox 360</a></li>
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
					<li><a href="cart">My Cart<span
							class="glyphicon glyphicon-shopping-cart"></span></a></li>
					<li><a href="logout">Logout<span
							class="glyphicon glyphicon-log-out"></span></a></li>
				</c:if>
			</ul>
		</div>
	</div>
	</nav>
<div ng-app = "addToCartApp" ng-controller="addToCartCtrl">
<section class="desk-com">
			<div class="container">
				<div class="row">
					<div class="col-sm-5">
						<div id="pro-img" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner" role="listbox">
								<div class="item active"><img src="G:\products/${product.id}.jpg" style="width:420px;height:410px"alt=""></div>
								<div class="item"><img src="G:\products/${product.id}.jpg" style="width:420px;height:410px"alt=""></div>
								<div class="item"><img src="G:\products/${product.id}.jpg" style="width:420px;height:410px"alt=""></div>
							</div>
							<a class="left carousel-control" href="#pro-img" role="button" data-slide="prev"><i class="fa fa-angle-left"></i></a>
							<a class="right carousel-control" href="#pro-img" role="button" data-slide="next"><i class="fa fa-angle-right"></i></a>
						</div>
					</div>
					<div class="col-sm-7">
						<div class="pro-details">
							<p class="category">${product.name}</p>
							<h2>${product.description}</h2>
							<ul class="list-inline rate-stock">
								<li><i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-o"></i>
								</li>
								<li>4 Reviews / Add Your Review </li>
								<li>Availability : In Stock</li>
							</ul>
							<h3>Product Description</h3>
							<p>${product.view}</p>
							<div class="currency">${product.price} Rs</div>
							<button class="btn btn-default" data-ng-click="addItemToCart('${product.id}')">Add to Cart</button>
							<p class="tags">Tags :  <a href="under_construction">laptops</a>, <a href="under_construction">desktops</a>, <a href="mobile_products">mobiles</a></p>
							<ul class="list-inline p-d-social">
								<li>Share with Friends : </li>
								<li><i class="fa fa-flickr"></i></li>
								<li><i class="fa fa-pinterest-square"></i></li>
								<li><i class="fa fa-facebook-square"></i></li>
								<li><i class="fa fa-twitter-square"></i></li>
								<li><i class="fa fa-linkedin-square"></i></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>
		</div>
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
										<li><img class="" src="C:\Users\JB\workspace\SuggestionCartFrontEnd\src\main\resources\images\phone\oneplus-logo.png" /></li>
										<li><img class="" src="C:\Users\JB\workspace\SuggestionCartFrontEnd\src\main\resources\images\phone\LG-Logo-face.png" /></li>
										<li><img class="" src="C:\Users\JB\workspace\SuggestionCartFrontEnd\src\main\resources\images\phone\HTC-logo.png" /></li>
										
																			</ul>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="row">	
								<div class="col-sm-12">
									<ul class="list-inline text-center">
										<li><img class="" src="C:\Users\JB\workspace\SuggestionCartFrontEnd\src\main\resources\images\phone\logo-xiaomi.jpg" /></li>
										<li><img class="" src="C:\Users\JB\workspace\SuggestionCartFrontEnd\src\main\resources\images\phone\google_2015_logo_detail.png" /></li>
										<li><img class="" src="C:\Users\JB\workspace\SuggestionCartFrontEnd\src\main\resources\images\phone\Logo Oppo.png" /></li>
										<li><img class="" src="C:\Users\JB\workspace\SuggestionCartFrontEnd\src\main\resources\images\phone\lenovo_logo_detail.png" /></li>
										<li><img class="" src="C:\Users\JB\workspace\SuggestionCartFrontEnd\src\main\resources\images\phone\intel_logo2.jpg" /></li>							
										
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
                    
                                <h1 class="title-widget">About Us Links</h1>
                                
                                <ul>
                                	<li><a  href="about_us"><i class="fa fa-angle-double-right"></i> About Us</a></li>
                                    </ul>
                    
							</li>
                            
                        </ul>
                         
                      
                </div><!-- widgets column left end -->
                
                
                
                <div class="col-lg-3 col-md-3"><!-- widgets column left -->
            
                <ul class="list-unstyled clear-margins"><!-- widgets -->
                        <li class="widget-container widget_nav_menu"><!-- widgets list -->
                    
                                <h1 class="title-widget">Contact Us links</h1>
                                
                                <ul>


                <li><a href="contact_us"><i class="fa fa-angle-double-right"></i> Contact us</a></li>
 				

                                </ul>
							</li>
                            
                        </ul>
                         
                      
                </div><!-- widgets column left end -->
                
                
                
                <div class="col-lg-3 col-md-3"><!-- widgets column left -->
            
                <ul class="list-unstyled clear-margins"><!-- widgets -->
                        
                            
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
</body>
</html>