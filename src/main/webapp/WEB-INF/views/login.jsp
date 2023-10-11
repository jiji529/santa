<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" href="/login.css">
<title>로그인</title>
</head>
<body>
	<div class="login-page" ng-app="">

		<div class="login-content login-content-signin" ng-hide="showSignIn">
			<div>
				<h1 class="h1">santa</h1>
			</div>
			<div>
				<h2 class="h2">Log in</h2>
				<form method="POST" class="wrapper-box" role="form"
					ng-submit="login()">
					<input type="email" ng-model="email"
						class="form-control form-control-email"
						placeholder="Email address" required> <input
						type="password" ng-model="password"
						class="form-control form-control-password" placeholder="Password"
						required>

					<!-- <div class="checkbox pull-left">
                <label>
                  <input type="checkbox"> Remember me.
                </label>
              </div> -->

					<a href="${pageContext.request.contextPath}/main.do">
						<button type="submit" class="btn">Log in</button>
					</a>
				</form>
			</div>
		</div>


	</div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.2.5/angular.min.js"></script>

</body>
</html>