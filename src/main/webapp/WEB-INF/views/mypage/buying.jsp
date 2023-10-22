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
      <title>구매내역</title>
      
        <jsp:include page="../header.jsp"></jsp:include>
      
	 </head>
   <body>
  <div id="__nuxt"><!---->
    <div id="__layout">
      <div tabindex="0" class="layout_base lg wrap lg win_os" data-v-e2abb636="" data-v-520bec6f="">
        <div class="container my lg" data-v-e2abb636="" data-v-520bec6f="">
          <div data-v-520bec6f="" class="snb_area"><a data-v-520bec6f="" href="/mypage" class="nuxt-link-active" style="text-decoration-line: none;color :black;">
              <h2 data-v-520bec6f="" class="snb_main_title">마이 페이지</h2>
            </a>
            <nav data-v-7bcac446="" data-v-520bec6f="" class="snb">
              <div data-v-7bcac446="" class="snb_list"><strong data-v-7bcac446="" class="snb_title">쇼핑 정보</strong>
                <ul data-v-7a824f04="" data-v-7bcac446="" class="snb_menu">
                  <li data-v-7a824f04="" class="menu_item"><a data-v-7a824f04="" href=""
                      class="menu_link nuxt-link-exact-active active" aria-current="page" style="text-decoration-line: none;color :#222222cc;"> 구매 내역 </a></li>
                  <li data-v-7a824f04="" class="menu_item"><a data-v-7a824f04="" href="/selling" class="menu_link" style="text-decoration-line: none;color :#222222cc;"> 판매 내역 </a>
                  </li>
                  <li data-v-7a824f04="" class="menu_item"><a data-v-7a824f04="" href="/saved" class="menu_link" style="text-decoration-line: none;color :#222222cc;"> 보관 판매 </a>
                  </li>
                  <li data-v-7a824f04="" class="menu_item"><a data-v-7a824f04="" href="" class="menu_link" style="text-decoration-line: none;color :#222222cc;"> 관심 상품 </a>
                  </li>
                </ul>
              </div>
            </nav>
          </div>
          <div data-v-42268a02="" data-v-520bec6f="" class="content_area my-page-content">
            <div data-v-42268a02="" class="my_purchase">
              <div data-v-42268a02="" class="v-portal" style="display: none;"></div>
              <div data-v-61e7a8a3="" data-v-42268a02="" class="content_title">
                <div data-v-61e7a8a3="" class="title">
                  <h3 data-v-61e7a8a3="">구매 내역</h3><!---->
                </div><!---->
              </div>
              <div data-v-2cbb289b="" data-v-42268a02="" class="purchase_list_tab detail_tab">
                <div data-v-2cbb289b="" class="tab_item total"><a data-v-2cbb289b="" href="" class="tab_link">
                    <dl data-v-2cbb289b="" class="tab_box">
                      <dt data-v-2cbb289b="" class="title">전체</dt>
                      <dd data-v-2cbb289b="" class="count">0</dd>
                    </dl>
                  </a></div>
                <div data-v-2cbb289b="" class="tab_item tab_on"><a data-v-2cbb289b="" href="" class="tab_link" style="text-decoration-line: none;color:black">
                    <dl data-v-2cbb289b="" class="tab_box">
                      <dt data-v-2cbb289b="" class="title">구매 입찰</dt>
                      <dd data-v-2cbb289b="" class="count">0</dd>
                    </dl>
                  </a></div>
                <div data-v-2cbb289b="" class="tab_item"><a data-v-2cbb289b="" href="" class="tab_link" style="text-decoration-line: none;color:black;">
                    <dl data-v-2cbb289b="" class="tab_box">
                      <dt data-v-2cbb289b="" class="title">진행 중</dt>
                      <dd data-v-2cbb289b="" class="count">0</dd><!---->
                    </dl>
                  </a></div>
                <div data-v-2cbb289b="" class="tab_item"><a data-v-2cbb289b="" href="" class="tab_link" style="text-decoration-line: none;color :black;">
                    <dl data-v-2cbb289b="" class="tab_box">
                      <dt data-v-2cbb289b="" class="title">종료</dt>
                      <dd data-v-2cbb289b="" class="count">0</dd>
                    </dl>
                  </a></div>
              </div>
              <div data-v-77765e40="" data-v-42268a02="" class="period_search">
                <div data-v-77765e40="" class="period_month">
                  <ul data-v-77765e40="" class="month_list">
                    <li data-v-77765e40="" class="month_item"><a data-v-77765e40="" href="" class="month_link" style="text-decoration-line: none;color :#222222cc;">최근
                        2개월</a></li>
                    <li data-v-77765e40="" class="month_item"><a data-v-77765e40="" href="" class="month_link" style="text-decoration-line: none;color :#222222cc;">4개월</a>
                    </li>
                    <li data-v-77765e40="" class="month_item"><a data-v-77765e40="" href="" class="month_link" style="text-decoration-line: none;color :#222222cc;">6개월</a>
                    </li>
                    <li data-v-77765e40="" class="month_item custom"><a data-v-77765e40="" href=""
                        class="month_link">기간조회</a></li>
                  </ul><!---->
                </div>
                <div data-v-14e5ae1c="" data-v-77765e40="" class="period_calendar_wrapper"
                  today="Mon Oct 16 2023 03:35:58 GMT+0900 (한국 표준시)">
                  <div data-v-14e5ae1c="" class="period_calendar">
                    <div data-v-14e5ae1c="" class="calendar_wrap"><span data-v-14e5ae1c="">
                        <div data-v-14e5ae1c="" class="calendar"><input data-v-14e5ae1c="" type="date"
                            class="cal_input"><span data-v-14e5ae1c="" class="cal_btn"></span></div>
                        <div data-v-4cb7b681="" class="vc-popover-content-wrapper"><!----></div>
                      </span></div><span data-v-14e5ae1c="" class="swung_dash">~</span>
                    <div data-v-14e5ae1c="" class="calendar_wrap"><span data-v-14e5ae1c="">
                        <div data-v-14e5ae1c="" class="calendar"><input type="date" data-v-14e5ae1c="" class="cal_input"><span
                            data-v-14e5ae1c="" class="cal_btn"></span></div>
                        <div data-v-4cb7b681="" class="vc-popover-content-wrapper"><!----></div>
                      </span></div>
                  </div>
                  <div data-v-14e5ae1c="" class="period_btn_box"><button data-v-14e5ae1c=""
                      class="btn_search is_active">조회</button></div>
                </div>
              </div>
              <ul data-v-a54c4c26="" data-v-42268a02="" class="search_info">
                <li data-v-a54c4c26="" class="info_item">
                  <p data-v-a54c4c26="">한 번에 조회 가능한 기간은 최대 6개월입니다.</p>
                </li>
                <li data-v-a54c4c26="" class="info_item">
                  <p data-v-a54c4c26="">기간별 조회 결과는 입찰일 기준으로 노출됩니다.</p>
                </li>
              </ul>
              <div data-v-7a0ddb52="" data-v-42268a02="" class="purchase_list bidding bid">
                <div data-v-7a0ddb52="" class="purchase_head">
                  <div data-v-7a0ddb52="" class="head_product"><a data-v-7a0ddb52="" href="" class="btn_filter" style="text-decoration-line: none;color :black;"> 전체 <svg
                        data-v-7a0ddb52="" class="ico-arr-dir-down-circle icon sprite-icons">
                        <use data-v-7a0ddb52="" href=""></use>
                      </svg></a></div>
                  <div data-v-7a0ddb52="" class="head_status">
                    <div data-v-7a0ddb52="" class="status_box field_price"><a data-v-7a0ddb52="" href=""
                        class="status_link" style="text-decoration-line: none;color :black;"><span data-v-7a0ddb52="" class="status_txt">구매 희망가</span></a></div>
                    <div data-v-7a0ddb52="" class="status_box field_date_purchased"><a data-v-7a0ddb52="" href=""
                        class="status_link" style="text-decoration-line: none;color :black;"><span data-v-7a0ddb52="" class="status_txt">구매일</span></a></div>
                    <div data-v-7a0ddb52="" class="status_box field_date_paid"><a data-v-7a0ddb52="" href=""
                        class="status_link" style="text-decoration-line: none;color :black;"><span data-v-7a0ddb52="" class="status_txt">정산일</span></a></div>
                    <div data-v-7a0ddb52="" class="status_box field_expires_at"><a data-v-7a0ddb52="" href=""
                        class="status_link" style="text-decoration-line: none;color :black;"><span data-v-7a0ddb52="" class="status_txt">만료일</span></a></div>
                    <div data-v-7a0ddb52="" class="status_box field_status ascending"><a data-v-7a0ddb52="" href=""
                        class="status_link" style="text-decoration-line: none;color :black;"><span data-v-7a0ddb52="" class="status_txt">상태</span></a></div>
                  </div>
                </div>
                <div data-v-6abf8c64="" data-v-7a0ddb52="" class="empty_area">
                  <p data-v-6abf8c64="" class="desc">구매 입찰 내역이 없습니다.</p><a data-v-472c9b08="" data-v-6abf8c64="" href="/list"
                    class="btn outlinegrey small"> SHOP 바로가기 </a>
                </div>
                <div data-v-7a0ddb52="" class="v-portal" style="display: none;"></div>
              </div><!---->
            </div>
          </div>
        </div>
        <div style="height: 300px;"></div>
        <div data-v-520bec6f="" >          
           <jsp:include page="../footer.jsp"></jsp:include> 
      </div>
      </div>
    </div>
  </div>
</body>
</html>