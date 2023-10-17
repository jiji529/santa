<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매입력</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

  <!-- Template Main CSS File -->
  <link href="resources/assets/css/style.css" rel="stylesheet">
  
  <link href="resources/css/sellbuy.css" rel="stylesheet">
   
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;600;700&display=swap" rel="stylesheet">
   
  <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
  <script src="resources/js/pay.js"></script>
</head>

<body>
    <header>
        해더부분
    </header>

    <!-- ======= 구매 폼 ======= -->
    <div class="content">
        <div class="content_type text-center">
            <p>배송/결제</p>
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
                    <span>배송주소</span>
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
                                <dt>배송 주소</dt>
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
                        <li><a class="btn" data-paytype="nPay">네이버페이<img src="Npay.png" /></a></li>
                        <li><a class="btn" data-paytype="kPay">카카오페이<img src="Kpay.png" /></a></li>
                    </ul>
                </div>
            </div>

            <div class="address">
                <div>
                    <span>최종 주문정보</span>
                </div>
                <div id="amt">
                    <div>
                        <p>즉시구매가</p>
                        <p><span>1,000,000</span>원</p>
                    </div>
                    <div>
                        <p>수수료</p>
                        <p><span>50,000</span>원</p>
                    </div>
                    <div>
                        <p>배송비</p>
                        <p><span>3,000</span>원</p>
                    </div>
                </div>
            </div>

            <div id="notice_select">
                <form>
                <ul>
                    <li>
                        <div class="notice">
                            <label for="notice_1">
                                <div>
                                    <p class="notice_main">판매자의 판매거부, 배송지연, 미입고 등의 사유가 발생할 경우, 거래가 취소될 수 있습니다.</p>
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
                                    <p class="notice_main">‘바로 결제하기’ 를 선택하시면 즉시 결제가 진행되며, 단순 변심이나 실수에 따른 구매 결정 후 취소는
                                        불가능합니다.</p>
                                    <p class="notice_sub">본 거래는 개인간 거래로 전자상거래법(제17조)에 따른 청약철회(환불, 교환) 규정이 적용되지 않습니다.
                                        단, 조작 실수 등을 고려하여 계정당 하루 1회 구매를 거부할 수 있습니다.</p>
                                </div>
                                <div class="check_div">
                                    <input type="checkbox" id="notice_2" class="notice_check_btn" required="required">
                                </div>
                            </label>
                        </div>
                    </li>
                    <li>
                        <div class="notice">
                            <label for="notice_3">
                                <div>
                                    <p class="notice_main">구매 조건을 모두 확인하였으며, 거래 진행에 동의합니다.</p>
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

            <div class="address total">
                <div>
                    <span>총 결제금액</span>
                    <p class="sell"><span>1,053,000</span>원</p>
                </div>
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
    <!-- ======= 구매 폼 끝 ======= -->

    <!-- ======= Footer ======= -->
    
    <footer id="footer">

        <div class="container d-md-flex py-4">

            <div class="me-md-auto text-center text-md-start">
                <div class="copyright">
                    &copy; Copyright <strong><span>Mentor</span></strong>. All Rights Reserved
                </div>
                <div class="credits">
                    Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                </div>
            </div>
            <div class=" text-center text-md-right pt-3 pt-md-0">
                <a href="#" class="twitter m-1">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-twitter" viewBox="0 0 16 16">
                        <path
                            d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z" />
                    </svg>
                </a>
                <a href="#" class="facebook m-1">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-facebook" viewBox="0 0 16 16">
                        <path
                            d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                    </svg>
                </a>
                <a href="#" class="instagram m-1">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-instagram" viewBox="0 0 16 16">
                        <path
                            d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
                    </svg>
                </a>
            </div>
        </div>
    </footer><!-- End Footer -->


    <div id="preloader"></div>
    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>

	

    <!-- Template Main JS File -->
 	<script src="resources/js/main.js"></script>
</body>
</html>