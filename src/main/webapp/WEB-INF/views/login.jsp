<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  
    <link type="text/css" rel="stylesheet" href="resources/css/member.css">
    <title>로그인</title>

  <!-- ======= TOP Header ======= -->
  <jsp:include page="header.jsp"></jsp:include>
  
</head>
<body>
    <div class="container">
        <div class="login-content">
            <h1 class="h1">Santa</h1>
            <h2 class="h2" style= "font-size: 24px;">Login</h2>
            <form method="POST" role="form">
                <input type="email" name="userEmail" class="form-control" placeholder="Email address" required>
                <input type="password" name="userPwd" class="form-control" placeholder="Password" required>
                <a href="${pageContext.request.contextPath}/main.do"><button type="submit" class="btn1">Login</button></a>
            </form>
            <div>
                <a href="${pageContext.request.contextPath}/member/join"><button type="submit" class="btn1">회원가입</button></a>
            </div>
            <div class="btn-cont">
                <a class="btn-kakao" href="#" data-type="login">
                    <img src="/resources/img/kakaologin.png" width="340" height="48"  alt="카카오 로그인 버튼"/>
                </a>
            </div>
        </div>
    </div>
    <br>
    <footer>
        <jsp:include page="footer.jsp"></jsp:include>
    </footer>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.2.5/angular.min.js"></script>
	
	<script>
	const msg = "${msg}";
	if(msg)
		alert(msg);
	</script>
</body>
</html>