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
                <a href="${pageContext.request.contextPath}/member/join"><button type="submit" class="btn1">회원가입</button></a>
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
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script>
        Kakao.init('526623ee8b7d0f83434205bd9b90b585'); // Replace with your Kakao JavaScript Key

        // Function to handle Kakao login
        function kakaoLogin() {
            Kakao.Auth.login({
                success: function (response) {
                    Kakao.API.request({
                        url: '/v2/user/me',
                        success: function (response) {
                            console.log(response);
                            // You can handle the user data here
                        },
                        fail: function (error) {
                            console.log(error);
                        },
                    });
                },
                fail: function (error) {
                    console.log(error);
                },
            });
        }

/*         // Function to handle Kakao logout
        function kakaoLogout() {
            if (Kakao.Auth.getAccessToken()) {
                Kakao.API.request({
                    url: '/v1/user/unlink',
                    success: function (response) {
                        console.log(response);
                        // Handle logout success
                    },
                    fail: function (error) {
                        console.log(error);
                    },
                });
                Kakao.Auth.setAccessToken(undefined);
            }
        } */
    </script>


</body>
</html>