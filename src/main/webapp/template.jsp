<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
<style>
#nav>li>a {
	color: #ccc;
	font-size: 12px;
	font-weight: 600;
}

.navbar-nav.mx-auto>li>a {
	font-weight: 700;
	font-size: 22px;
	padding-left: 32px !important;
	padding-right: 32px !important;
}

footer>* {
	color: #ccc;
}
</style>
</head>
<body>
	<!-- nav 겸 header -->
	<ul class="nav justify-content-end bg-black" id="nav">
		<li class="nav-item"><a class="nav-link" href="#">(로그인시 아이디)님</a>
		</li>
		<li class="nav-item"><a class="nav-link" href="#">회원가입/로그인or로그아웃</a>
		</li>
		<li class="nav-item"><a class="nav-link" href="#">고객센터</a></li>
	</ul>

	<nav class="navbar navbar-expand-sm bg-body-tertiary">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">팀명(이미지?)</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item"><a class="nav-link" href="#"> 소개 </a></li>
					<li class="nav-item"><a class="nav-link" href="#"> 메뉴 </a></li>
					<li class="nav-item"><a class="nav-link" href="#">리뷰 </a></li>
					<li class="nav-item"><a class="nav-link" href="#">마이페이지 </a></li>
				</ul>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="#">장바구니(뱃지)</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">메뉴찾기</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- body 부분 -->
	<ul>
		<div style="height: 450px"></div>
	</ul>
	<!-- footer 부분 -->
	<footer class="bottom bg-black p-3">
		<!-- Grid container -->
		<div class="container">
			<!-- Section: Links -->
			<section class="mt-2">
				<!-- Grid row-->
				<div class="row text-center d-flex justify-content-center pt-2">
					<!-- Grid column -->
					<div class="col-md-2">
						<h6 class="text-uppercase font-weight-bold">
							<a href="#!" class="text-white">이용약관</a>
						</h6>
					</div>
					<!-- Grid column -->

					<!-- Grid column -->
					<div class="col-md-2">
						<h6 class="text-uppercase font-weight-bold">
							<a href="#!" class="text-white">팀소개</a>
						</h6>
					</div>
					<!-- Grid column -->

					<!-- Grid column -->
					<div class="col-md-2">
						<h6 class="text-uppercase font-weight-bold">
							<a href="#!" class="text-white">추가할까?</a>
						</h6>
					</div>
					<!-- Grid column -->

					<!-- Grid column -->
					<div class="col-md-2">
						<h6 class="text-uppercase font-weight-bold">
							<a href="#!" class="text-white">Contact</a>
						</h6>
					</div>
					<!-- Grid column -->
				</div>
				<!-- Grid row-->
			</section>
			<!-- Section: Links -->

			<hr class="my-2" />

			<!-- Section: Text -->
			<section class="mb-2">
				<div class="row d-flex justify-content-center">
					<div class="col-sm-8">
						<p>(주)예담직업전문학교 대구광역시 중구 중앙대로 403 (남일동 135-1, 5층) / 팀장: 김재현
							Tel:010-8263-3005</p>
						<p>대표 amikjh@naver.com / 개인정보보호책임자:김재현</p>
					</div>
				</div>
			</section>

		</div>
		<!-- Grid container -->

		<!-- Copyright -->
		<div class="text-center p-3"
			style="background-color: rgba(0, 0, 0, 0.2)">
			© Copyright 2023 <a>(주)팀명 All Rights Reserved</a>
		</div>
		<!-- Copyright -->
	</footer>
</body>
</html>