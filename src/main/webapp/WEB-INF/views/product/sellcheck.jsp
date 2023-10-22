<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매동의</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <jsp:include page="../header.jsp"></jsp:include>

  <link href="${pageContext.request.contextPath}/resources/css/sellbuy.css" rel="stylesheet">
  
  <script src="${pageContext.request.contextPath}/resources/js/notice.js"></script>
</head>
<body>
    <!-- ======= 판매 폼 ======= -->
    <div class="content">
        <div class="content_type text-center">
            <p>판매 동의</p>
        </div>
        <div class="wrap ctn">
            <div class="check_title">
                <p><span class="sell">판매</span>하시기 전에 꼭 확인하세요.</p>
            </div>
            <div id="item_info">
                <div id="item_img">
                    <img src="${pageContext.request.contextPath}/resources/img/product/${pvo.pImg1}" alt="상품이미지">
                </div>
                <div id="item_detail">
                    <span>${pvo.pCode}</span>
                    <span>${pvo.pName}</span>
                    <span></span>
                </div>
            </div>
            <form action="${pageContext.request.contextPath}/sellpay" id="notice_form">
                <div id="notice_select">
                    <ul>
                        <li>
                            <div class="notice">
                                <label for="notice_1">
                                    <div>
                                        <p class="notice_main"><span>판매</span>하려는 상품이 맞습니다.</p>
                                        <p class="notice_sub">상품 이미지, 모델번호, 출시일, 상품명, 사이즈를 한 번 더 확인했습니다. 단, 상품의 이미지는 촬영
                                            환경에 따라 실제와 다를 수 있습니다.</p>
                                    </div>
                                    <div class="check_div">
                                        <input type="checkbox" id="notice_1" class="notice_check_btn">
                                    </div>
                                </label>
                            </div>
                        </li>
                        <li>
                            <div class="notice">
                                <label for="notice_2">
                                    <div>
                                        <p class="notice_main">제조사에서 불량으로 인정하지 않는 기준은 하자로 판단하지 않습니다.</p>
                                        <p class="notice_sub">박스/패키지와 상품 컨디션에 민감하시다면 검수 기준을 반드시 확인하시기 바랍니다.</p>
                                        <a href="">검수기준 보기</a>
                                    </div>
                                    <div class="check_div">
                                        <input type="checkbox" id="notice_2" class="notice_check_btn">
                                    </div>
                                </label>
                            </div>
                        </li>
                        <li>
                            <div class="notice">
                                <label for="notice_3">
                                    <div>
                                        <p class="notice_main">SANTA의 최신 이용정책을 모두 확인하였으며, <span>판매</span>를 계속합니다.</p>
                                        <p class="notice_sub">건전하고 안전한 거래를 위해 반드시 숙지해야 할 미입고, 페널티, 부정거래 등의 이용정책을 확인했습니다.
                                        </p>
                                        <a href="">이용정책 보기</a>
                                    </div>
                                    <div class="check_div">
                                        <input type="checkbox" id="notice_3" class="notice_check_btn">
                                    </div>
                                </label>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="sub">
                    <button class="btn_not_active">
                        <div>
                            <span>판매 계속</span>
                        </div>
                    </button>
                </div>
            </form>
        </div>
    </div>
    <!-- ======= 판매 폼 끝 ======= -->

	<!-- ======= Footer ======= -->
	<jsp:include page="../footer.jsp"></jsp:include>
	<!-- End Footer -->
</body>
</html>