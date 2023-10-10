<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="header.jsp"></jsp:include>
<title>test</title>
</head>
<body>
	<div>
		<jsp:include page="nav.jsp"></jsp:include>
	</div>
	<h1>Test를 해보았다.</h1>
	<div>
		<table>
			<thead>
				<tr>
					<th>아이디</th>
					<th>비밀번호</th>
				</tr>
			</thead>
			<c:forEach var="item" items="${list}">
			<tbody>
				<tr>
					<td>${item.userEmail}</td>
					<td>${item.userPwd}</td>
				</tr>
			</tbody>
			</c:forEach>
		</table>
	</div>
	<a href="${pageContext.request.contextPath}/productList.do"><button type="button">상품목록</button></a>
	
<script>
	const msg = "${msg}";
	if(msg)
		alert(msg);
</script>

</body>
</html>