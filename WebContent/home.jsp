<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
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
<link href="./css/album.css" rel="stylesheet">
</head>
<body>
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
							<li><a href="#" class="text-white">개인적인 생각</a></li>
							<li><a href="#" class="text-white">게임 게시판</a></li>
							<li><a href="#" class="text-white">스포츠 게시판</a></li>
							<li><a href="#" class="text-white">먹씨 게시판</a></li>
							<li><a href="#" class="text-white">포트 폴리오</a></li>
							<li><a href="#" class="text-white">방명록</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="navbar navbar-dark bg-dark shadow-sm">
			<div class="container d-flex justify-content-between">
				<a href="#" class="navbar-brand d-flex align-items-center"> 
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

	<main role="main">



		<div class="album py-5 bg-light">
			<div class="container">

				<div class="row">
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img class="bd-placeholder-img card-img-top" width="100%"
								height="225" src="./images/말풍선.png"
								preserveAspectRatio="xMidYMid slice" focusable="false"
								role="img" aria-label="Placeholder: Thumbnail" />
							<title>개인적인 생각</title>
							<rect width="100%" height="100%" fill="#55595c" />
							<div class="card-body">
								<p class="card-text">그냥 저의 개인적인 생각을 적어보는 게시판입니다.</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">View</button>

									</div>

								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img class="bd-placeholder-img card-img-top" width="100%"
								height="225" src="./images/game.png"
								preserveAspectRatio="xMidYMid slice" focusable="false"
								role="img" aria-label="Placeholder: Thumbnail" />
							<title>게임 게시판</title>
							<rect width="100%" height="100%" fill="#55595c" />
							<div class="card-body">
								<p class="card-text">제가 플레이하는 게임 소개및 리뷰같은 적는 게시판입니다.</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">View</button>

									</div>

								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img class="bd-placeholder-img card-img-top" width="100%"
								height="225" src="./images/sports.jpg"
								preserveAspectRatio="xMidYMid slice" focusable="false"
								role="img" aria-label="Placeholder: Thumbnail" />
							<title>스포츠 게시판</title>
							<rect width="100%" height="100%" fill="#55595c" />
							<div class="card-body">
								<p class="card-text">자주 보는 스포츠인 야구, 축구 관한 생각을 적는 게시판입니다. 농구도
									배구도 재밌게 보게된다면 추가될거같습니다.</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">View</button>

									</div>

								</div>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img class="bd-placeholder-img card-img-top" width="100%"
								height="225" src="./images/ramen.jpg"
								preserveAspectRatio="xMidYMid slice" focusable="false"
								role="img" aria-label="Placeholder: Thumbnail" />
							<title>먹씨 게시판</title>
							<rect width="100%" height="100%" fill="#55595c" />
							<div class="card-body">
								<p class="card-text">맛집에서 먹은 음식들 리뷰 및 사진을 찍은 게시판입니다.</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">View</button>

									</div>

								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img class="bd-placeholder-img card-img-top" width="100%"
								height="225" src="./images/portpolio.png"
								preserveAspectRatio="xMidYMid slice" focusable="false"
								role="img" aria-label="Placeholder: Thumbnail" />
							<title>포트폴리오</title>
							<rect width="100%" height="100%" fill="#55595c" />
							<div class="card-body">
								<p class="card-text">저의 포트폴리오 정리한 게시판입니다.</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">View</button>

									</div>

								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img class="bd-placeholder-img card-img-top" width="100%"
								height="225" src="./images/guestbook.jpg"
								preserveAspectRatio="xMidYMid slice" focusable="false"
								role="img" aria-label="Placeholder: Thumbnail" />
							<title>방명록</title>
							<rect width="100%" height="100%" fill="#55595c" />
							<div class="card-body">
								<p class="card-text">방명록입니다. 방문한 사람 누구든지 쓸수 있는 곳입니다.</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</main>

	<footer class="text-muted">
		<div class="container">
			<p class="float-right">
				<a href="#">Back to top</a>
			</p>
			<p>Album example is &copy; Bootstrap, but please download and
				customize it for yourself!</p>
			<p>
				New to Bootstrap? <a href="https://getbootstrap.com/">Visit the
					homepage</a> or read our <a href="../getting-started/introduction/">getting
					started guide</a>.
			</p>
		</div>
	</footer>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script>window.jQuery || document.write('<script src="./assets/js/vendor/jquery.slim.min.js"><\/script>')</script>
	<script src="./assets/dist/js/bootstrap.bundle.min.js"></script>
</html>