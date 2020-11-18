<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.io.PrintWriter"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<meta name="generator" content="Jekyll v4.1.1">
<title>오묘한맛's 블로그</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.5/examples/album/">

<!-- Bootstrap core CSS -->
<link href="./assets/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
<!-- Custom styles for this template -->
<link href="css/album.css" rel="stylesheet">
</head>
<body>

<%
	//로긴 한사람이면 userID라는 변수에 해당 아이디가 담기고 그렇지 않으면 null값
	
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>

	<header>
		<div class="collapse bg-dark" id="navbarHeader">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-md-7 py-4">
						<h4 class="text-white">오묘한맛'Blog</h4>
						<p class="text-muted">안녕하세요 오묘한맛's 블로그입니다. 제 블로그에 방문해주셔서
							감사합니다. 게임,스포츠,포트폴리오를 정리한 저의 블로그입니다.</p>
					</div>
					<div class="col-sm-4 offset-md-1 py-4">
						<h4 class="text-white">메뉴</h4>
						<ul class="list-unstyled">
							<li><a href="mybbs.jsp" class="text-white">개인적인 생각</a></li>
							<li><a href="gamebbs.jsp" class="text-white">게임 게시판</a></li>
							<li><a href="sportsbbs.jsp" class="text-white">스포츠 게시판</a></li>
							<li><a href="eatbbs.jsp" class="text-white">맛집 후기 게시판</a></li>
							<li><a href="portbbs.jsp" class="text-white">포트 폴리오</a></li>
							
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="navbar navbar-dark bg-dark shadow-sm">
			<div class="container d-flex justify-content-between">
				<a href="home.jsp" class="navbar-brand d-flex align-items-center"> 
				<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
						fill="none" stroke="currentColor" stroke-linecap="round"
						stroke-linejoin="round" stroke-width="2" aria-hidden="true"
						class="mr-2" viewBox="0 0 24 24" focusable="false">
						<path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z" />
						<circle cx="12" cy="13" r="4" /></svg> <strong>오묘한맛's Blog</strong>
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					aria-controls="navbarHeader" aria-expanded="false"
					aria-label="Toggle navigation"
					onclick="location='login.jsp'">로그인</button>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					aria-controls="navbarHeader" aria-expanded="false"
					aria-label="Toggle navigation" onclick="location='./logoutAction.jsp'">로그아웃</button>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarHeader" aria-controls="navbarHeader"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
			</div>
		</div>
	</header>
	<br>
	<div class="container">
		<div class="row">
			<form method="post" action="gamebbswriteAction.jsp">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2"
								style="background-color: #eee; text-align: center; width: 1080px;">게시판 글쓰기
								양식</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control"
								placeholder="글 제목" name="bbsTitle" maxlength="50"></td>
						</tr>
						<tr>
							<td><textarea type="text" class="form-control"
									placeholder="글 내용" name="bbsContent" maxlength="2048"
									style="height: 350px;">
                        </textarea></td>
						</tr>
					</tbody>
				</table>
				<input type="submit" class="btn btn-primary pull-right" value="글쓰기">
			</form>
		</div>
	</div>
</body>
</html>