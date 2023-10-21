<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매선택</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  
  <jsp:include page="../header.jsp"></jsp:include>
  
  <link href="${pageContext.request.contextPath}/resources/css/sellbuy.css" rel="stylesheet">
  
  <script src="${pageContext.request.contextPath}/resources/js/sellbuy.js"></script>
</head>
<body>

    <!-- ======= 구매 폼 ======= -->
    <div class="content">
        <div class="content_type text-center">
            <p>구매하기</p>
        </div>
        <div class="wrap ctn">
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
            <div id="input_select">
                <div class="now_price_form">
                    <ul>
                        <li class="now_price">
                            <p>즉시 구매가</p>
                            <p><span>${pvo.immediatePurchacePrice}</span>원</p>
                        </li>
                        <li class="now_price">
                            <p>즉시 판매가</p>
                            <p><span>${pvo.immediateSellingPrice}</span>원</p>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="form_select">

                <ul class="tab-group">
                    <li class="tab"><a href="#">구매 입찰</a></li>
                    <li class="tab active"><a href="#">즉시 구매</a></li>
                </ul>

                <div class="tab-content">
                    <div id="buy_bid" class="hide">

                        <form action="/" method="post">
							<input type="hidden" name="">
                            <div>
                                <dl>
                                    <dt>구매 희망가</dt>
                                    <dd>
                                        <input type="text" name="salePrice" placeholder="희망가 입력" pattern="([0-9]+.{0,1}[0-9]*,{0,1})*[0-9]" required="required" autocomplete="off">
                                        <span>원</span>
                                    </dd>
                                </dl>
                                <p>총 결제금액은 다음 화면에서 계산됩니다.</p>
                            </div>

                            <div id="bid_date">
                                <div>
                                    <span>입찰 마감기한</span>
                                </div>
                                <div>
                                    <a href="#" class="btn" data-date="7">7일</a>
                                    <a href="#" class="btn" data-date="15">15일</a>
                                    <a href="#" class="btn" data-date="30">30일</a>
                                    <a href="#" class="btn" data-date="60">60일</a>
                                </div>
                            </div>

                            <!-- 숨겨진 값 -->
                            <input type="hidden" name="saleTerm" value="">

                            <div class="sub">
                                <button class="btn_not_active">
                                    <div>
                                        <span>구매 입찰 계속</span>
                                    </div>
                                </button>
                            </div>

                        </form>

                    </div>

                    <div id="buy_imd">

                        <form action="/" method="post">

                            <div>
                                <dl>
                                    <dt>즉시 구매가</dt>
                                    <dd>
                                        <span>${pvo.immediatePurchacePrice}</span>
                                        <span>원</span>
                                    </dd>
                                </dl>
                                <p>총 결제금액은 다음 화면에서 계산됩니다.</p>
                            </div>

                            <!-- 숨겨진 값 -->
                            <input type="hidden" name="salePrice" value="">

                            <div class="sub">
                                <button>
                                    <div>
                                        <span>즉시 구매 계속</span>
                                    </div>
                                </button>
                            </div>

                        </form>

                    </div>

                </div><!-- tab-content -->

            </div> <!-- /form -->

        </div>
    </div>
    <!-- ======= 구매 폼 끝 ======= -->

	<!-- ======= Footer ======= -->
	<jsp:include page="../footer.jsp"></jsp:include>
	<!-- End Footer -->
</body>
</html>