<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Google Fonts -->
<link	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="/resources/css/header.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/20962f3e4b.js" crossorigin="anonymous"></script>
</head>
<body>
	<!-- ======= Header ======= -->
	<header>
		<div class="top">
			<c:if test="${sessionScope.loginUser == null}">
				<div>
					<a href="${pageContext.request.contextPath}/login.do">로그인</a> <a
						href="${pageContext.request.contextPath}/member/join">회원가입</a> <a
						href="">마이페이지</a> <a href=""><i class="fa fa-shopping-cart"
						aria-hidden="true"></i></a>장바구니
				</div>
			</c:if>

			<c:if test="${sessionScope.loginUser != null}">
				<div>
					<p>${loginUser.userEmail}님환영합니다!</p>
					<a href="${pageContext.request.contextPath}/logout.do">로그아웃</a> <a
						href="">마이페이지</a> <a href=""><i class="fa fa-shopping-cart"
						aria-hidden="true"></i></a>장바구니
				</div>
			</c:if>
			<!-- 				<a href="login.do">로그인</a> -->
		</div>
		<div class="logo">
			<div>
				<a href="/"> <img src="/resources/img/로고.png" alt="헤더로고"></a>
<!-- 				<form action="#"> -->
<!-- 					<input type="text" name="search"> -->
<!-- 					<button> -->
<!-- 						<i class="fa fa-search" aria-hidden="true"></i> -->
<!-- 					</button> -->
<!-- 				</form> -->
			</div>
		</div>
<!-- 		<div class="menu"> -->
<!-- 			<div class="menu_index"> -->
<!-- 				<ul> -->
<!-- 					<li><a href="#">노트북</a></li> -->
<!-- 					<li><a href="#">태블릿</a></li> -->
<!-- 					<li><a href="#">핸드폰</a></li> -->
<!-- 					<li><a href="#">액세서리</a></li> -->
<!-- 				</ul> -->
<!-- 			</div> -->
<!-- 			<div class="menu_indexr"> -->
<!-- 				<form class="search" action="#"> -->
<!-- 					<input class="search_box" type="text" name="search"> -->
<!-- 					<button class="search_button"> -->
<!-- 						<i class="fa fa-search" aria-hidden="true"></i> -->
<!-- 					</button> -->
<!-- 				</form> -->
<!-- 			</div> -->
<!-- 		</div> -->
	</header>
	<!-- End Header -->
</body>
</html>