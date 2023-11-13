<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, height=device-height, minimum-scale=1.0, maximum-scale=1.0, initial-scale=1.0">
<style>
header {
	display: flex;
	justify-content: center;
}

form {
	padding: 10px;
}

.input-box {
	position: relative;
	margin: 10px 0;
}

.input-box>input {
	background: transparent;
	border: none;
	border-bottom: solid 1px #ccc;
	padding: 20px 0px 5px 0px;
	font-size: 14pt;
	width: 100%;
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
	border-bottom: solid 1px #8aa1a1;
	outline: none;
}

input[type=submit] {
	background-color: #8aa1a1;
	border: none;
	color: white;
	border-radius: 5px;
	width: 100%;
	height: 35px;
	font-size: 14pt;
	margin-top: 100px;
}

#forgot {
	text-align: right;
	font-size: 12pt;
	color: rgb(164, 164, 164);
	margin: 10px 0px;
}
</style>
</head>
<body>
	<header>
		<h2>join</h2>
	</header>

	<form action="" method="POST">

		<div class="input-box">
			<input id="userid" type="text" name="userid" placeholder="아이디">
			<label for="userid">아이디</label>
		</div>

		<div class="input-box">
			<input id="password" type="text" name="password"
				placeholder="비밀번호"> <label for="password">비밀번호</label>
		</div>
		
		<div class="input-box">
			<input id="repassword" type="text" name="repassword"
				placeholder="비밀번호 확인"> <label for="repassword">비밀번호 확인</label>
		</div>
		
		<div class="input-box">
			<input id="username" type="text" name="username" placeholder="이름">
			<label for="username">이름</label>
		</div>
		
		<div class="input-box">
			<input id="phone" type="text" name="phone" placeholder="휴대전화">
			<label for="phone">휴대전화</label>
		</div>
		
		<div class="input-box">
			<input id="email" type="text" name="email" placeholder="이메일">
			<label for="email">이메일</label>
		</div>
		
		<div class="input-box">
			<input id="male" type="checkbox" name="male" placeholder="남자">
			<label for="male">남자</label>
		</div>
		<div class="input-box">
			<input id="female" type="checkbox" name="female" placeholder="여자">
			<label for="female">여자</label>
		</div>
		
		<input type="submit" value="회원가입">

	</form>

</body>
</html>