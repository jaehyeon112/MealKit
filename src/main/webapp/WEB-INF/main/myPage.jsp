<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
#myContainer {
	width: 1180px;
	height: 100%;
	margin: 0, auto;
	overflow: hidden;
}

.leftMenu {
	float: left;
	width: 190px;
	border: solid 1px #ccc;
}

.rightCon {
	float: right;
	width: 940px;
}

li {
	display: inline-block;
}
</style>
<section id="myContainer">
	<div id="content" class="myWrap">
		<div class="leftMenu">
			<h2 class="h2tit">My메뉴</h2>
			<dl class="myMenu first">
				<dt>나의 주문정보</dt>
				<dd>
					<ul class="menuList">
						<li><a href="#">주문/배송 조회</a></li>
						<li><a href="#">취소/반품 조회</a></li>
					</ul>
				</dd>
			</dl>
			<dl class="myMenu">
				<dt>나의 혜택</dt>
				<dd>
					<ul class="menuList">
						<li><a href="#">포인트</a></li>
					</ul>
				</dd>
			</dl>
			<dl class="myMenu">
				<dt>나의 활동</dt>
				<dd>
					<ul class="menuList">
						<li><a href="#">작성 리뷰 조회</a></li>
						<li><a href="#">1:1 문의</a></li>
					</ul>
				</dd>
			</dl>
			<dl class="myMenu">
				<dt>나의 정보</dt>
				<dd>
					<ul class="menuList">
						<li><a href="#">개인정보 변경</a></li>
						<li><a href="#">회원탈퇴</a></li>
					</ul>
				</dd>
			</dl>
		</div>
		<div class="rightCon">
			<div class="myMain">
				<h3 class="hide">나의 정보</h3>
				<div class="mainTop">
					<div class="topInfo">
						<div class="name">"홍길동님"</div>
					</div>
				</div>
				<div class="bottomInfo">
					<ul class="benefitInfo">
						<li><a href="#">
								<dl>
									<dt>포인트</dt>
									<dd>
										<span class="num point">0p</span>
									</dd>
								</dl>
						</a></li>
					</ul>
				</div>
			</div>
			<div class="mainBottom">
				<div class="myInfoWrap">
					<div class="infoBox">최근 구매한 메뉴</div>
					<!-- 상품목록 -->
					<div class="col mb-5">
						<div class="card h-100">
							<!-- Sale badge-->
							<div class="badge bg-dark text-white position-absolute"
								style="top: 0.5rem; right: 0.5rem">Sale</div>
							<!-- Product image-->
							<a href="menupage.do"> <img class="card-img-top"
								src="https://search.pstatic.net/common/?src=https%3A%2F%2Fshopping-phinf.pstatic.net%2Fmain_8311632%2F83116327439.1.jpg&type=f372_372"
								alt="..." />
							</a>

							<!-- Product details-->
							<div class="card-body p-4">
								<div class="text-center">
									<!-- Product name-->
									<h5 class="fw-bolder">기똥찬 순대국</h5>
									<!-- Product reviews-->
									<div
										class="d-flex justify-content-center small text-warning mb-2">
										<div class="bi-star-fill"></div>
										<div class="bi-star-fill"></div>
										<div class="bi-star-fill"></div>
										<div class="bi-star-fill"></div>
										<div class="bi-star-fill"></div>
									</div>
									<!-- Product price-->
									<span class="text-muted text-decoration-line-through">$20.00</span>
									$18.00
								</div>
							</div>
							<!-- Product actions-->
							<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
								<div class="text-center">
									<a class="btn btn-outline-dark mt-auto" href="#">장바구니</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col mb-5">
						<div class="card h-100">
							<!-- Sale badge-->
							<div class="badge bg-dark text-white position-absolute"
								style="top: 0.5rem; right: 0.5rem">Sale</div>
							<!-- Product image-->
							<img class="card-img-top"
								src="https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20230914_237%2F16946628457743JvCH_PNG%2FxpbQI_100004_1.png&type=a340"
								alt="..." />
							<!-- Product details-->
							<div class="card-body p-4">
								<div class="text-center">
									<!-- Product name-->
									<h5 class="fw-bolder">기절하는 갈비탕</h5>
									<!-- Product reviews-->
									<div
										class="d-flex justify-content-center small text-warning mb-2">
										<div class="bi-star-fill"></div>
										<div class="bi-star-fill"></div>
										<div class="bi-star-fill"></div>
										<div class="bi-star-fill"></div>
										<div class="bi-star-fill"></div>
									</div>
									<!-- Product price-->
									<span class="text-muted text-decoration-line-through">25,000원</span>
									20,000원
								</div>
							</div>
							<!-- Product actions-->
							<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
								<div class="text-center">
									<a class="btn btn-outline-dark mt-auto" href="#">장바구니</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
</section>