<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SANTA</title>


  <!-- ======= TOP Header ======= -->
  <jsp:include page="header.jsp"></jsp:include>

<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css" />
<link href="resources/css/common.css" rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="https://kit.fontawesome.com/20962f3e4b.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script>
        $(document).ready(function () {
            $(".slider > ul").bxSlider({
                easing: "linear",
            });
        });

        $(function () {
            var best = $("aside > .cgory");

            $(window).scroll(function () {
                var t = $(this).scrollTop();

                if (t > 200) {
                best.css({
                    position: "fixed",
                    top: "0",
                    marginBottom: 300 + "px",
                });
                } else {
                best.css({ position: "static" });
                }
            });
        });
       

        /* branch test */
    </script>
</head>
<body>
	<header style='height: 50px;'>
		<!-- 메뉴 헤더 height: 50px; -->
		<div class="menu">
			<form id="menu_indexr" class="search" action="/list">
				<input class="search_box1" type="text"  name="keyword" value="${pager.keyword}"
					placeholder="검색어를 입력하세요.">
				<button class="search_button1">
					<i class="fa fa-search" aria-hidden="true"></i>
					
				</button>
			</form>
		</div>
	</header>
	<!-- End Header -->

	<div id="wrapper">
		<main>
			<aside>
				<ul class="cgory">
					<li><div>카테고리</div></li>
					<li><div>
							<a href="#">노트북</a>
						</div></li>
					<li><div>
							<a href="#">태블릿</a>
						</div></li>
					<li><div>
							<a href="#">핸드폰</a>
						</div></li>
					<li><div>
							<a href="#">액세서리</a>
						</div></li>
				</ul>
			</aside>
			<section>
				<!-- 히트상품 영역 -->
				<section class="hit">
					<h3>
						<span>태블릿</span>
					</h3>

					<div>
						<c:forEach var="item" items="${list}">
							<div class="thumbs">
								<a href="#">
									<div class="thumb">
										<img src="/resources/img/product/${item.pImg1}" alt="이미지를 찾을수 없습니다." class="thum">
									</div>
									<h2>${item.pName}</h2>
									<p>${item.pCode}</p>
									<div class="org_price">
										<del>30,000</del>
										<span> 10% </span>
									</div>
									<div class="dis_price">
										<ins> 27,000 </ins>
										<span class="free">무료배송</span>
									</div>
								</a>
							</div>
						</c:forEach>
					</div>
				</section>
				<div class="paging">
					<ul class="pagination justify-content-center mt-3">
					    <li class="page-item"><a class="page-here" href="?page=1${pager.query}">처음</a></li>
					    <li class="page-item"><a class="page-here" href="?page=${pager.prev}${pager.query}">이전</a></li>
					    <c:forEach var="page" items="${pager.list}">
					        <li class="page-item"><a class="page-here ${page == pager.page ? 'active' : ''}" href="?page=${page}${pager.query}">${page}</a></li>
					    </c:forEach>
					    <li class="page-item"><a class="page-here" href="?page=${pager.next}${pager.query}">다음</a></li>
					    <li class="page-item"><a class="page-here" href="?page=${pager.last}${pager.query}">마지막</a></li>
					</ul>
				</div>
			</section>
		</main>

	</div>

	<!-- ======= Footer ======= -->
	<div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	<!-- End Footer -->
</body>
</html>