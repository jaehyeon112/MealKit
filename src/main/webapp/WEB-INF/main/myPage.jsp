<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
#myContainer {
	width: 1180px;
	height: 100%;
	margin: 0, auto;
	overflow: hidden;
	margin-bottom: 200px;
}

.leftMenu {
	float: left;
	width: 190px;
}

.rightCon {
	float: right;
	width: 840px;
}
.h2tit {
	padding-bottom: 30px;
	color: #101010;
	font-size: 40px;
	line-height: 56px;
	font-weight: 700;
}

.menuList {
	padding-left: 0;
}

.addMenu {
	padding-left: 0;
}
.bottomInfo {
	margin-bottom: 32px;
}

.mainTop .topInfo {
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

.mainTop .bottomInfo .benefitInfo .benefit {
	display: table-cell;
}

.myMain {
	display: block;
	padding-bottom: 36px;
	border-bottom: 4px solid #202020;
	font-size: 36px;
	line-height: 50px;
	font-weight: 700;
	color: #101010;
}

#leftMenu {
	
}

#test {
	border-top: solid 2.5px black;
}
dt {
	color: #101010;
	font-size: 20px;
	line-height: 30px;
	font-weight: 700;
}
ul {
	list-style: none;
}
h1 {
	font-weight: bold;
}
h2 {
	font-weight: bold;
}

h3 {
	font-weight: bold;
}

a {
	text-decoration-line: none;
	color: #606060;
	font-weight: 500;
	font-size: 14px;
	line-height: 22px;
}

.name {
	font-weight: bold;
}

#point, #tier {
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
						<li id="leftMenu"><a href="delivery.do">주문/배송 조회</a></li>
					</ul>
				</dd>
			</dl>
			
			<dl class="myMenu">
				<dt>나의 활동</dt>
				<dd>
					<ul class="menuList">
						<li id="leftMenu"><a href="addReview.do">작성 리뷰 조회</a></li>
						<li id="leftMenu"><a href="qa.do">1:1 문의</a></li>
					</ul>
				</dd>
			</dl>
			
			<dl class="myMenu">
				<dt>나의 정보</dt>
				<dd>
					<ul class="menuList">
						<li id="leftMenu"><a href="editMypage.do">개인정보 변경</a></li>
						<li id="leftMenu"><a href="delMypage.do">회원탈퇴</a></li>
					</ul>
				</dd>
			</dl>
			
			<c:if test="${!empty userId && userId == 'admin' }">
			<dl class="adminMenu">
				<dt>관리자페이지</dt>
				<dd>
					<ul class="addMenu">
						<li id="leftaddMenu"><a href="qaListAll.do">문의내역</a></li>
						<li id="leftaddMenu"><a href="addForm.do">상품등록</a></li>
						<li id="leftaddMenuList"><a href="menuListForm.do">상품리스트</a></li>
					</ul>
				</dd>
			</dl>
			</c:if>


		</div>
		
		
		<div class="rightCon">
			<div class="myMain">
				<h3 class="hide">나의 정보</h3>
				<div id="test"></div>
				<div class="mainTop">
					<div class="topInfo">
						<div class="name">${userName }님</div>
					</div>
					<div class="bottomInfo">

						<ul class="benefitInfo">

							<li class="benefit"><a href="#">
									<dl>
										<dt>포인트</dt>
										<dd>
											<span class="num point">${user.userPoint } point</span>
										</dd>
									</dl>
							</a></li>
							<li class="benefit"><a href="#">
									<dl>
										<dt>회원 등급</dt>
										<dd>
											<span class="tierName">${user.userGrade }</span>
										</dd>
									</dl>
							</a></li>
							<c:choose>
								<c:when test="${user.userGrade == 'bronze' }">
									<span><img src='resources/images/브론즈.jpg'
										width="200" height="100"></span>
								</c:when>
								<c:when test="${user.userGrade == 'silver' }">
									<span><img src='resources/images/실버.jpg'
										width="200" height="100"></span>
								</c:when>
								<c:when test="${user.userGrade == 'gold' }">
									<span><img src='resources/images/골드.jpg'
										width="200" height="100"></span>
								</c:when>
								<c:when test="${user.userGrade == 'platinum' }">
									<span><img src='resources/images/플래.jpg'
										width="200" height="100"></span>
								</c:when>

							</c:choose>
						</ul>
					</div>
				</div>
			</div>


			
			<div class="mainBottom">
				<div class="myInfoWrap">
					<div class="infoBox"></div>
					<h3>최근 구매 목록</h3>
					<div id="test"></div>
		<div class="recieve_date">
		</div>
		<ul style="list-style-type: none; margin-top:20px">
		<c:forEach items="${order }" var="order">
		<li style="margin-bottom: 20px">
		<div class="row" style="vertical-align: center">
		<div class="col"><img style="width:100px;height:100px" src="resources/menu/${order.menuImage1 }"></div>
		<div class="col-6"><span class="menuIdClass" style="font-size: 20px;line-height: 80px; ">${order.menuName }</span></div>
		<div class="col"><span style="font-size: 14px;line-height: 80px;">${order.menuCount }개</span></div>
		<div class="col"><span style="font-size: 20px;line-height: 80px;; font-weight: 700">${(order.menuPrice)*order.menuCount}원</span></div>
		</div>
		</li>
		</c:forEach>
		</ul>


				</div>
			</div>
		</div>
	</div>
</section>