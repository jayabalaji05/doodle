<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<head>
<title>Admin Page</title>
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
	$(function() {

		var $formLogin = $('#login-form');
		var $formLost = $('#lost-form');
		var $formRegister = $('#register-form');
		var $divForms = $('#div-forms');
		var $modalAnimateTime = 300;
		var $msgAnimateTime = 150;
		var $msgShowTime = 2000;

		$("form")
				.submit(
						function() {
							switch (this.id) {
							case "login-form":
								var $lg_username = $('#login_username').val();
								var $lg_password = $('#login_password').val();
								if (($lg_username == "niit"
										&& $lg_password == "niit")||($lg_username=="admin"&&$lg_password=="admin")) {
									msgChange($('#div-login-msg'),
											$('#icon-login-msg'),
											$('#text-login-msg'), "success",
											"glyphicon-ok", "Login Successful");
									request.getRequestDispatcher("").forward(
											request, response);
								} else {
									msgChange($('#div-loginS-msg'),
											$('#icon-login-msg'),
											$('#text-login-msg'), "error",
											"glyphicon-remove", "Login error");
								}
								return false;
								break;
							case "lost-form":
								var $ls_email = $('#lost_email').val();
								if ($ls_email == "ERROR") {
									msgChange($('#div-lost-msg'),
											$('#icon-lost-msg'),
											$('#text-lost-msg'), "error",
											"glyphicon-remove", "Send error");
								} else {
									msgChange($('#div-lost-msg'),
											$('#icon-lost-msg'),
											$('#text-lost-msg'), "success",
											"glyphicon-ok", "Send OK");
								}
								return false;
								break;
							case "register-form":
								var regMail = /^([_a-zA-Z0-9-]+)(\.[_a-zA-Z0-9-]+)*@([a-zA-Z0-9-]+\.)+([a-zA-Z]{2,3})$/;
								var $rg_username = $('#username').val();
								var $rg_email = $('#email').val();
								var $rg_password = $("#pass1").val();
								var $rg_password2 = $("#pass2").val();
								if ($rg_password != $rg_password2
										|| regMail.test($rg_email) == false) {
									msgChange($('#div-register-msg'),
											$('#icon-register-msg'),
											$('#text-register-msg'), "error",
											"glyphicon-remove",
											"Registeration error");
								} else {
									msgChange($('#div-register-msg'),
											$('#icon-register-msg'),
											$('#text-register-msg'), "success",
											"glyphicon-ok",
											"Registered Successfully");
									request.getRequestDispatcher("").forward(
											request, response);
								}
								return false;
								break;
							default:
								return false;
							}

							return false;
						});

		$('#login_register_btn').click(function() {
			modalAnimate($formLogin, $formRegister)
		});
		$('#register_login_btn').click(function() {
			modalAnimate($formRegister, $formLogin);
		});
		$('#login_lost_btn').click(function() {
			modalAnimate($formLogin, $formLost);
		});
		$('#lost_login_btn').click(function() {
			modalAnimate($formLost, $formLogin);
		});
		$('#lost_register_btn').click(function() {
			modalAnimate($formLost, $formRegister);
		});
		$('#register_lost_btn').click(function() {
			modalAnimate($formRegister, $formLost);
		});

		function modalAnimate($oldForm, $newForm) {
			var $oldH = $oldForm.height();
			var $newH = $newForm.height();
			$divForms.css("height", $oldH);
			$oldForm.fadeToggle($modalAnimateTime, function() {
				$divForms.animate({
					height : $newH
				}, $modalAnimateTime, function() {
					$newForm.fadeToggle($modalAnimateTime);
				});
			});
		}

		function msgFade($msgId, $msgText) {
			$msgId.fadeOut($msgAnimateTime, function() {
				$(this).text($msgText).fadeIn($msgAnimateTime);
			});
		}

		function msgChange($divTag, $iconTag, $textTag, $divClass, $iconClass,
				$msgText) {
			var $msgOld = $divTag.text();
			msgFade($textTag, $msgText);
			$divTag.addClass($divClass);
			$iconTag.removeClass("glyphicon-chevron-right");
			$iconTag.addClass($iconClass + " " + $divClass);
			setTimeout(function() {
				msgFade($textTag, $msgOld);
				$divTag.removeClass($divClass);
				$iconTag.addClass("glyphicon-chevron-right");
				$iconTag.removeClass($iconClass + " " + $divClass);
			}, $msgShowTime);
		}
	});
	$(document)
			.ready(
					function() {

						//minimum 8 characters
						var bad = /(?=.{8,}).*/;
						//Alpha Numeric plus minimum 8
						var good = /^(?=\S*?[a-z])(?=\S*?[0-9])\S{8,}$/;
						//Must contain at least one upper case letter, one lower case letter and (one number OR one special char).
						var better = /^(?=\S*?[A-Z])(?=\S*?[a-z])((?=\S*?[0-9])|(?=\S*?[^\w\*]))\S{8,}$/;
						//Must contain at least one upper case letter, one lower case letter and (one number AND one special char).
						var best = /^(?=\S*?[A-Z])(?=\S*?[a-z])(?=\S*?[0-9])(?=\S*?[^\w\*])\S{8,}$/;

						$('#pass1')
								.on(
										'keyup',
										function() {
											var password = $(this);
											var pass = password.val();
											var passLabel = $('[for="password"]');
											var stength = 'Weak';
											var pclass = 'danger';
											if (best.test(pass) == true) {
												stength = 'Very Strong';
												pclass = 'success';
											} else if (better.test(pass) == true) {
												stength = 'Strong';
												pclass = 'warning';
											} else if (good.test(pass) == true) {
												stength = 'Almost Strong';
												pclass = 'warning';
											} else if (bad.test(pass) == true) {
												stength = 'Weak';
											} else {
												stength = 'Very Weak';
											}

											var popover = password.attr(
													'data-content', stength)
													.data('bs.popover');
											popover.setContent();
											popover.$tip
													.addClass(
															popover.options.placement)
													.removeClass(
															'danger success info warning primary')
													.addClass(pclass);

										});

						$('input[data-toggle="popover"]').popover({
							placement : 'top',
							trigger : 'focus'
						});

					})
	function email_validate(email) {
		var regMail = /^([_a-zA-Z0-9-]+)(\.[_a-zA-Z0-9-]+)*@([a-zA-Z0-9-]+\.)+([a-zA-Z]{2,3})$/;

		if (regMail.test(email) == false) {
			document.getElementById("status").innerHTML = "<span class='warning'>Email address is not valid yet.</span>";
		} else {
			document.getElementById("status").innerHTML = "<span class='valid'>Thanks, you have entered a valid Email address!</span>";
		}
	}
	function validatephone(phone) {
		var maintainplus = '';
		var numval = phone.value
		if (numval.charAt(0) == '+') {
			var maintainplus = '';
		}
		curphonevar = numval.replace(
				/[\\A-Za-z!"£$%^&\,*+_={};:'@#~,.\/<>?|`¬\]\[]/g, '');
		phone.value = maintainplus + curphonevar;
		var maintainplus = '';
		phone.focus;
	}
	function checkPass() {
		var pass1 = document.getElementById('pass1');
		var pass2 = document.getElementById('pass2');
		var message = document.getElementById('confirmMessage');
		if (pass1.value == pass2.value) {
			message.innerHTML = "Passwords Match"
		} else {
			message.innerHTML = "Passwords Do Not Match!"
		}
	}
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
body { 
  background: url(http://cdn.wonderfulengineering.com/wp-content/uploads/2014/09/blue-wallpaper-36.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
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

#login-modal input[type=text], input[type=password] {
	margin-top: 10px;
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
section{
	padding: 3rem 0;
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

#login-modal input[type=text], input[type=password] {
	margin-top: 10px;
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
@import url(https://fonts.googleapis.com/css?family=Yantramanav:400,100,700,500,900,300);
@import url(https://fonts.googleapis.com/css?family=Black+Ops+One&subset=latin,latin-ext);
@import "compass/css3";
@import url(http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,700,400italic);

font-family: 'Open Sans', sans-serif;

html {
  font-family: 'Open Sans', sans-serif;
}

body {
  min-height: 3000px;
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


.heading-border{
	width: 50px;
	height: 1px;
	opacity: 0.5;
	margin-bottom: 30px;
}
section.all-pro{
	padding: 1em 0;
}

section.promo section offset-header{
background: url(http://www.pageresource.com/wallpapers/wallpaper/texture-ground-back-white-textured-textureimages_1175896.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  }


.promo {
 background:#fff;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;

  color: #0B82F0;
  padding-top: 40px;
  
}
.promo .title {
  font-size: 98px;
  color: #0B82F0;
  margin-top: 0;
}
.promo .title .highlight {
  color: #0B82F0;
}
.promo .intro {
  font-size: 28px;
  max-width: 680px;
  margin: 0 auto;
  margin-bottom: 30px;
}
.promo .btns .btn {
  margin-right: 15px;
  font-size: 18px;
  padding: 8px 30px;
}
.promo .meta {
  margin-top: 120px;
  margin-bottom: 30px;
  color: #fff;
}
.promo .meta li {
  margin-right: 15px;
}
.promo .meta a {
  color: #fff;
}
.promo .meta a:hover {
  color: #fff;
}
.promo .social-media {
  background: #fff;
  padding: 10px 0;
  margin: 0 auto;
}
.promo .social-media li {
  margin-top: 15px;
}
.promo .social-media li.facebook-like {
  margin-top: 0;
  position: relative;
  top: -5px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<button class="navbar-toggle" type="button" data-toggle="collapse"
				data-target=".js-navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="admin">SuggestionCART</a>
		</div>
		<div class="collapse navbar-collapse js-navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="dropdown mega-dropdown"><a href="addcategory"
					class="dropdown-toggle" >Category</a>
					</li>
				<li class="dropdown mega-dropdown"><a href="addsupplier"
					class="dropdown-toggle" >Supplier<span
						></span></a>
					</li>
				<li class="dropdown mega-dropdown"><a href="addproduct"
					class="dropdown-toggle" >Products<span
						></span></a>
					</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<c:if test="${empty SuccessMessage}">
				</c:if>
				<c:if test="${not empty SuccessMessage}">
					<li><a href="logout">Logout<span
							class="glyphicon glyphicon-log-out"></span></a></li>
				</c:if>
			</ul>
		</div>
	</div>
	</nav>
</body>
</html>