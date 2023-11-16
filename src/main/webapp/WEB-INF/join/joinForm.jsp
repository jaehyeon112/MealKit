<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	border: none; < !
	-- border-bottom: solid 1px #ccc; -->
	padding: 20px 0px 5px 0px;
	font-size: 14pt;
	width: 300px;
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

input:focus, input:not(:placeholder-shown) { < !
	-- border-bottom: solid 1px #8aa1a1; -->
	outline: none;
}

input[type=submit] {
	background-color: #BDD61A;
	border: none;
	color: white;
	border-radius: 5px;
	height: 35px;
	font-size: 14pt;
	margin-top: 20px;
}

input[type=reset] {
	background-color: #BDD61A;
	border: none;
	color: white;
	border-radius: 5px;
	height: 35px;
	font-size: 14pt;
	margin-top: 20px;
}

h2 {
	color: #BDD61A;
}

#box {
	margin-bottom: 20px;
}

#button {
	text-align: center;
}

#submit {
	margin-right: 10px;
}
</style>
<div id="joinContainer">
	<header>
		<h2>JOIN</h2>
	</header>

	<form action="signUp.do" method="POST">
		<div id="box">
			<div class="input-box">
				<!--<input style="border: none" id="userid" type="text" name="userid" placeholder="아이디">
						<label for="userid">아이디</label>
				-->
				<div class="row">
					<div class="col-sm-8 ">
						<input style="border: none" id="userid" type="text" name="userid" placeholder="아이디">
						<label for="userid">아이디</label>
					</div>
					  <div class="col-sm-4">
						<input type="button" onclick="idCheck()" value="중복확인">
					</div>
				</div>
			</div>
			<input type="hidden" name="idUncheck" value = "idUncheck">
			<div class="input-box">
				<input id="password" type="password" name="password"
					placeholder="비밀번호" autocomplete="off"> <label
					for="password">비밀번호</label>
			</div>
			<div class="input-box">
				<input id="repassword" type="password" name="repassword"
					placeholder="비밀번호 재확인" autocomplete="off"> <label
					for="repassword">비밀번호 재확인</label>
			</div>
		</div>
		<div id="box">
			<div class="input-box">
				<input id="username" type="text" name="username" placeholder="이름">
				<label for="username">이름</label>
			</div>
			<div class="input-box">
				<input id="birth" type="text" name="birth" placeholder="생년월일"
					maxlength="6"> <label for="birth">생년월일(뒷 6자리)</label>
			</div>
		</div>
		<div id="box">
			<div class="input-box">
				<input id="email" type="text" name="email" placeholder="이메일">
				<label for="email">이메일</label>
			</div>
			<div class="input-box">
				<input id="phone" type="text" name="phone" placeholder="휴대전화"
					maxlength="11"> <label for="phone">휴대전화("-" 제외)</label>
			</div>
		</div>


		<div class="input-box">
			<div class="row">
				<div class="col-sm-7 ">
					<input style="border: none" id="address3" type="text"
						name="address3" placeholder="우편번호"> <label for="address">우편번호</label>
				</div>
				<div class="col-sm-5">
					<input type="button" onclick="DaumPostcode()" value="우편번호 찾기">
				</div>
			</div>

		</div>
		<div class="input-box">
			<input id="address1" type="text" name="address1" placeholder="주소">
			<label for="address">주소</label>
		</div>
		<div class="input-box">
			<input id="address2" type="text" name="address2" placeholder="상세주소">
			<label for="address">상세주소</label>
		</div>
		<div id="button">
			<input type="submit" id="submit" value="회원가입"
				onclick="return check()"> <input type="reset" value="초기화">
		</div>
	</form>
</div>

<!-- jQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>

	function DaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var addr = ''; // 주소 변수

				//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					addr = data.roadAddress;
				} else { // 사용자가 지번 주소를 선택했을 경우(J)
					addr = data.jibunAddress;
				}

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('address3').value = data.zonecode;
				document.getElementById("address1").value = addr;
				// 커서를 상세주소 필드로 이동한다.
				document.getElementById("address2").focus();
			}
		}).open();
	}
	
	function check() {
		var userId = document.getElementById("userid");
		var userPassword = document.getElementById("password");
		var userRePassword = document.getElementById("repassword");
		var userName = document.getElementById("username");
		var userBirth = document.getElementById("birth");
		var userEmail = document.getElementById("email");
		var userPhone = document.getElementById("phone");
		var userAddress1 = document.getElementById("address1");
		var userAddress2 = document.getElementById("address2");
		var userAddress3 = document.getElementById("address3");
		
		
		
		if (userId.value == "") {
			alert("아이디를 입력해주세요.")
			userId.focus();
			return false;
		}

		if (userPassword.value == "") {
			alert("비밀번호를 입력해주세요.")
			userPassword.focus();
			return false;
		}
		if (userPassword.value != userRePassword.value) {
			alert("비밀번호가 일치하지 않습니다.")
			userRePassword.focus();
			return false;
		}
		if (userName.value == "") {
			alert("이름을 입력해주세요.")
			userName.focus();
			return false;
		}
		if (userBirth.value == "") {
			alert("생년월일을 입력해주세요.")
			userBirth.focus();
			return false;
		}
		if (userEmail.value == "") {
			alert("이메일을 입력해주세요.")
			userEmail.focus();
			return false;
		}
		if (userPhone.value == "") {
			alert("연락처를 입력해주세요.")
			userPhone.focus();
			return false;
		}
		if (userAddress1.value == "") {
			alert("우편번호를 입력해주세요.")
			userAddress1.focus();
			return false;
		}
		if (userAddress2.value == "") {
			alert("주소를 입력해주세요.")
			userAddress2.focus();
			return false;
		}
		if (userAddress3.value == "") {
			alert("상세주소를 입력해주세요.")
			userAddress3.focus();
			return false;
		}
		if(idUncheck.value != "idCheck"){
			alert("아이디 중복체크를 해주세요.")
		}
		
	}
	
	function idCheck(){
		window.open("IdCheckForm.jsp","idwin","width=400", "height=350");
	}
</script>