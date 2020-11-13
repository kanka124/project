<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<script
	src="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/alertify.min.js"></script>
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/alertify.min.css" />
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/default.min.css" />
<title>Login</title>
</head>
<body>
	<br>
	<br>
	<div class="container">
		<div class="jumbotron">
			<h1 class="display-4">오묘한맛's Blog</h1>
			<p class="lead">오묘한맛의 블로그입니다.</p>
		</div>
		<div class="container">

			<div class="col-lg-4"></div>

			<div class="col-lg-4">

				<!-- 점보트론 -->

				<div class="jumbotron" style="padding-top: 20px; width: 850px;">

					<!-- 로그인 정보를 숨기면서 전송post -->

					<form method="post" action="loginAction.jsp">

						<h3 style="text-align: center;">로그인화면</h3>

						<div class="form-group">

							<input type="text" class="form-control" placeholder="아이디"
								name="userID" maxlength="20">

						</div>



						<div class="form-group">

							<input type="password" class="form-control" placeholder="비밀번호"
								name="userPassword" maxlength="20">

						</div>

						<div>
							<button id="btn_login" class="btn btn-primary">로그인</button>
							<a class="float-right" href="register.jsp">회원가입</a>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 애니매이션 담당 JQUERY -->

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

	<!-- 부트스트랩 JS  -->

	<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>



</body>

</html>