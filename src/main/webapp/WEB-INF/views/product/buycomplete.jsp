<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매완료</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <jsp:include page="../header.jsp"></jsp:include>
  
  <link href="${pageContext.request.contextPath}/resources/css/sellbuy.css" rel="stylesheet">
   
</head>

<body>
    <!-- ======= 구매 폼 ======= -->
    <div class="content">
        <div class="content_type text-center">
            <p>구매 완료</p>
        </div>
        <div class="wrap ctn">
            <div class="check_title">
                <p><span class="buy">구매</span>가 완료되었습니다.</p>
            </div>
            <div id="item_info">
                <div id="item_img">
                    <img src="${pageContext.request.contextPath}/resources/img/iphone15protita.png" alt="상품이미지">
                </div>
                <div id="item_detail">
                    <span>apple_iphone14pro_128G_silver</span>
                    <span>아이폰 14 프로 128기가 실버</span>
                    <span>S</span>
                </div>
            </div>
            <div class="confirm">
                <div>
                    <span>결제 정보</span>
                </div>
                <div>
                    <div>
                        <p>주문번호</p>
                        <p><span>OOOOOOOO</span></p>
                    </div>
                    <div>
                        <p>계좌</p>
                        <p><span>농협 30205********</span></p>
                    </div>
                    <div>
                        <p>예금주</p>
                        <p><span>정**</span></p>
                    </div>
                </div>
            </div>
            <div class="address total">
                <div>
                    <span>총 결제금액</span>
                    <p class="buy"><span>1,053,000</span>원</p>
                </div>
            </div>
            <div class="sub home">
                <a href="/main.do" class="btn">홈</a>
                <a href="" class="btn">마이페이지</a>
            </div>
        </div>
    </div>
    <!-- ======= 구매 폼 끝 ======= -->

    <!-- ======= Footer ======= -->
	<jsp:include page="../footer.jsp"></jsp:include>
	<!-- End Footer -->
</body>
</html>