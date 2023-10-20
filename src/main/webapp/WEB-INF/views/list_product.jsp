<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

					
						<c:forEach var="item" items="${list}">
							<div class="thumbs">
								<a href="detail.do?pNo=${item.pNo}">
									<div class="thumb">
										<img src="/resources/img/product/${item.pImg1}" alt="이미지를 찾을수 없습니다." class="thum">
									</div>
									<h2>${item.pName}</h2>
									<p>${item.pCode}</p>
									<h3>자세히보기</h3>
<!-- 									<div class="org_price"> -->
<!-- 										<del>30,000</del> -->
<!-- 										<span> 10% </span> -->
<!-- 									</div> -->
								</a>
							</div>
						</c:forEach>
				