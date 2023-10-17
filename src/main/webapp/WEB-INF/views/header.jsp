<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 파비콘! -->
<link href="${pageContext.request.contextPath}/resources/img/favicon.png" rel="icon">

<!-- Google Fonts NotoSans -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;600;700&display=swap"
	rel="stylesheet preload" as="style">

<!-- Template Main CSS File -->
<!-- 부트스트랩 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<!-- main.css -->
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
<!-- header.css -->
<link href="${pageContext.request.contextPath}/resources/css/header.css" rel="stylesheet">
<!-- 아이콘 요소들 링크 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
	<!-- ======= Header ======= -->
	<header>
		<div class="top">
			<c:if test="${sessionScope.loginUser == null}">
				<div>
					<a href="${pageContext.request.contextPath}/login.do">로그인</a>
					<a href="${pageContext.request.contextPath}/member/join">회원가입</a>
					<a href="">마이페이지</a> 
					<a href=""><i class="fa fa-shopping-cart" aria-hidden="true"></i>관심상품</a>
				</div>
			</c:if>

			<c:if test="${sessionScope.loginUser != null}">
				<div>
					<p>${loginUser.userEmail}님 환영합니다!</p>
					<a href="${pageContext.request.contextPath}/logout.do">로그아웃</a>
					<a href="${pageContext.request.contextPath}/mypage.do">마이페이지</a>
					<a href=""><i class="fa fa-shopping-cart" aria-hidden="true"></i>관심상품</a>
				</div>
			</c:if>
			<!-- 				<a href="login.do">로그인</a> -->
		</div>
		<div class="logo">
			<div>
				<a href="/"> <img src="${pageContext.request.contextPath}/resources/img/logo_2.png" alt="헤더로고"></a>
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