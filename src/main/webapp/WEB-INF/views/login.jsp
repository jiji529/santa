<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="header.jsp"></jsp:include>
<title>로그인</title>
</head>
<body>
	<div class="container">
		<div>
			<h3>로그인</h3>
		</div>
		<form method="POST">
		<div>
			<div class="form-group">
				<label>아이디:</label>
				<input type="text" name="userEmail">
			</div>
			<div>
				<label>비밀번호:</label>
				<input type="password" name="userPwd">
			</div>
			<div>
				<button>로그인</button>
				<a href="${pageContext.request.contextPath}/main.do"><button type="button">처음으로</button></a>
			</div>
		</div>
		</form>
	</div>	
	
</body>
</html>