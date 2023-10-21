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
            <div class="btn-cont">
                <a class="btn-kakao" href="#" data-type="login" onclick="kakaoLogin();">
                    <img src="/resources/img/kakaologin.png" width="340" height="48"  alt="카카오 로그인 버튼"/>
                </a>
            </div>
            <div>
                <a href="${pageContext.request.contextPath}/member/join"><button type="submit" class="btn2">회원가입</button></a>
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
	
<form id="frmLogin" name="frmLogin" method="post" action="/kakao/callback">
	<input type="hidden" name="loginType" value=""/>	
	<input type="hidden" id="userEmail" name="id">	
</form>

<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>		
<script>
$(document).ready(function(){
	//카카오톡로그인버튼
	$(".btn-kakao").click(function(){
		const type = $(this).data("type");
		kakaoLogin(type);
		return false;
	});
});
//카카오 키 정보 입력
Kakao.init('526623ee8b7d0f83434205bd9b90b585');//본인 javaScript 키

//카카오SDK 초기화
Kakao.isInitialized();

//카카오로그인
function kakaoLogin(type){
	Kakao.Auth.login({
		success:function(response){
			Kakao.API.request({
				url:'/v2/user/me',
				success:function(response){
					console.log(response)
					$("input[name=loginType]").val();
					$("#userEmail").val(response.id);
 					$("#frmLogin").submit();
				},
				fail: function(error){
					console.log(error)
				},
			})
		},fail: function(error){
			console.log(error)
		},
	})
}
</script>


</body>
</html>