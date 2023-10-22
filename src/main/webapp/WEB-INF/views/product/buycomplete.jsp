<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
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
                    <img src="${pageContext.request.contextPath}/resources/img/product/${pvo.pImg1}" alt="상품이미지">
                </div>
                <div id="item_detail">
                    <span>${pvo.pCode}</span>
                    <span>${pvo.pName}</span>
                    <span>${pvo.grade}</span>
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
                        <p><span>카카오 30205********</span></p>
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
                    <p class="buy"><span><fmt:formatNumber value="${ovo.realPrice}" type="number" pattern="#,###,###"/></span>원</p>
                </div>
            </div>
            <div class="sub home">
                <a href="${pageContext.request.contextPath}/" class="btn">홈</a>
                <a href="${pageContext.request.contextPath}/mypage.do" class="btn">마이페이지</a>
            </div>
        </div>
    </div>
    <!-- ======= 구매 폼 끝 ======= -->

    <!-- ======= Footer ======= -->
	<jsp:include page="../footer.jsp"></jsp:include>
	<!-- End Footer -->
</body>
</html>