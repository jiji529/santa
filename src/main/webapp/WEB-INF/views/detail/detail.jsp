<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SANTA</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  
  <!-- 상세페이지: event -->
  <link rel="stylesheet" href="css/event.css">
  
  <!-- 리뷰추가 새창 -->
  <link rel="stylesheet" href="css/review.css">

  <!-- Favicons -->
  <link href="resources/img/favicon.png" rel="icon">
  <link href="resources/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="resources/vendor/aos/aos.css" rel="stylesheet">
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="resources/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

  <!-- Template Main CSS File -->
  <link href="resources/assets/css/style.css" rel="stylesheet">
  
  
</head>
<body>
	
  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="index.html">SANTA</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="active" href="index.html">Home</a></li>
          <li><a href="about.html">고객센터</a></li>
          <li><a href="courses.html">마이페이지</a></li>
          <li><a href="trainers.html">관심상품</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <a href="courses.html" class="get-started-btn">Login</a>

    </div>
  </header><!-- End Header -->



  <main id="main" class="min">
    <!-- ======= 상세페이지 section ======= -->
    
    <section id="events" class="events">
      <div id="product" class="container" data-aos="fade-up">

        <div class="row">
          <div class="col-md-6 d-flex align-items-stretch">
            <div class="card">
              <div class="card-img">
                <img src="resources/img/product/${product.pImg1}" alt="제품사진">
              </div>
       
            </div>
          </div>
          <div class="col-md-6 d-flex align-items-stretch">
            <div class="card">
              <div class="card-body">
              	
              	
                <p><a href="#"><strong>${comName}</strong></a></p>
                <h5 class="card-title">${product.pName}</h5>
                <h5 class="pCodeWrite">${product.pCode}</h5>
                <p>발매가 : ${product.releasePrice}원</p>
                <hr>
                <p>최근거래가 : <fmt:formatNumber value="${product.recentPrice}" pattern="#,###,###"/>원</p>
                
                <div id="redBlueButton">
                	<button type="button" class="OneRedBtn btn btn-danger">
                		<div class="btnDesign" id="FrontRed"><a href="buy.do?pNo=${product.pNo}">구매</a></div>
                		<div class="btnDesign" id="BackRed">
                			<p class="p1">
                				<fmt:formatNumber value="${product.immediatePurchacePrice}" pattern="#,###,###"/><span class="p2">원</span>
                			</p>
                			<p class="p3">즉시 구매가</p>
                		</div>
                	</button>
                	
                	<button type="button" class="btn btn-danger">
                		<div class="btnDesign" id="FrontRed">판매</div>
                		<div class="btnDesign" id="BackRed">
                			<p class="p1">
                				<fmt:formatNumber value="${product.immediateSellingPrice}" pattern="#,###,###"/><span class="p2">원</span>
                			</p>
                			<p class="p3">즉시 판매가</p>
                		</div>
                	</button>
                </div>
                <div class="d-grid gap-1">
                	<button type="button" class="btn btn-light btn-lg"><div class="OneLikeBtn">관심 상품</div></button>
                </div>
                <!-- <p class="card-text">Sed ut perspiciatis unde omniddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddds iste natus error sit voluptatem doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo</p> -->
              </div>
            </div>

          </div>
        </div>
        <div id="graph-center">
        	<h1 class="text-center">상품 등급 별 거래현황</h1>
			<canvas id="Sline-chart" width="400vw" height="400vh"></canvas>
			<canvas id="Aline-chart" width="400vw" height="400vh"></canvas>
			<canvas id="Bline-chart" width="400vw" height="400vh"></canvas>
		</div>

      </div>
    </section><!-- End Events Section -->

    <!-- ======= 리뷰 section ======= -->
    <section id="popular-courses" class="courses">
      <div class="container"><!-- data-aos="fade-up" -->

        <div class="section-title">
          <h2>Review</h2>
          <p>Review</p>
          <button type="button" id="rvAdd">리뷰추가</button>
          
        </div>

        <div class="row"><!-- data-aos="zoom-in" data-aos-delay="100" -->

		<c:if test="${rvList.size() < 1}">
			<li>등록 된 리뷰가 없습니다</li>
		</c:if>

		<c:forEach var="rvListOne" items="${rvList}">
	          <div class="col-lg-3 col-md-6 d-flex align-items-stretch mt-4">
		          	<div id="rvOne" class="course-item">
		            
		              <img src="upload/${rvListOne.rvNewImg}${rvListOne.rvExtn}" class="ajaxRvImg rvImgSize img-fluid" alt="...">
		              
		              <div class="course-content">
			                <div class="d-flex justify-content-between align-items-center mb-3">
			                 	<p class="price">${rvListOne.rvDate}</p>
			                </div>
			                <p class="ajaxRvContent">${rvListOne.rvContent}</p>
			                <div class="trainer d-flex justify-content-between align-items-center">
			                  <div class="trainer-profile d-flex align-items-center">
			                    <span class="ajaxUserEmail">${rvListOne.userEmail}</span>
			                  </div>
			                </div>
		              </div>
		              
		              
		            </div>
	          </div> 
		</c:forEach>
		<!-- End 상품 -->
          
        </div>

      </div>
    </section>
    <!-- End 인기상품 Section -->

  </main>
  <!-- End #main -->
  
  <!-- 리뷰추가 새창 -->
  
    <div>
        <form id="rvForm" method="POST" enctype="multipart/form-data">
        	<input type="hidden" name="pNo" value="${product.pNo}">
            아이디: <c:out value="${loginUser.userEmail}"/><br>
            리뷰사진: 
            <label for="rvImg">이미지 첨부</label>
            <input type="file" id="rvImg" name="rvImg"><br>
            내용: <input type="text" name="rvContent"><br>
            <input type="button" value="확인" id="rvSave">
            <input type="button" value="취소" id="rvCancel">
        </form>

    </div>
    
<!-- 리뷰 한 개씩 폼 -->
<template id="rvTemp">    
	    
	<div class="col-lg-3 col-md-6 d-flex align-items-stretch mt-4">
	  	<div id="rvOne" class="course-item">
	    
	      <img src="upload/${rvListOne.rvNewImg}${rvListOne.rvExtn}" class="ajaxRvImg rvImgSize img-fluid" alt="...">
	      
	      <div class="course-content">
	         <div class="d-flex justify-content-between align-items-center mb-3">
               	<p class="ajaxRvDate price">${rvListOne.rvDate}</p>
	         </div>
	         <p class="ajaxRvContent">${rvListOne.rvContent}</p>
	         <div class="trainer d-flex justify-content-between align-items-center">
	           <div class="trainer-profile d-flex align-items-center">
	             <span class="ajaxUserEmail">${rvListOne.userEmail}</span>
	           </div>
	         </div>
	      </div>
	      
	  	</div>
	    
	</div> 
	
</template>

  <!-- ======= Footer ======= -->
  <footer id="footer">

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>Mentor</h3>
            <p>
              A108 Adam Street <br>
              New York, NY 535022<br>
              United States <br><br>
              <strong>Phone:</strong> +1 5589 55488 55<br>
              <strong>Email:</strong> info@example.com<br>
            </p>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-newsletter">
            <h4>Join Our Newsletter</h4>
            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscribe">
            </form>
          </div>

        </div>
      </div>
    </div>

    <div class="container d-md-flex py-4">

      <div class="me-md-auto text-center text-md-start">
        <div class="copyright">
          &copy; Copyright <strong><span>Mentor</span></strong>. All Rights Reserved
        </div>
        <div class="credits">
          <!-- All the links in the footer should remain intact. -->
          <!-- You can delete the links only if you purchased the pro version. -->
          <!-- Licensing information: https://bootstrapmade.com/license/ -->
          <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/ -->
          Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
        </div>
      </div>
      <div class="social-links text-center text-md-right pt-3 pt-md-0">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
  
   <!-- Vendor JS Files -->
  <script src="resources/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="resources/vendor/aos/aos.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="resources/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="resources/js/main.js"></script>
  
  <!-- 리뷰추가 기능 -->
  <script src="js/reviewMaker.js"></script>
  
  <!-- 차트 만들기 기능 -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
  <script src="js/chart.js"></script>
  

</body>
</html>
