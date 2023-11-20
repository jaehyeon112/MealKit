<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

.tabMenu {
	padding: 40px;
	padding-left: 0;
}

#ulTabMenu {
	padding-left: 0;
}

#liTabMenu {
	display: inline-block;
	padding-left: 20px;
}

#liTabMenuA {
	display: inline-block;
	padding-bottom: 5px;
	color: #101010;
	font-weight: 700;
	border-bottom: 3px solid #202020;
	font-size: 24px;
	line-height: 34px;
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

h4 {
	font-size: 22px;
	line-height: 32px;
	color: #101010;
	font-weight: 700;
}

a {
	text-decoration-line: none;
	color: #606060;
	font-weight: 500;
	font-size: 14px;
	line-height: 22px;
}

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
						<li id="leftMenu"><a href="#">주문/배송 조회</a></li>
						<li id="leftMenu"><a href="#">취소/반품 조회</a></li>
					</ul>
				</dd>
			</dl>
			<dl class="myMenu">
				<dt>나의 혜택</dt>
				<dd>
					<ul class="menuList">
						<li id="leftMenu"><a href="#">포인트</a></li>
						<li id="leftMenu"><a href="#">회원 등급</a></li>
					</ul>
				</dd>
			</dl>
			<dl class="myMenu">
				<dt>나의 활동</dt>
				<dd>
					<ul class="menuList">
						<li id="leftMenu"><a href="addReview.do">작성 리뷰 조회</a></li>
						<li id="leftMenu"><a href="Qa.do">1:1 문의</a></li>
					</ul>
				</dd>
			</dl>
			<dl class="myMenu">
				<dt>나의 정보</dt>
				<dd>
					<ul class="menuList">
						<li id="leftMenu"><a href="editMypage.do" id="leftMenuA">개인정보
								변경</a></li>
						<li id="leftMenu"><a href="delMypage.do" id="leftMenuA">회원탈퇴</a></li>
					</ul>
				</dd>
			</dl>

			<dl class="adminMenu">
				<dt>관리자페이지</dt>
				<dd>
					<ul class="addMenu">
						<li id="leftaddMenu"><a href="addForm.do">상품등록</a></li>
						<li id="leftaddMenuList"><a href="menuListForm.do">상품리스트</a></li>
					</ul>
				</dd>
			</dl>



		</div>
		<div class="rightCon">
			<div class="myMain">
				<h2>1:1 문의</h2>
			</div>
			<div class="tabMenu">
				<ul id="ulTabMenu">
					<li id="liTabMenu"><a href="Qa.do" id="liTabMenuA">1:1 문의 작성</a></li>
					<li id="liTabMenu"><a href="#" id="liTabMenuA">1:1 문의 내역</a></li>
				</ul>
			</div>

			<h4>문의유형</h4>
			<select class="form-select" aria-label="Default select example">
				<option selected>선택</option>
				<option value="1">주문/결제</option>
				<option value="2">취소/반품</option>
				<option value="3">메뉴/상품</option>
				<option value="4">회원/포인트</option>
				<option value="5">사이트이용</option>
				<option value="6">기타</option>
				<option value="7">신고</option>
			</select>
			<form action="addQa.do" method="post" enctype="multipart/form-data">
		<table class="table">
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" class="form-control"></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="writer"class="form-control" readonly value="${userName }"></td>
			</tr>
			<tr>
				<td colspan="2"><textarea cols="40" rows="6" name="content" class="form-control"></textarea></td>
			</tr>
			<tr>
				<th>파일명</th>
				<td><input type="file" name="img" class="form-control"></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center">
				<input type="submit" value="저장" class="btn btn-primary">
				<input type="reset" value="초기화" class="btn btn-warning">
				</td>
			</tr>
		</table>
	</form>
		</div>
	</div>
</section>