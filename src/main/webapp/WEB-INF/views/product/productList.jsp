<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../header.jsp"></jsp:include>
<title>상품목록</title>
<style>
	.plistTable {
		border: 1px solid black;
		border-collapse: collapse;
	}
	.toDetail {
		text-decoration: none;
		color: black;
	}
</style>
</head>
<body>
	<div>
		<jsp:include page="../nav.jsp"></jsp:include>
	</div>
		<h1>상품 목록</h1>
	<div>
		<table>
			<thead class="plistTable">
				<tr>
					<th>상품코드</th>
					<th>카테고리 번호</th>
					<th>상품 이름</th>
					<th>상품이미지</th>
				</tr>
			</thead>
			<c:forEach var="item" items="${plist}">
			<tbody  class="plistTable">
				<tr>
					<td>${item.pNo}</td>
					<td>${item.cNo}</td>
					<td>
						<a href="${pageContext.request.contextPath}/detail.do?pNo=${item.pNo}" class="toDetail">
						<c:out value="${item.pName}"/>
						</a>
					</td>
					<td>
						<a href="${pageContext.request.contextPath}/detail.do?pNo=${item.pNo}">
						<img alt="" src="img/${item.pImg1}" class="toDetail" width="570" height="570">
						</a>
					</td>
				</tr>
			</tbody>
			</c:forEach>
		</table>
	</div>
</body>
</html>