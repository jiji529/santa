<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SANTA</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">

<!-- Template Main CSS File -->
<link href="resources/css/style.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="https://kit.fontawesome.com/20962f3e4b.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<style>
ul {
	list-style: none;
	padding-left: 0px;
}
</style>

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

  <!-- ======= 베너 Section ======= -->
  <section id="banner" class="d-flex justify-content-center align-items-center img-fluid">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3000">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="resources/img/배너1.png" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="resources/img/베너2.png" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="resources/img/베너3.png" class="d-block w-100" alt="...">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
  </section>
  <!-- End 베너 -->

  <main id="main">

    <!-- ======= 신상품 Section ======= -->
    <section id="popular-courses" class="courses">
      <div class="container" ><!-- data-aos="fade-up" -->
      
        <div class="section-title">
          <h2>New</h2>
          <p>신상품</p>
        </div>

        <div class="row" ><!-- data-aos="zoom-in" data-aos-delay="100" -->

       	 <c:forEach var="item" items="${list}">
          <div class="col-lg-3 col-md-6 align-items-stretch mt-4">
            <div class="course-item">
			<!-- <img src="resources/img/아이폰15pro.jpg" class="img-fluid" alt="..."> -->
			  <p>${item.pImg1}</p> <!-- 이미지 DB에 제대로 넣으면 바꿔야해! -->
              <div class="course-content">
                <div class="d-flex justify-content-between align-items-center mb-3">
                  <h4>제조사</h4>
                  <p class="price"><a href="detail.do?pNo=${item.pNo}">${item.pName}</a></p>
                </div>

                <p>${item.pCode}</p>
                <p>${item.pInfo}</p>
              </div>
            </div>
          </div> <!-- End 상품 -->
		</c:forEach>

        </div>
        
        <br>
        <div class="d-flex align-items-center justify-content-center">
        	<a href="#" class="btn outlinegrey medium" style="border: 1px solid #eef0ef;"> 더보기 </a>
        </div>

      </div>
    </section>
    <!-- End 인기상품 Section -->
    
    

  </main>
  <!-- End #main -->

	<!-- ======= Footer ======= -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- End Footer -->

  <a href="#"><img src="resources/img/화살표.png"  class="back-to-top d-flex align-items-center justify-content-center" alt="..." >top</a>
 
  <!-- Template Main JS File -->
  <script src="resources/js/main.js"></script>
</body>
</html>