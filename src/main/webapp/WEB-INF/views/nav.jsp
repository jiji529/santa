<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<c:if test="${sessionScope.loginUser == null}">
	<div class="my-2">
		<a href="${pageContext.request.contextPath}/login.do">로그인</a>
		<a href="${pageContext.request.contextPath}/signup">회원가입</a>

	</div>
</c:if>

<c:if test="${sessionScope.loginUser != null}">
	<div class="my-2">
		<p>${loginUser.userEmail}님 환영합니다!</p>
		<a href="${pageContext.request.contextPath}/logout.do">로그아웃</a>
	</div>
</c:if>