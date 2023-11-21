<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
						<li id="leftMenu"><a href="delivery.do">주문/배송 조회</a></li>
						<li id="leftMenu"><a href="cancel.do">취소/반품 조회</a></li>
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
				<h2>문의 수정화면</h2>
			</div>
		<form action="modifyQa.do" name="modQa" method="post">
			<input type="hidden" name="qno" value="${vo.qaNo}" class="form-control">
	<table class="table">
		<tr>
			<th>글 번호</th>
			<td class="qaNo">${vo.qaNo}</td>
			<th>작성일자</th>
			<td><fmt:formatDate value="${vo.qaDate}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></td>
		</tr>
		<tr>
			<th>아이디</th>
			<td>${vo.userId}</td>
			<th>이름</th>
			<td>${vo.userName}</td>
		</tr>
		<tr>
			<th>문의 유형</th>
			<td>${vo.qaState}</td>
			<th>제목</th>
			<td colspan="3"><input type="text" name="title" value="${vo.title}" class="form-control"></td>
		</tr>
		<tr>
			<td colspan="4"><textarea cols="40" rows="5" name="qaContent" class="form-control">${vo.qaContent}</textarea></td>
		</tr>
		<tr>
				<th>파일명</th>
				<td><input type="file" name="qaImage" class="form-control"></td>
			</tr>
		<tr>
			<td colspan="4" align="center">
				<c:choose>
					<c:when test="${!empty userId && userId == vo.userId}">
						<input type="submit" value="수정" class="btn btn-primary"> 
						<input type="button" value="삭제" onclick="location.href='removeQa.do?qno=${vo.qaNo}'" class="btn btn-warning"> 
					</c:when>
					<c:otherwise>
						<input type="submit" value="수정" disabled> <input type="button" value="삭제" disabled> 			
					</c:otherwise>
				</c:choose>
			</td>
		</tr>
	</table>
	<p>
	<a href="qaList.do">목록으로</a>
	</p>
	</form>
		</div>
	</div>
</section>
	

