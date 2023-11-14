<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.cart__bigorderbtn.right {
	background-color: #bdd61a;
	color: black;
	border: none;
	width: 300px;
	height: 40px;
	font-size: 18px;
	font-weight: 700;
}

#test {
	border-top: solid 2.5px black;
	margin-bottom: 20px;
}

input {
	border: #bbb solid 1px;
	height: 40px;
	width: 250px;
	padding-left: 20px;
}

#phone>input {
	width: 100px;
	margin-right: 10px;
}

#phone {
	width: 400px;
}

h3 {
	margin-top: 60px;
	font-size: 22px;
	font-weight: 700;
}

#address {
	margin: 0 auto;
	width: 600px;
}

#address>input {
	width: 200px;
	margin-bottom: 20px;
	margin-left: 20px;
}

table {
	text-align: center;
	border-top: solid 2.5px black;
	width: 300px;
	padding: 20px;
	background-color: #F7F7F7;
	margin-bottom: 30px;
}

tr {
	border-bottom: solid 1px #ccc;
	height: 60px;
}

td {
	font-weight: 600;
}

#buy {
	width: 300px;
	border-color: 1px solid #BDD61A;
	background-color: #BDD61A;
}

#lastPay {
	font-size: 28px;
	line-height: 42px;
	color: #EE0700;
	font-weight: 700;
}
.btn-group{
width: 400px;
}

.how_to_pay >div>div > input {
  appearance: none;
        width: 0;
        height: 0;
        position: absolute;
        pointer-events: none;
}
</style>

<div class="row">
	<div class="col">
		<h1>주문하기</h1>
		<h3>주문자</h3>
		<div id="test"></div>
		<div class="row">
			<div class="col">
				<p>이름</p>
				<input type="text">
			</div>
			<div class="col">
				<p>휴대폰</p>
				<div id="phone">
					<input type="text"><input type="text"><input
						type="text">
				</div>
			</div>
		</div>
		<h3>배송정보</h3>
		<div id="test"></div>
		<div id="address">
			<input type="text" id="sample6_postcode" placeholder="우편번호">
			<input type="button" onclick="sample6_execDaumPostcode()"
				value="우편번호 찾기"><br> <input type="text"
				id="sample6_address" style="width: 420px" placeholder="주소"><br>
			<input type="text" id="sample6_detailAddress" placeholder="상세주소">
			<input type="text" id="sample6_extraAddress" placeholder="참고항목">
		</div>
		<h3>구매할물건</h3>
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
		<h3>결제수단</h3>
		<div id="test"></div>
		<div class="how_to_pay">
		<div class="row">
		<div class="col">
		<input type="radio" id="card" name="card">
		<label for="card">신용카드</label>
		</div>
		<div class="col">
		<input type="radio" id="card" name="card">
		<label for="card">신용카드</label>
		</div>
		<div class="col">
		<input type="radio" id="card" name="card">
		<label for="card">신용카드</label>
		</div>
		</div>
		</div>
	</div>
	
	
	<!-- 옆에서 결제창 -->
	<div class="col-md-4 sticky-top" style="height: 50vh;">

		<h3>결제정보</h3>
		<table>
			<tr>
				<th>총 상품금액</th>
				<td>10000원</td>
			</tr>
			<tr>
				<th>총 배송비</th>
				<td>+3000원</td>
			</tr>
			<tr>
				<th>추가포인트사용</th>
				<td>-2000원</td>
			</tr>
			<tr>
				<th>총 결제 금액</th>
				<td id="lastPay">2000원</td>
			</tr>
		</table>
		<button type="submit" class="cart__bigorderbtn right">결제하기</button>

	</div>
</div>















<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var addr = ''; // 주소 변수
						var extraAddr = ''; // 참고항목 변수

						//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							addr = data.roadAddress;
						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							addr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						if (data.userSelectedType === 'R') {
							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraAddr !== '') {
								extraAddr = ' (' + extraAddr + ')';
							}
							// 조합된 참고항목을 해당 필드에 넣는다.
							document.getElementById("sample6_extraAddress").value = extraAddr;

						} else {
							document.getElementById("sample6_extraAddress").value = '';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample6_postcode').value = data.zonecode;
						document.getElementById("sample6_address").value = addr;
						// 커서를 상세주소 필드로 이동한다.
						document.getElementById("sample6_detailAddress")
								.focus();
					}
				}).open();
	}
</script>


