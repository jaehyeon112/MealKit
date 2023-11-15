<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
#myContainer {
	width: 1180px;
	height: 100%;
	margin: 0, auto;
	overflow: hidden;
	margin-bottom: 100px;
}

.leftMenu {
	float: left;
	width: 190px;
}

.rightCon {
	float: right;
	width: 840px;
}
.bottomInfo{
margin-bottom: 32px;
}
.mainTop .topInfo{
    padding: 0 24px;
    background: linear-gradient(-90deg, #7AB600, #7AB600 45%, #E1EE06);
}
.mainTop .topInfo .name {
    display: inline-block;
    color: #101010;
    font-size: 22px;
    line-height: 64px;
    vertical-align: middle;
    font-weight: 700;
}
.mainTop .bottomInfo .benefitInfo {
    display: table;
    width: 100%;
    table-layout: fixed;
    border-bottom: 1px solid #ccc;
    border-left: 1px solid #ccc;
    border-right: 1px solid #ccc;
}
.myMain{
margin-bottom: 60px;
}
#leftMenu {
	display: inline-block;
}

#test {
	border-top: solid 2.5px black;
}
ul{
list-style: none;
}
h2{
font-weight: bold;
}
h3{
font-weight: bold;
}
a{
text-decoration-line : none;
color: black; 
}
.name{
font-weight: bold;
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
						<li id ="leftMenu"><a href="#">주문/배송 조회</a></li>
						<li id ="leftMenu"><a href="#">취소/반품 조회</a></li>
					</ul>
				</dd>
			</dl>
			<dl class="myMenu">
				<dt>나의 혜택</dt>
				<dd>
					<ul class="menuList">
						<li id ="leftMenu"><a href="#">포인트</a></li>
					</ul>
				</dd>
			</dl>
			<dl class="myMenu">
				<dt>나의 활동</dt>
				<dd>
					<ul class="menuList">
						<li id ="leftMenu"><a href="#">작성 리뷰 조회</a></li>
						<li id ="leftMenu"><a href="#">1:1 문의</a></li>
					</ul>
				</dd>
			</dl>
			<dl class="myMenu">
				<dt>나의 정보</dt>
				<dd>
					<ul class="menuList">
						<li id ="leftMenu"><a href="#">개인정보 변경</a></li>
						<li id ="leftMenu"><a href="#">회원탈퇴</a></li>
					</ul>
				</dd>
			</dl>
		</div>
		<div class="rightCon">
			<div class="myMain">
				<h3 class="hide">나의 정보</h3>
				<div id="test"></div>
				<div class="mainTop">
					<div class="topInfo">
						<div class="name">${userName }</div>
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
				</div>
			<div class="mainBottom">
				<div class="myInfoWrap">
					<div class="infoBox"></div>
							<h3>구매 목록</h3>
		<div id="test"></div>
		<div class="recieve_date">
		<strong>11-16(목) 도착예정</strong>
		</div>
		<ul style="list-style-type: none; margin-top:20px">
		<li style="margin-bottom: 20px">
		<div class="row" style="vertical-align: center">
		<div class="col"><img src="https://picsum.photos/80/80"></div>
		<div class="col-6"><span style="font-size: 20px;line-height: 80px; ">[냉장]어쩌구저쩌구볶음</span></div>
		<div class="col"><span style="font-size: 14px;line-height: 80px;">1개</span></div>
		<div class="col"><span style="font-size: 20px;line-height: 80px;; font-weight: 700">30,000원</span></div>
		</div>
		</li>
		<li style="margin-bottom: 20px">
		<div class="row" style="vertical-align: center">
		<div class="col"><img src="https://picsum.photos/80/80"></div>
		<div class="col-6"><span style="font-size: 20px;line-height: 80px; ">상품명</span></div>
		<div class="col"><span style="font-size: 14px;line-height: 80px;">수량</span></div>
		<div class="col"><span style="font-size: 22px;line-height: 80px;; font-weight: 700">가격</span></div>
		</div>
		</li>
		</ul>

					
				</div>
			</div>
			</div>
			</div>
</section>