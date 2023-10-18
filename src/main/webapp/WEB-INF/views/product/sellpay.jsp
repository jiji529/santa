<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매입력</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  
  <jsp:include page="../header.jsp"></jsp:include>
  
  <link href="${pageContext.request.contextPath}/resources/css/sellbuy.css" rel="stylesheet">
  
  <script src="${pageContext.request.contextPath}/resources/js/pay.js"></script>
</head>
<body>
    <!-- ======= 판매 폼 ======= -->
    <div class="content">
        <div class="content_type text-center">
            <p>반송/결제</p>
        </div>
        <div class="wrap ctn">
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

            <div class="address adr_form">
                <div>
                    <span>반송주소</span>
                    <a>+ 새 주소 추가</a>
                </div>
                <div>
                    <div id="adr">
                        <dl>
                            <div>
                                <dt>받는분</dt>
                                <dd>정**</dd>
                            </div>
                            <div>
                                <dt>연락처</dt>
                                <dd>010-5***-*555</dd>
                            </div>
                            <div>
                                <dt>주소</dt>
                                <dd>대전 동구 우암로 352-21 (가양동, 한국폴리텍대학 대전캠퍼스) 기숙사</dd>
                            </div>
                        </dl>
                    </div>
                    <div>
                        <a class="btn btn-outline-secondary">변경</a>
                    </div>
                </div>
            </div>

            <div class="address">
                <div>
                    <span>결제 방법</span>
                </div>
                <div id="pay">
                    <span>일반 결제</span>
                    <ul>
                        <li><a class="btn" data-paytype="credit">신용카드</a></li>
                        <li><a class="btn" data-paytype="nPay">네이버페이<img src="${pageContext.request.contextPath}/resources/img/pay/Npay.png" /></a></li>
                        <li><a class="btn" data-paytype="kPay">카카오페이<img src="${pageContext.request.contextPath}/resources/img/pay/Kpay.png" /></a></li>
                    </ul>
                </div>
            </div>

            <div id="notice_select">
                <form>
                <ul>
                    <li>
                        <div class="notice">
                            <label for="notice_1">
                                <div>
                                    <p class="notice_main">구매자의 구매거부, 배송지연, 미입고 등의 사유가 발생할 경우, 거래가 취소될 수 있습니다.</p>
                                    <p class="notice_sub">앱 알림 해제, 알림톡 차단, 전화번호 변경 후 미등록 시에는 거래 진행 상태 알림을 받을 수 없습니다.
                                    </p>
                                </div>
                                <div class="check_div">
                                    <input type="checkbox" id="notice_1" class="notice_check_btn" required>
                                </div>
                            </label>
                        </div>
                    </li>
                    <li>
                        <div class="notice">
                            <label for="notice_2">
                                <div>
                                    <p class="notice_main">단순 변심이나 실수에 따른 판매 결정 후 취소는
                                        불가능합니다.</p>
                                    <p class="notice_sub">본 거래는 개인간 거래로 전자상거래법(제17조)에 따른 청약철회(환불, 교환) 규정이 적용되지 않습니다.
                                        단, 조작 실수 등을 고려하여 계정당 하루 1회 구매를 거부할 수 있습니다.</p>
                                </div>
                                <div class="check_div">
                                    <input type="checkbox" id="notice_2" class="notice_check_btn" required>
                                </div>
                            </label>
                        </div>
                    </li>
                    <li>
                        <div class="notice">
                            <label for="notice_3">
                                <div>
                                    <p class="notice_main">판매 조건을 모두 확인하였으며, 거래 진행에 동의합니다.</p>
                                </div>
                                <div class="check_div">
                                    <input type="checkbox" id="notice_3" class="notice_check_btn" required>
                                </div>
                            </label>
                        </div>
                    </li>
                </ul>
                </form>
            </div>

            <div class="sub">
                <form action="#" id="payform">
                    <input type="hidden" name="adrNo" value="">
                    <input type="hidden" name="userNo" value="">
                    <input type="hidden" name="saleNo" value="">
                    <input type="hidden" name="payType" value="">
                    <button class="btn_not_active">
                        <div>
                            <span>결제하기</span>
                        </div>
                    </button>
                </form>
            </div>
        </div>
    </div>
    <!-- ======= 판매 폼 끝 ======= -->

	<!-- ======= Footer ======= -->
	<jsp:include page="../footer.jsp"></jsp:include>
	<!-- End Footer -->
</body>
</html>