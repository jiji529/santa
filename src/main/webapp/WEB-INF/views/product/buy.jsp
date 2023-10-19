<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품구매</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  
  <jsp:include page="../header.jsp"></jsp:include>
  
  <link href="${pageContext.request.contextPath}/resources/css/sellbuy.css" rel="stylesheet">
  
  <script src="${pageContext.request.contextPath}/resources/js/buy.js"></script>
</head>
<body>

	<!-- ======= 구매 폼 ======= -->
    <div class="content">
        <div class="text-center content_type">
            <p>구매하기</p>
        </div>
        <div class="wrap ctn">
            <div id="item_info">
                <div id="item_img">
                    <img src="${pageContext.request.contextPath}/resources/img/${pvo.pImg1}" alt="상품이미지">
                </div>
                <div id="item_detail">
                    <span>${pvo.pCode}</span>
                    <span>${pvo.pName}</span>
                </div>
            </div>
            <div id="grade_select">
                <ul class="select_List">
                    <li class="select_item">
                        <button>
                            <div>
                                <span>S</span><br>
                                <span class="buy price"><fmt:formatNumber value="${Sprice}" pattern="#,###,###"/></span>
                            </div>
                        </button>
                    </li>
                    <li class="select_item">
                        <button>
                            <div>
                                <span>A</span><br>
                                <span class="buy price"><fmt:formatNumber value="${Aprice}" pattern="#,###,###"/></span>
                            </div>
                        </button>
                    </li>
                    <li class="select_item">
                        <button>
                            <div>
                                <span>B</span><br>
                                <span class="buy price"><fmt:formatNumber value="${Bprice}" pattern="#,###,###"/></span>
                            </div>
                        </button>
                    </li>
                </ul>			
            </div>
            <div class="sub hide">
                <button>
                    <div>
                        <span id="selectPrice"></span><br>
                        <span>일반배송</span>
                    </div>
                </button>
            </div>
        </div>
    </div>
    <!-- ======= 구매 폼 끝 ======= -->
    
	<!-- ======= Footer ======= -->
	<jsp:include page="../footer.jsp"></jsp:include>
	<!-- End Footer -->

</body>
</html>