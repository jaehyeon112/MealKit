<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
#joinContainer {
	width: 40%;
	margin: 0 auto;
	margin-top: 20px;
	margin-bottom: 20px;
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
	padding: 15px;
}

.input-box>input {
	background: transparent;
	border: none;
	<!--border-bottom: solid 1px #ccc;-->
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
	<!--border-bottom: solid 1px #8aa1a1;-->
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
h2{
color: #BDD61A;
}

</style>
<div id="joinContainer">
	<header>
		<h2>JOIN</h2>
	</header>

	<form action="" method="POST">

		<div class="input-box">
			<input id="userid" type="text" name="userid" placeholder="아이디">
			<label for="userid">아이디</label>
		</div>

		<div class="input-box">
			<input id="password" type="text" name="password" placeholder="비밀번호">
			<label for="password">비밀번호</label>
		</div>

		<div class="input-box">
			<input id="email" type="text" name="email" placeholder="이메일">
			<label for="email">이메일</label>
		</div>
		<div class="input-box">
			<input id="username" type="text" name="username" placeholder="이름">
			<label for="username">이름</label>
		</div>

		<div class="input-box">
			<input id="birth" type="text" name="birth" placeholder="생년월일">
			<label for="birth">생년월일</label>
		</div>
		<div class="input-box">
			<input id="phone" type="text" name="phone" placeholder="휴대전화">
			<label for="phone">휴대전화</label>
		</div>


		<div class="input-box">
			<input id="address" type="text" name="address" placeholder="주소">
			<label for="address">주소</label>
		</div>
		<input type="submit" value="회원가입">
	</form>
</div>


