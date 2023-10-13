<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Template Main CSS File -->
<link href="resources/css/header.css" rel="stylesheet">

<script src="https://kit.fontawesome.com/20962f3e4b.js" crossorigin="anonymous"></script>
</head>
<body>
	<!-- ======= Header ======= -->
	<header>
		<div class="top">
			<div>
				<a href="login.do">로그인</a>
				<a href="">마이페이지</a>
				<a href=""><i class="fa fa-shopping-cart" aria-hidden="true"></i></a><!--장바구니-->
			</div>
		</div>
		<div class="logo">
			<div>
				<a href="#"> <img src="./img/header_logo.png" alt="헤더로고">
				</a>
				<form action="#">
					<input type="text" name="search">
					<button>
						<i class="fa fa-search" aria-hidden="true"></i>
					</button>
				</form>
			</div>
		</div>
		<div class="menu">
			<div class="menu_index">
				<ul>
					<li><a href="#">히트상품</a></li>
					<li><a href="#">추천상품</a></li>
					<li><a href="#">최신상품</a></li>
					<li><a href="#">인기상품</a></li>
					<li><a href="#">할인상품</a></li>
				</ul>
			</div>
			<div class="menu_indexr">
				<form class="search" action="#">
					<input class="search_box" type="text" name="search">
					<button class="search_button">
						<i class="fa fa-search" aria-hidden="true"></i>
					</button>
				</form>
			</div>
		</div>
	</header>
	<!-- End Header -->
</body>
</html>