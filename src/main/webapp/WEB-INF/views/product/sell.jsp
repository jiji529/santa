<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품판매</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <jsp:include page="../header.jsp"></jsp:include>
  
  <link href="${pageContext.request.contextPath}/resources/css/sellbuy.css" rel="stylesheet">
  
</head>
<body>
   <!-- ======= 판매 폼 ======= -->
   <div class="content">
       <div class="text-center content_type">
           <p><span>판매</span>하기</p>
       </div>
       <div class="wrap ctn">
           <div id="item_info">
               <div id="item_img">
                   <img src="${pageContext.request.contextPath}/resources/img/product/${pvo.pImg1}" alt="상품이미지">
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
                               <span class="sell">${Sprice}</span>
                           </div>
                       </button>
                   </li>
                   <li class="select_item">
                       <button>
                           <div>
                               <span>A</span><br>
                               <span class="sell">${Aprice}</span>
                           </div>
                       </button>
                   </li>
                   <li class="select_item">
                       <button>
                           <div>
                               <span>B</span><br>
                               <span class="sell">${Bprice}</span>
                           </div>
                       </button>
                   </li>
               </ul>			
           </div>
           <div class="sub">
            	<form action="${pageContext.request.contextPath}/sellcheck" id="buy_form">
	                <button id="buy_btn">
	                    <div>
	                        <span>판매기준 체크하기</span>
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