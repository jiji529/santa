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
  
   <!-- ======= TOP Header ======= -->
  <jsp:include page="../header.jsp"></jsp:include>
  
  <!-- 상세페이지: event -->
  <link rel="stylesheet" href="css/event.css">
  
  <!-- 리뷰추가 새창 -->
  <link rel="stylesheet" href="css/review.css">
  
  <style>
  .card-img > img{
  padding-bottom: 50px; 
  }
  </style>
</head>
<body>
  <main id="main" class="min">
    <!-- ======= 상세페이지 section ======= -->
    
    <section id="events" class="events">
      <div id="product" class="container" data-aos="fade-up">

        <div class="row mmmmm">
          <div class="col-md-6 d-flex align-items-stretch">
            <div class="card">
              <div class="card-img">
                <img src="resources/img/${product.pImg1}" alt="제품사진">
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
                		<div class="btnDesign" id="FrontRed">구매</div>
                		<div class="btnDesign" id="BackRed">
                			<p class="p1">
                				<fmt:formatNumber value="${product.immediatePurchacePrice}" pattern="#,###,###"/><span class="p2">원</span>
                			</p>
                			<p class="p3">즉시 구매가</p>
                		</div>
                	</button>
                	
                	<button type="button" class="btn btn-success">
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
              </div>
            </div>

          </div>
        </div>
        <div id="graph-center">
		    <h1 class="text-center">상품 등급 별 거래현황</h1>
		    <div class="gap-2 col-5 mx-auto">
			    <button id="SchartBtn" class="btn btn-light">S등급 상품 차트보기</button>
				<button id="AchartBtn" class="btn btn-light">A등급 상품 차트보기</button>
				<button id="BchartBtn" class="btn btn-light">B등급 상품 차트보기</button>
			</div>
			<canvas id="Sline-chart" width="400vW" height="400vh"></canvas>
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
          <button type="button" id="rvAdd" class="btn btn-light">리뷰추가</button>
          
        </div>

        <div class="row"><!-- data-aos="zoom-in" data-aos-delay="100" -->

		<c:if test="${rvList.size() < 1}">
			<li>등록 된 리뷰가 없습니다</li>
		</c:if>

		<c:forEach var="rvListOne" items="${rvList}">
	          <div class="col-lg-3 col-md-6 d-flex align-items-stretch mt-4">
		          	<div id="rvOne" class="course-item">
		            
		              <img src="upload/${rvListOne.rvNewImg}${rvListOne.rvExtn}" class="ajaxRvImg rvImgSize img-fluid" alt="..." style="width: 520px;height: 300px; object-fit: cover;">
		              
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
  

        <form id="rvForm" method="POST" enctype="multipart/form-data">
        	<input type="hidden" name="pNo" value="${product.pNo}">
            아이디: <c:out value="${loginUser.userEmail}"/><br>
            <div id="img">
	            리뷰사진: 
	            <label for="rvImg">이미지 첨부</label>
	            <input type="file" id="rvImg" name="rvImg">
            </div>
            내용: <br><input type="text" name="rvContent" style="width: 296px;">
            <div class="between">
	            <input type="button" value="확인" id="rvSave">
	            <input type="button" value="취소" id="rvCancel">
        	</div>
        </form>

    
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
  <jsp:include page="../footer.jsp"></jsp:include>

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
