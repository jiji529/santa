<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <script src="http://code.jquery.com/jquery-latest.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.2.5/angular.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
      <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypage.css">
      
      <title>관심상품</title>
      
        <jsp:include page="../header.jsp"></jsp:include>

      
	 </head>
  <body>
  <div id="__nuxt"><!---->
    <div id="__layout">
      <div data-v-e2abb636="" data-v-520bec6f="" class="layout_base lg has_bottom_nav wrap lg win_os" tabindex="0">

        <div data-v-520bec6f="" data-v-e2abb636="" class="container my lg">
          <div data-v-520bec6f="" class="snb_area" data-v-e2abb636=""><a data-v-520bec6f="" href="/mypage" class="" style="text-decoration-line: none;color :black;">
              <h2 data-v-520bec6f="" class="snb_main_title">마이 페이지</h2>
            </a>
            <nav data-v-7bcac446="" data-v-520bec6f="" class="snb">
              <div data-v-7bcac446="" class="snb_list"><strong data-v-7bcac446="" class="snb_title">쇼핑 정보</strong>
                <ul data-v-7a824f04="" data-v-7bcac446="" class="snb_menu">
                  <li data-v-7a824f04="" class="menu_item"><a data-v-7a824f04="" href="/buying" class="menu_link" style="text-decoration-line: none;color :#222222cc;"> 구매 내역 </a>
                  </li>
                  <li data-v-7a824f04="" class="menu_item"><a data-v-7a824f04="" href="/selling" class="menu_link" style="text-decoration-line: none;color :#222222cc;"> 판매 내역 </a>
                  </li>
                  <li data-v-7a824f04="" class="menu_item"><a data-v-7a824f04="" href="" class="menu_link" style="text-decoration-line: none;color :#222222cc;"> 보관 판매 </a>
                  </li>
                  <li data-v-7a824f04="" class="menu_item"><a data-v-7a824f04="" href=""
                      class="menu_link nuxt-link-exact-active active" aria-current="page" style="text-decoration-line: none;color :#222222cc;"> 관심 상품 </a></li>
                </ul>
              </div>
            </nav>
          </div>
          <div data-v-512d9435="" data-v-520bec6f="" class="content_area my-page-content" >
            <div  style="border-bottom: 3px solid #222; 
            padding-bottom: 16px" >
              <div data-v-61e7a8a3="" class="title">
                <h3 data-v-61e7a8a3="">관심 상품</h3><!---->
              </div><!---->
            </div><!---->
            <div data-v-512d9435="" class="content">
              <div data-v-6abf8c64="" class="empty_area">
                <p data-v-6abf8c64="" class="desc">추가하신 관심 상품이 없습니다.</p><a data-v-472c9b08="" data-v-6abf8c64="" href="/list"
                  class="btn outlinegrey small"> SHOP 바로가기 </a>
              </div>
              <div>
                <div data-v-4f44fa1a="" class="product_list recently_viewed">
                  <div data-v-4f44fa1a="" display-type="A" wish-event-name="onClickRecommendProductWish" class="header">
                    <p>최근 본 상품과 비슷한 상품</p>
                  </div>



                  <div data-v-4f44fa1a="" class="v-portal" style="display: none;"></div>
                </div>
                <div data-v-5f3540d5="" class="list_loading" style="display: none;"><img data-v-5f3540d5=""
                    src="./관심상품_files/loading.410eb77.gif" loading="lazy" alt="리스트 로딩중입니다." class="loading_img"></div>
              </div>
            </div>
          </div>
        </div>
        <div style="height: 300px;"></div>
        <div data-v-520bec6f="">
          <jsp:include page="../footer.jsp"></jsp:include>
        </div>
      </div>
    </div>
  </div>

</body>

</html>