<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>산타루치아~</title>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css"/>
    <link href="resources/css/common.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://kit.fontawesome.com/20962f3e4b.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    <script>
        $(document).ready(function () {
            $(".slider > ul").bxSlider({
                easing: "linear",
            });
        });

        $(function () {
            var best = $("aside > .category");

            $(window).scroll(function () {
                var t = $(this).scrollTop();

                if (t > 125) {
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
	<!-- ======= Header ======= -->
		<div>
		<jsp:include page="header.jsp"></jsp:include>
		</div>
		<!-- End Header -->

    <div id="wrapper">
        <main>
            <aside>
            <ul class="category">
                <li><div><a href="#">SAMSUNG</a></div></li>
				<li><div><a href="#">태블릿</a></div></li>
				<li><div><a href="#">핸드폰</a></div></li>
				<li><div><a href="#">액세서리</a></div></li>
            </ul>
            </aside>
            <section>
                <!-- 히트상품 영역 -->
                <section class="hit">
                    <h3>
                        <span>히트상품</span>
                    </h3>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                </section>
                <!-- 추천상품 영역 -->
                <section class="recommend">
                    <h3>
                        <span>추천상품</span>
                    </h3>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span>배송비 2500</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span>배송비 2500</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span>배송비 2500</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span>배송비 2500</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span>배송비 2500</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span>배송비 2500</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span>배송비 2500</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span>배송비 2500</span>
                            </div>
                        </a>
                    </article>
                </section>
                <section class="new">
                    <h3>
                        <span>최신상품</span>
                    </h3>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                </section>
                <section class="discount">
                    <h3>
                        <span>할인상품</span>
                    </h3>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230X230" alt="t1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>
                                    10%
                                </span>
                            </div>
                            <div class="dis_price">
                                <ins>
                                    27,000
                                </ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                </section>
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