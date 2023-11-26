<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
#idContainer {
	width: 40%;
	margin: 0 auto;
	margin-top: 20px;
	margin-bottom: 300px;
	border: solid 1px #ccc;
}

header {
	display: flex;
	justify-content: center;
}

form {
	padding: 20px;
}

.input-box {
	position: relative;
	margin: 10px 0;
	margin-left: 20%;
	margin-right: 20%;
	border: solid 1px #ccc;
}

.input-box>input {
	background: transparent;
	border: none;
	padding: 20px 0px 5px 0px;
	font-size: 14pt;
}

input::placeholder {
	color: transparent;
}

input:placeholder-shown+label {
	color: #aaa;
	font-size: 14pt;
	top: 15px;
}

input:focus+label, label {
	color: #8aa1a1;
	font-size: 10pt;
	pointer-events: none;
	position: absolute;
	left: 0px;
	top: 0px;
	transition: all 0.2s ease;
	-webkit-transition: all 0.2s ease;
	-moz-transition: all 0.2s ease;
	-o-transition: all 0.2s ease;
}

input:focus, input:not(:placeholder-shown) {
	outline: none;
}

#btnSearch {
	background-color: #BDD61A;
	border: none;
	color: white;
	border-radius: 5px;
	height: 35px;
	font-size: 14pt;
	margin-top: 20px;
	margin-left: 40%;
	margin-bottom: 10px;
}

h2 {
	color: #BDD61A;
}

#submitUl {
	text-align: center;
	font-size: 12pt;
	color: rgb(164, 164, 164);
	margin: 10px 0px;
	padding-right: 50px;
}

a {
	text-decoration-line: none;
	color: black;
}

li {
	display: inline-block;
}

#errMsg {
	text-align: center;
}
</style>

<div id="idContainer">
	<header>
		<h2>아이디 찾기</h2>
	</header>
	
	<div class="input-box">
		<input id="userName" type="text" name="userName" placeholder="등록한 이름">
		<label for="userName">등록한 이름</label>
	</div>
	<div class="input-box">
		<input id="userPhone" type="text" name="userPhone"placeholder="휴대폰번호를 '-'없이 입력"> 
		<label for="userPhone">등록한 휴대전화 번호</label>
	</div>
	<c:if test="${!empty errMsg }">
		<div id="errMsg" style="color: black">${errMsg}</div>
	</c:if>
	<button id="btnSearch" onclick="id_search()">아이디 찾기</button>
	
	<ul id="submitUl">
		<li id="forgot"><a href="findPw.do">비밀번호 찾기</a></li>
		<li>|</li>
		<li id="signUp"><a href="login.do">로그인</a></li>
	</ul>
</div>
	

<script>
	function id_search() {
		let userName = document.getElementById("userName").value;
		let userPhone = document.getElementById("userPhone").value;

		if (userName.length < 1) {
			alert("이름을 입력해주세요");
			return;
		}

		if (userPhone.length != 11) {
			alert("핸드폰번호를 정확하게 입력해주세요");
			return;
		}

		window.location.href = "id.do?userName=" + userName + '&userPhone=' + userPhone;
	}
</script>