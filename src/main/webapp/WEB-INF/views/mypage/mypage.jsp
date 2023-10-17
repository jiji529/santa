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
      <title>마이페이지</title>

      <jsp:include page="../header.jsp"></jsp:include>

    </head>

    <body>
      <div id="__nuxt"><!---->
        <div id="__layout">
          <div tabindex="0" class="layout_base lg has_bottom_nav wrap lg win_os" data-v-e2abb636="" data-v-520bec6f="">
            <div data-v-520bec6f="" data-v-e2abb636="" class="container my lg">
              <div data-v-520bec6f="" class="snb_area" data-v-e2abb636="">
              <a data-v-520bec6f="" href="/mypage" aria-current="page" class="nuxt-link-exact-active nuxt-link-active">
                  <h2 data-v-520bec6f="" class="snb_main_title">마이 페이지</h2></a>
                <nav class="snb">
                  <div class="snb_list"><strong data-v-7bcac446="" class="snb_title">쇼핑 정보</strong>
                    <ul data-v-7a824f04="" data-v-7bcac446="" class="snb_menu">
                      <li class="menu_item"><a data-v-7a824f04="" href="/buying" class="menu_link"> 구매 내역 </a></li>
                      <li data-v-7a824f04="" class="menu_item">
                      <a data-v-7a824f04="" href="/selling" class=" menu_link"> 판매 내역</a></li>
                      <li data-v-7a824f04="" class="menu_item">
                      <a data-v-7a824f04="" href="" class="menu_link"> 보관 판매</a></li>
                      <li data-v-7a824f04="" class="menu_item">
                      <a data-v-7a824f04="" href="" class="menu_link"> 관심 상품 </a></li>
                    </ul>
                  </div>
                </nav>
              </div>
              <div data-v-52a917ff="" data-v-520bec6f="" class="content_area my-page-content">
                <div data-v-52a917ff="" class="my_home">
                  <div data-v-ffa2bac2="" data-v-52a917ff="" class="user_membership">
                    <div data-v-ffa2bac2="" class="user_detail">
                      <div data-v-ffa2bac2="" class="user_thumb"><img data-v-ffa2bac2=""
                          src="/resources/img/mypage/blank_profile.4347742.png" alt="사용자 이미지" class="thumb_img">
                      </div>
                      <div data-v-ffa2bac2="" class="user_info">
                        <div data-v-ffa2bac2="" class="info_box"><strong data-v-ffa2bac2=""
                            class="name">4jhxz7pz</strong>
                          <p data-v-ffa2bac2="" class="email">p******6@naver.com</p><!-- <a data-v-472c9b08="" data-v-ffa2bac2=""
                          href="https://kream.co.kr/my/profile-edit" class="btn btn outlinegrey small" type="button"> 프로필
                          관리 </a><a data-v-472c9b08="" data-v-ffa2bac2="" href="https://kream.co.kr/social/users/@4jhxz7pz"
                          class="btn btn btn_my_style outlinegrey small" type="button"> 내 스타일 </a> -->
                        </div>
                      </div>
                    </div>
                    <div data-v-d487a8ba="" data-v-ffa2bac2="" class="membership-menu"><a data-v-d487a8ba="" href=""
                        class="menu-item">
                        <div data-v-d487a8ba="" class="icon-wrap"><img data-v-d487a8ba=""
                            src="/resources/img/mypage/ico-my-shortcut-point.bb8c04e.svg" name="ico-my-shortcut-point"
                            width="28" height="28" class="icon"></div><span data-v-d487a8ba="" class="name">0P</span>
                      </a><a data-v-d487a8ba="" href="" class="menu-item">
                        <div data-v-d487a8ba="" class="icon-wrap"><img data-v-d487a8ba=""
                            src="/resources/img/mypage/ico-my-shortcut-coupon.b9a7693.svg" name="ico-my-shortcut-coupon"
                            width="28" height="28" class="icon"><!----></div><span data-v-d487a8ba="" class="name">쿠폰
                          0</span>
                      </a><a data-v-d487a8ba="" href="" class="menu-item">
                        <div data-v-d487a8ba="" class="icon-wrap"><img data-v-d487a8ba=""
                            src="/resources/img/mypage/ico-my-shortcut-announce.a1e286c.svg"
                            name="ico-my-shortcut-announce" width="28" height="28" class="icon"><!----></div><span
                          data-v-d487a8ba="" class="name">공지사항</span>
                      </a></div>
                  </div>
                  <div data-v-52a917ff="" class="inventory_box">
                    <div data-v-3e19b064="" data-v-52a917ff="">
                      <div data-v-6752ceb2="" data-v-3e19b064="" class="my_home_title">
                        <h3 data-v-6752ceb2="" class="title"> 보관 판매 내역 </h3><a data-v-6752ceb2="" href=""
                          class="btn_more"><span data-v-6752ceb2="" class="btn_txt">더보기</span><svg data-v-6752ceb2=""
                            class="icon sprite-icons arr-right-gray">
                            <use data-v-6752ceb2="" href=""></use>
                          </svg></a>
                      </div>
                      <div data-v-3e19b064="" class="purchase_list_tab inventory">
                        <div data-v-3e19b064="" class="tab_item total"><a data-v-3e19b064="" href="" class="tab_link">
                            <dl data-v-3e19b064="" class="tab_box">
                              <dt data-v-3e19b064="" class="title">발송요청</dt>
                              <dd data-v-3e19b064="" class="count">0</dd>
                            </dl>
                          </a></div>
                        <div data-v-3e19b064="" class="tab_item"><a data-v-3e19b064="" href="" class="tab_link">
                            <dl data-v-3e19b064="" class="tab_box">
                              <dt data-v-3e19b064="" class="title">판매대기</dt>
                              <dd data-v-3e19b064="" class="count">0</dd>
                            </dl>
                          </a></div>
                        <div data-v-3e19b064="" class="tab_item"><a data-v-3e19b064="" href="" class="tab_link">
                            <dl data-v-3e19b064="" class="tab_box">
                              <dt data-v-3e19b064="" class="title">판매 중</dt>
                              <dd data-v-3e19b064="" class="count">0</dd>
                            </dl>
                          </a></div>
                        <div data-v-3e19b064="" class="tab_item"><a data-v-3e19b064="" href="" class="tab_link">
                            <dl data-v-3e19b064="" class="tab_box">
                              <dt data-v-3e19b064="" class="title">정산완료</dt>
                              <dd data-v-3e19b064="" class="count">0</dd>
                            </dl>
                          </a></div>
                      </div>
                    </div>
                    <div data-v-7e421ebe="" data-v-52a917ff="" class="banner_inventory available"><a data-v-7e421ebe=""
                        href="" class="banner_link">
                        <div data-v-7e421ebe="" class="banner_detail">
                          <p data-v-7e421ebe="" class="banner_title">보관 신청하기</p>
                          <p data-v-7e421ebe="" class="banner_desc">한 번에 신청하고 한 번에 발송하세요.</p>
                        </div>
                      </a><!----><!----></div>
                  </div>
                  <div data-v-6752ceb2="" data-v-52a917ff="" class="my_home_title">
                    <h3 data-v-6752ceb2="" class="title"> 구매 내역 </h3><a data-v-6752ceb2="" href=""
                      class="btn_more"><span data-v-6752ceb2="" class="btn_txt">더보기</span><svg data-v-6752ceb2=""
                        class="icon sprite-icons arr-right-gray">
                        <use data-v-6752ceb2="" href=""></use>
                      </svg></a>
                  </div>
                  <div data-v-52a917ff="" class="recent_purchase">
                    <div data-v-2cbb289b="" data-v-52a917ff="" class="purchase_list_tab">
                      <div data-v-2cbb289b="" class="tab_item total"><a data-v-2cbb289b="" href="" class="tab_link">
                          <dl data-v-2cbb289b="" class="tab_box">
                            <dt data-v-2cbb289b="" class="title">전체</dt>
                            <dd data-v-2cbb289b="" class="count">0</dd>
                          </dl>
                        </a></div>
                      <div data-v-2cbb289b="" class="tab_item tab_on"><a data-v-2cbb289b="" href="" class="tab_link">
                          <dl data-v-2cbb289b="" class="tab_box">
                            <dt data-v-2cbb289b="" class="title">입찰 중</dt>
                            <dd data-v-2cbb289b="" class="count">0</dd>
                          </dl>
                        </a></div>
                      <div data-v-2cbb289b="" class="tab_item"><a data-v-2cbb289b="" href="" class="tab_link">
                          <dl data-v-2cbb289b="" class="tab_box">
                            <dt data-v-2cbb289b="" class="title">진행 중</dt>
                            <dd data-v-2cbb289b="" class="count">0</dd><!---->
                          </dl>
                        </a></div>
                      <div data-v-2cbb289b="" class="tab_item"><a data-v-2cbb289b="" href="" class="tab_link">
                          <dl data-v-2cbb289b="" class="tab_box">
                            <dt data-v-2cbb289b="" class="title">종료</dt>
                            <dd data-v-2cbb289b="" class="count">0</dd>
                          </dl>
                        </a></div>
                    </div>
                    <div data-v-52a917ff="">
                      <div data-v-7a0ddb52="" data-v-52a917ff="" class="purchase_list all bid"><!---->
                        <div data-v-6abf8c64="" data-v-7a0ddb52="" class="empty_area">
                          <p data-v-6abf8c64="" class="desc">거래 내역이 없습니다.</p><!---->
                        </div>
                        <div data-v-7a0ddb52="" class="v-portal" style="display: none;"></div>
                      </div><!---->
                    </div>
                  </div>
                  <div data-v-6752ceb2="" data-v-52a917ff="" class="my_home_title">
                    <h3 data-v-6752ceb2="" class="title"> 판매 내역 </h3><a data-v-6752ceb2="" href=""
                      class="btn_more"><span data-v-6752ceb2="" class="btn_txt">더보기</span><svg data-v-6752ceb2=""
                        class="icon sprite-icons arr-right-gray">
                        <use data-v-6752ceb2="" href=""></use>
                      </svg></a>
                  </div>
                  <div data-v-52a917ff="" class="recent_purchase">
                    <div data-v-2cbb289b="" data-v-52a917ff="" class="purchase_list_tab sell">
                      <div data-v-2cbb289b="" class="tab_item total"><a data-v-2cbb289b="" href="" class="tab_link">
                          <dl data-v-2cbb289b="" class="tab_box">
                            <dt data-v-2cbb289b="" class="title">전체</dt>
                            <dd data-v-2cbb289b="" class="count">0</dd>
                          </dl>
                        </a></div>
                      <div data-v-2cbb289b="" class="tab_item tab_on"><a data-v-2cbb289b="" href="" class="tab_link">
                          <dl data-v-2cbb289b="" class="tab_box">
                            <dt data-v-2cbb289b="" class="title">입찰 중</dt>
                            <dd data-v-2cbb289b="" class="count">0</dd>
                          </dl>
                        </a></div>
                      <div data-v-2cbb289b="" class="tab_item"><a data-v-2cbb289b="" href="" class="tab_link">
                          <dl data-v-2cbb289b="" class="tab_box">
                            <dt data-v-2cbb289b="" class="title">진행 중</dt>
                            <dd data-v-2cbb289b="" class="count">0</dd><!---->
                          </dl>
                        </a></div>
                      <div data-v-2cbb289b="" class="tab_item"><a data-v-2cbb289b="" href="" class="tab_link">
                          <dl data-v-2cbb289b="" class="tab_box">
                            <dt data-v-2cbb289b="" class="title">종료</dt>
                            <dd data-v-2cbb289b="" class="count">0</dd>
                          </dl>
                        </a></div>
                    </div>
                    <div data-v-52a917ff="">
                      <div data-v-7a0ddb52="" data-v-52a917ff="" class="purchase_list all ask"><!---->
                        <div data-v-6abf8c64="" data-v-7a0ddb52="" class="empty_area">
                          <p data-v-6abf8c64="" class="desc">거래 내역이 없습니다.</p><!---->
                        </div>
                        <div data-v-7a0ddb52="" class="v-portal" style="display: none;"></div>
                      </div><!---->
                    </div>
                  </div>
                  <div data-v-6752ceb2="" data-v-52a917ff="" class="my_home_title">
                    <h3 data-v-6752ceb2="" class="title"> 관심 상품 </h3><a data-v-6752ceb2="" href=""
                      class="btn_more"><span data-v-6752ceb2="" class="btn_txt">더보기</span><svg data-v-6752ceb2=""
                        class="icon sprite-icons arr-right-gray">
                        <use data-v-6752ceb2="" href=""></use>
                      </svg></a>
                  </div>
                  <div data-v-52a917ff="" class="interest_product"><!---->
                    <div data-v-6abf8c64="" data-v-52a917ff="" class="empty_area has_bg">
                      <p data-v-6abf8c64="" class="desc">추가하신 관심 상품이 없습니다.</p><a data-v-472c9b08="" data-v-6abf8c64=""
                        href="" class="btn outlinegrey small"> SHOP 바로가기 </a>
                    </div>
                  </div><!---->
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