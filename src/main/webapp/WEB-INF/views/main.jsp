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

  <!-- Favicons -->
  <link href="resources/img/favicon.png" rel="icon">
  <link href="resources/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="resources/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="resources/vendor/aos/aos.css" rel="stylesheet">
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="resources/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="resources/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="resources/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <link href="resources/scss/_variables.scss" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="resources/css/style.css" rel="stylesheet">
</head>
<body>
	
  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="/">SANTA</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="active" href="main.jsp">Home</a></li>
          <li><a href="about.html">고객센터</a></li>
          <li><a href="courses.html">마이페이지</a></li>
          <li><a href="trainers.html">관심상품</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <a href="login.do" class="get-started-btn">Login</a>

    </div>
  </header><!-- End Header -->

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
                  <p class="price"><a href="course-details.html">${item.pName}</a></p>
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
  <footer id="footer">
	<div class="footer-top">
		<div class="container">
			 <div class="row">
			 
			   <div class="col-lg-2 col-md-4 footer-links">
			     <h4>이용안내</h4>
			     <ul>
			       <li><i class="bx bx-chevron-right"></i> <a href="#">검수기준</a></li>
			       <li><i class="bx bx-chevron-right"></i> <a href="#">이용정책</a></li>
			       <li><i class="bx bx-chevron-right"></i> <a href="#">패널티정책</a></li>
			       <li><i class="bx bx-chevron-right"></i> <a href="#">커뮤니티 가이드라인</a></li>
			     </ul>
			   </div>
			
			   <div class="col-lg-2 col-md-4 footer-links">
			     <h4>고객지원</h4>
			     <ul>
			       <li><i class="bx bx-chevron-right"></i> <a href="#">공지사항</a></li>
			       <li><i class="bx bx-chevron-right"></i> <a href="#">서비스 소개</a></li>
			       <li><i class="bx bx-chevron-right"></i> <a href="#">스토어 안내</a></li>
			       <li><i class="bx bx-chevron-right"></i> <a href="#">판매자 방문접수</a></li>
			     </ul>
			   </div>
			
			   <div class="col-lg-2 col-md-1 footer-links">
			     <h4>회사소개</h4>
			   </div>
			   
			   <div class="col-lg-2 col-md-1 footer-links">
			     <h4>이용약관</h4>
			   </div>
			   
			   <div class="col-lg-2 col-md-1 footer-links">
			     <h4>개인정보처리방침</h4>
			   </div>
			   
			   <div class="col-lg-2 col-md-5 text-right footer-contact">
			     <h4>고객센터</h4>
			     <p>
			       대전광역시 동구 가양동 <br>
			       우암로 352-21<br><br>
			       <strong>Tel:</strong> +82 42 000 0000 <br>
			       <strong>Email:</strong> polytechonly@gmail.com<br>
			     </p><br>
				   <a href="support.do" class="btn btn-dark btn-sm "><i class="bi bi-vector-pen"></i>1:1문의</a>
			   </div>
			   
			
			</div>
		</div>
	</div>
  </footer><!-- End Footer -->

  <a href="#"><img src="resources/img/화살표.png"  class="back-to-top d-flex align-items-center justify-content-center" alt="..." >top</a>
  
   <!-- Vendor JS Files -->
  <script src="resources/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="resources/vendor/aos/aos.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="resources/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="resources/js/main.js"></script>
</body>
</html>