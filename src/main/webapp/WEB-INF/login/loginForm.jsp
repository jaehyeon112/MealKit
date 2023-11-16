<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
#idContainer {
	width: 40%;
	margin: 0 auto;
	margin-top: 20px;
	margin-bottom: 80px;
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

input[type=submit] {
	background-color: #BDD61A;
	border: none;
	color: white;
	border-radius: 5px;
	height: 35px;
	font-size: 14pt;
	margin-top: 40px;
	margin-left: 45%;
}

h2 {
	color: #BDD61A;
}

#submitUl {
	text-align: center;
	font-size: 12pt;
	color: rgb(164, 164, 164);
	margin: 10px 0px;
}

a {
	text-decoration-line: none;
	color: black;
}

li {
	display: inline-block;
}
</style>
<div id="idContainer">
	<header>
		<h2>LOGIN</h2>
	</header>
	<form action="signIn.do" method="POST">
		<div class="input-box">
			<input id="userId" type="text" name="userId" placeholder="아이디">
			<label for="userId">아이디</label>
		</div>
		<div class="input-box">
			<input id="userPassword" type="password" name="userPassword"
				placeholder="비밀번호"> <label for="userPassword">비밀번호</label>
		</div>
		<input type="submit" value="로그인">
		<ul id="submitUl">
			<li id="forgot">아이디 또는 비밀번호 찾기</li>
			<li></li>
			<li>|</li>
			<li></li>
			<li id="signUp"><a href="join.do">회원가입</a></li>
		</ul>
	</form>
</div>


