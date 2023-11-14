<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<ul class="nav justify-content-end bg-black" id="nav">
		<li class="nav-item"><a class="nav-link" href="login.do">(로그인시 아이디)님</a>
		</li>
		<li class="nav-item"><a class="nav-link" href="join.do">회원가입/로그인or로그아웃</a>
		</li>
		<li class="nav-item"><a class="nav-link" href="#">고객센터</a></li>
	</ul>

	<nav class="navbar navbar-expand-sm bg-body-tertiary">
		<div class="container-fluid">
			<a class="navbar-brand" href="main.do">팀명(이미지?)</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
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
					<li>
						<a href="cart.do" class="btn position-relative" style="--bs-btn-border-color:none">
							<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
  <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
</svg><P>장바구니</P>
							<span
								class="position-absolute top-20 start-80 badge rounded-pill bg-danger">
								99+
							</span>
						</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="30"
								height="30" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
								<path
									d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
							</svg>검색</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<hr>