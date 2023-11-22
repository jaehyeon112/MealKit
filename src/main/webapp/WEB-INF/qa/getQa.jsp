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
span{
margin-right: 100px;
}
b{
margin-right: 150px;
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
				<h2>문의 내역</h2>
			</div>
			<form action="modifyForm.do" name="modQa">
				<input type="hidden" name="qno" value="${qno.qaNo}"
					class="form-control">
				<table class="table">
					<tr>
						<th>글 번호</th>
						<td class="qaNo">${qno.qaNo}</td>
						<th>작성일자</th>
						<td><fmt:formatDate value="${qno.qaDate}"
								pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></td>
					</tr>
					<tr>
						<th>아이디</th>
						<td>${qno.userId}</td>
						<th>이름</th>
						<td>${qno.userName}</td>
					</tr>
					<tr>
						<th>문의 유형</th>
						<td>${qno.qaState}</td>
						<th>제목</th>
						<td colspan="3">${qno.title}</td>
					</tr>
					<tr>
						<td colspan="4"><textarea rows="5" cols="40"
								class="form-control" readonly="readonly">${qno.qaContent}</textarea></td>
					</tr>
					<tr>
						<th>이미지</th>
						<c:choose>
							<c:when test="${empty qno.qaImage }">
								<td colspan="3"></td>
							</c:when>
							<c:otherwise>
								<td colspan="3"><img src="image/${qno.qaImage}"
									width="100px" style="display: block; margin: 0px auto;"></td>
							</c:otherwise>
						</c:choose>
					</tr>
					<tr>
						<td colspan="4" align="center"><c:choose>
								<c:when test="${!empty userId && userId == qno.userId}">
									<input type="submit" value="수정" class="btn btn-dark">
									<input type="button" value="삭제"
										onclick="location.href='removeQa.do?qno=${qno.qaNo}'"
										class="btn btn-light">
								</c:when>
								<c:otherwise>
									<input type="submit" value="수정" disabled>
									<input type="button" value="삭제" disabled>
								</c:otherwise>
							</c:choose></td>
					</tr>
				</table>
			</form>
			<h4>답변등록</h4>
			<table class="table">
				<tr>
					<th>답변내용</th>
					<td><input type="text" id="replyContent"></td>
					<td><button id="addReply">답변등록</button></td>
				</tr>
			</table>

			<h4>답변목록</h4>
			<ul id="list">
				<li style="display: none;" id="template"><span>답변번호</span><span>유저이름</span><b>답변내용</b><span>작성일자</span>
					<button>삭제</button></li>
			</ul>
			<p>
				<a href="qaList.do">문의내역</a>
			</p>
		</div>
	</div>
</section>

<script>
	//댓글목록
	let qaNo = "${qaNo.qaNo }";
	qaNo = document.querySelector('.qaNo').innerHTML;
	let userName = "${userName }";
	let qaReply = "${qaNo.qaReply}";

	function showList() {
		document.querySelectorAll('#list li:not(:nth-of-type(1))').forEach(li => li.remove());
		fetch('replyList.do?qaNo=' + qaNo)
			.then(resolve => resolve.json())
			.then(result => {
				
				result.list.forEach(reply => {
				
					let li = makeRow(reply);
					//ul>li 생성
					document.querySelector('#list').append(li);

				})
				
			})
			.catch(err => console.log(err));
	}
	showList();
//댓글생성함수
	
	function makeRow(reply) {
		let temp = document.querySelector('#template').cloneNode(true);
		temp.style.display = "block";
		temp.querySelector('span:nth-of-type(1)').innerHTML = reply.replyNo;
		temp.querySelector('b').innerHTML = reply.qaReply;
		temp.querySelector('span:nth-of-type(2)').innerHTML = reply.userName;
		temp.querySelector('span:nth-of-type(3)').innerHTML = reply.replyDate;
		console.log(temp);

		temp.querySelector('#template> button').addEventListener('click', function (e) {

			if (userName != '관리자') {
				alert('권한 없음');
				return;
			}
			fetch('removeReply.do', {
					method: 'post',
					headers: {
						'Content-Type': 'application/x-www-form-urlencoded'
					},
					body: 'replyNo=' + reply.replyNo
				})
				.then(resolve => resolve.json())
				.then(result => {
					if (result.retCode == 'OK') {
						e.target.parentElement.remove();
						alert('삭제 완료');
					} else {
						alert('삭제 실패');
					}
				})
				.catch(err => console.log(err));
		})

		return temp;
	}
	//등록버튼
	document.querySelector('#addReply').addEventListener('click', function (e) {
		let reply = document.querySelector('#replyContent').value;
		if (reply == 'null') {
			alert("값을 확인하세요.");
			return;
		}
		//ajax호출 bno,writer,reply => 전달(서블릿으로)
		fetch('addReply.do', {
				method: 'post',
				headers: {
					'Content-Type': 'application/x-www-form-urlencoded'
				},
				body: 'qaNo=' + qaNo + '&userName=' + userName + '&qaReply=' + reply 
			})
			.then(resolve => resolve.json())
			.then(result => {
				if (result.retCode == 'OK') {
					showList(-1);	
				} else {
					alert('등록 실패');
				}
			})
			.catch(err => console.log(err));
	})
</script>

