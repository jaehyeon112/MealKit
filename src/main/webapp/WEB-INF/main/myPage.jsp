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
}

.rightCon {
	float: right;
	width: 740px;
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
						<li><a href="#">나의 리뷰</a></li>
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
				</div>
			</div>
		</div>
	</div>
</section>