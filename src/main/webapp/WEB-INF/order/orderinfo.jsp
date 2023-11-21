<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

#address > input,
#phone > input,
.person > input
 {
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

</style>

${cartList}
${map}

<div class="row">
	<div class="col">
		<h1>주문하기</h1>
		<h3>주문자</h3>
		<div id="test"></div>
		<div class="row">
			<div class="col person">
				<p>이름</p>
				<input id="userName" type="text">
			</div>
			<div class="col person">
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
			<div style="width:100px">우편번호</div> <input type="text" id="address3" placeholder="우편번호">
			<input type="button" onclick="sample6_execDaumPostcode()"
				value="우편번호 찾기"><br> <div style="width:100px">주소</div><input type="text"
				id="address1" style="width: 420px" placeholder="주소"><br>
			<div style="width:100px">상세주소</div><input type="text" style="width: 420px" id="address2" placeholder="상세주소">
		</div>
		<h3>구매할물건</h3>
		<div id="test"></div>
		<div class="recieve_date">
		<strong id="nextDate">날짜+2 도착예정</strong>
		</div>
		<ul style="list-style-type: none; margin-top:20px">
		<c:forEach items="${cartList }" var="cart">
		<li style="margin-bottom: 20px">
		<div class="row" style="vertical-align: center">
		<div class="col"><img style="width:100px;height:100px" src="image/${cart.menuImage1 }"></div>
		<div class="col-6"><span class="menuIdClass" style="font-size: 20px;line-height: 80px; " id="${cart.menuId}">${cart.menuName }</span></div>
		<div class="col"><span style="font-size: 14px;line-height: 80px;">${cart.cartCount }개</span></div>
		<div class="col"><span style="font-size: 20px;line-height: 80px;; font-weight: 700">${(cart.menuPrice-cart.menuPriceOff)*cart.cartCount}원</span></div>
		</div>
		</li>
		</c:forEach>
		</ul>

		<h3>포인트사용 여부</h3>
		<div id="test"></div>
		<p>나의 포인트 : <span id="myPoint" style="font-weight: 700;"></span></p>
		<p>사용한 포인트 : <span id="pointMinus" style="font-weight: 700;">0 point</span></p>
		<div style="height: 40px;">
		<input id="checkPoint" type="checkbox" style="width:60px" for="point"  >
		<input id="howManyUsePoint"type="text" placeholder="숫자만 입력해주세요.">
		<input class="btn" id="usePoint" style="border:1px solid #000;" type="button" value="적용">
		</div>
		<h3>결제수단</h3>
		<div id="test"></div>
		
		<div class="form-check">
  <input class="form-check-input" type="radio" name="kindOfPayment" id="kakao">
  <label class="form-check-label" for="kakao">
    카카오페이
  </label>
</div>

<div class="form-check">
  <input class="form-check-input" type="radio" name="kindOfPayment" id="kg" checked>
  <label class="form-check-label" for="kg">
    KG 이니시스
  </label>
</div>
		
		
	</div>
	
	
	<!-- 옆에서 결제창 -->
	<div class="col-md-5 sticky-top" style="height: 70vh;">

		<h3>결제정보</h3>
		<table>
			<tr>
				<th>총 상품금액</th>
				<td id="totalPay"></td>
			</tr>
			<tr>
				<th>배송비</th>
				<td id="delivery"></td>
			</tr>
			<tr>
				<th>총 할인금액</th>
				<td id="priceOff"></td>
			</tr>
			<tr id="totalPoint" >
				<th>사용 포인트</th>
				<td></td>
			</tr>
			<tr>
				<th>총 결제 금액</th>
				<td style="font-size: 24px; font-weight: 700; color:red" id="realPay"></td>
			</tr>
		</table>
		<form name="go" method="post">
		<input type="button" onclick="requestPay()" value="결제하기" class="cart__bigorderbtn right">
		</form>
		
	</div>
</div>




 <script src="https://cdn.iamport.kr/v1/iamport.js"></script>
    <!-- jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
    
    
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	// 값에 대한 변수
	let total = 0;
	let pointValue = 0;

	let totalPoint1 = document.querySelector('#totalPoint')
	let myPoint1 = document.getElementById('myPoint')
	let totalPay1 = document.getElementById('totalPay')
	let delivery1= document.getElementById('delivery')
	let priceOff1= document.getElementById('priceOff')
	let realPay1 = document.getElementById('realPay')
	let nextDate1 = document.getElementById('nextDate')
	let userName1 = document.getElementById('userName')
	let phone1 = document.getElementById('phone').children[0]
	let phone2 = document.getElementById('phone').children[1]
	let phone3 = document.getElementById('phone').children[2]
	let address3_ = document.getElementById('address3')
	let address1_ = document.getElementById('address1')
	let address2_= document.getElementById('address2')

	
		 
		function test1(){
		//일단 테스트
		let buy = document.createElement('form');
		buy.method = "post";
		buy.action = "orderfinish.do"
		buy.enctype = "application/x-www-form-urlencoded"
		document.body.append(buy);

		let postForward = document.querySelectorAll('.menuIdClass')

		postForward.forEach((ele,index) =>{
				let input = document.createElement('input');
				input.type = 'hidden'
				input.value = ele.id; // 마라마라 value // menuName
				input.name = ele.id // 마라탕 // key // menuId
				buy.append(input)
		})


		let pointInput = document.createElement('input');
		pointInput.type= 'hidden'
		pointInput.name= 'usePoint'
		if(document.querySelector('#pointMinus').innerHTML.split(' ')[0]==0){
			pointInput.value = 0;
		}else{
			pointInput.value = document.querySelector('#pointMinus').innerHTML.split(' ')[0];
		}

		buy.append(pointInput);

		buy.submit();

	}
	

	




	// 값 가져오고
	let userList = '${map.userList}'
	let payList = '${map.totalPay}'
	
	// json -> object (script에서 쓰기 위함)
	userList = JSON.parse(userList);
	payList = JSON.parse(payList);

	console.log(payList)

	let date = new Date();
	let day = ['일','월','화','수','목','금','토']
	let recieveDate = (date.getMonth()+1) + '-' + Number(date.getDate()+2) + '(' + day[date.getDay()+2] + ')'  
	let payNum = date.getFullYear()+''+(date.getMonth())+''+date.getDate()+''+date.getHours()+''+date.getMinutes()+''+date.getSeconds()+''+userList.userId;
	// 로그인 한 정보로 구매
	first()
	function first(){
		document.querySelector('#totalPoint').style.display = 'none';
		document.getElementById('myPoint').innerHTML = userList.userPoint + ' Point'
		document.getElementById('totalPay').innerHTML = payList.price + '원'
		document.getElementById('delivery').innerHTML = payList.delivery + '원'
		document.getElementById('priceOff').innerHTML = payList.priceOff + '원'
		document.getElementById('realPay').innerHTML = payList.total + '원'
		document.getElementById('nextDate').innerHTML = recieveDate + ' 도착예정'
		document.getElementById('userName').value = userList.userName
		document.getElementById('phone').children[0].value = userList.userPhone.substr(0,3)
		document.getElementById('phone').children[1].value = userList.userPhone.substr(3,4)
		document.getElementById('phone').children[2].value = userList.userPhone.substr(7,4)
		document.getElementById('address3').value = userList.userAddress3
		document.getElementById('address1').value = userList.userAddress1
		document.getElementById('address2').value = userList.userAddress2
	}


	// 포인트 체크박스를 누르면 결제화면에 포인트 사용 금액 띄우기
	document.querySelector('#checkPoint').addEventListener('click',function(){
		if(document.querySelector('#checkPoint').checked){
			document.querySelector('#totalPoint').style += 'display:block';
			document.querySelector('#totalPoint').children[1].innerHTML = '0 Point'

		}else{
			document.querySelector('#totalPoint').style.display = 'none';
			document.getElementById('realPay').innerHTML = payList.total + '원'
		}

	})

	// 포인트 적용하기.
	document.querySelector('#usePoint').addEventListener('click',function(){
		
		
		// 숫자만 받는 정규식
		let check = /^[0-9]+$/;
		if(!check.test(parseInt(document.querySelector('#howManyUsePoint').value))){
			alert("숫자만 입력할 수 있습니다.")
			document.querySelector('#howManyUsePoint').value = '';
			return;
		}

		

		if(document.querySelector('#checkPoint').checked){
			console.log('체크')
			document.querySelector('#totalPoint').style += 'display:block'

			if(userList.userPoint < parseInt(document.querySelector('#howManyUsePoint').value)){
				alert("가지고 있는 포인트보다 더 많이 사용할 수 없습니다.")
				document.querySelector('#howManyUsePoint').value  = '';
				return;
			}


			if(document.querySelector('#howManyUsePoint').value >= 1000){
				//포인트가 사용포인트보다 더 많고, 체크도 되었을때,
				//브라우저 화면 상에서만 일단 처리하자.
				
				alert('포인트가 적용되었습니다! 총 금액을 확인해보세요.')
				pointValue = document.querySelector('#howManyUsePoint').value;
				document.querySelector('#totalPoint').children[1].innerHTML = document.querySelector('#howManyUsePoint').value + ' Point' 
				document.querySelector('#pointMinus').innerHTML = document.querySelector('#howManyUsePoint').value + ' Point';
				document.querySelector('#realPay').innerHTML = payList.total - pointValue + '원'

				
			}else{
				alert('최소 1000 Point부터 사용할 수 있습니다.')
			}
		}else{
			alert('포인트 사용여부를 체크하세요.')
			document.querySelector('#totalPoint').style.display = 'none';
		}

	})


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
	
	 var IMP = window.IMP; 
     IMP.init("imp87028837"); 
 	
    function requestPay(){



		//장바구니에 
		//for(let cart in )



		if(phone1.value==''){
			console.log('비어있는거같은데..?')
		}else{
			console.log('안비어있어~')
		}
		
    	let total = payList.total - pointValue;
    	if(document.querySelector('input[name="kindOfPayment"]:checked').id=='kg'){
    		
    	IMP.request_pay({
    	    pg : 'html5_inicis',
    	    pay_method : 'card',
    	    merchant_uid: payNum, // 상점에서 관리하는 주문 번호를 전달
    	    name : '주문명:결제테스트',
    	    amount : 10,// 가격 넣기
    	    buyer_email : userList.userEmail,
    	    buyer_name :  userName1.value,
    	    buyer_tel : phone1.value+phone2.value+phone3.value,
    	    buyer_addr : address1_.value + address2_.value ,
    	    buyer_postcode : address3_.value,
    	    m_redirect_url : '{orderfinish.do}' // 예: https://www.my-service.com/payments/complete/mobile
    	}, function(rsp) { // callback 로직
    		if(rsp.success){
    			console.log('성공!')
				test1()
    			
    		}else{
    			alert('결제가 실패하였습니다. 다시 한번 확인해주세요.')
    		}
    		
    		
    	})
	}else{
		alert('아직 구현 안했어요!')
	}
	
	}
	
	 test1()
</script>


