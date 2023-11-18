<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <style>
 
 body {
  margin: 0;
}

* {
  box-sizing: border-box;
}

p,
span {
  margin: 0;
}

a {
  color: black;
}

img {
  display: block;
  width: 80%;
  height: 80px;
  margin: auto;
}



.cart ul {
  background-color: whitesmoke;
  padding: 30px;
  margin-bottom: 50px;
  border: whitesmoke solid 1px;
  border-radius: 5px;
  font-size: 13px;
  font-weight: 300;
}

.cart ul :first-child {
  color: limegreen;
}

table {
  border-top: solid 1.5px black;
  border-collapse: collapse;
  width: 100%;
  font-size: 14px;
}

thead {
  text-align: center;
  font-weight: bold;
}

tbody {
  font-size: 12px;
}

td {
  text-align: center;
  padding: 15px 0px;
  border-bottom: 1px solid lightgrey;
}



.cart__list__detail :nth-child(3) {
  vertical-align: top;
}

.cart__list__detail :nth-child(3) a {
  font-size: 12px;
}

.cart__list__detail :nth-child(3) p {
  margin-top: 6px;
  font-weight: bold;
}

.cart__list__smartstore {
  font-size: 12px;
  color: gray;
}

.cart__list__option {
  vertical-align: top;
  padding: 20px;
}

.cart__list__option p {
  margin-bottom: 25px;
  position: relative;
}

.cart__list__option p::after {
  content: "";
  width: 90%;
  height: 1px;
  background-color: lightgrey;
  left: 0px;
  top: 25px;
  position: absolute;
}

.cart__list__optionbtn {
  background-color: white;
  font-size: 10px;
  border: lightgrey solid 1px;
  padding: 7px;
}

.cart__list__detail :nth-child(4),
.cart__list__detail :nth-child(5),
.cart__list__detail :nth-child(6) {
  border-left: 2px solid whitesmoke;
}

.cart__list__detail :nth-child(5),
.cart__list__detail :nth-child(6) {
  text-align: center;
}

.cart__list__detail :nth-child(5) button {
  background-color: #BDD61A;
  color: white;
  border: none;
  border-radius: 5px;
  padding: 4px 8px;
  font-size: 12px;
  margin-top: 5px;
}

.price {
  font-weight: bold;
 
}

.cart__mainbtns {
  width: 420px;
  height: 200px;
  padding-top: 40px;
  display: block;
  margin: auto;
}

.cart__bigorderbtn {
  width: 200px;
  height: 50px;
  font-size: 16px;
  margin: auto;
  border-radius: 5px;
}

.cart__bigorderbtn.left {
  background-color: white;
  border: 1px lightgray solid;
}

.cart__bigorderbtn.right {
  background-color: #bdd61a;
  color: black;
  border: none;
}
#description{
font-size: 18px;
text-align:justify;
vertical-align:middle;
}
#description > a {

  text-decoration: none;
  font-size: 24px;
}
#images{
width:100px;
height:100px;
}

.bnt_size{
font-weight: 700;
border:0px;
font-size:18px;
width:20px;
}
#amount{
  border:1px solid #ccc;
  width: 80px;
}
  
.font_size_p{
font-size: 30px;
font-weight: 700;
} 
.font_size{
font-weight: 700;
}
  
 </style>
 <!-- ${list }
 ${listJson }
 ${total }
  -->
  ${menuList }
 <!-- 메뉴 list를 가져와서 가격 * 수량이 되야 장바구니의 금액이 된다. -->
  <h2 style="font-weight:800">장바구니</h2>
    <section class="cart">
            <form>
        <table class="cart__list">
              <input type="button" id="deleteCheck"value="선택상품 삭제" class="cart__list__optionbtn">
              <input type="button" value="품절상품 삭제" class="cart__list__optionbtn">
                <thead>
                    <tr>
                      <td><input type="checkbox" id="checkAll" checked></td>   
                        <td colspan="2">상품정보</td>
                        <td>수량</td>
                        <td>상품금액</td>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="vo" items="${list}">
                    <tr class="cart__list__detail">
                        <td><input id="checkList" type="checkbox" checked></td>
                        <td><img id="images" src="image/${vo.menuImage1 }"></td>
                        <td id="description"><a id="menuSelector" href="#">${vo.menuName }</a></td>
                        <td id="amount_center">
                        <input type="button" class="bnt_size" value="-" id="minus">
                        <input style="border:0; width:20px;" readonly id="amounts" value="${vo.cartCount }" size="9">
                        <input type="button" class="bnt_size" value="+"  id="plus"></td>
                        <td><span class="price" id="${vo.cartNum }">
                        ${Integer.parseInt(vo.menuPrice-vo.menuPriceOff) * Integer.parseInt(vo.cartCount) }</span>원</td>
                    </tr>
                    </c:forEach>
                </tbody>
        </table>
            </form>
        
             <hr>
                <div class="container text-center">
  <div class="row">
    <div class="col">
      <span class="font_size">총 상품금액</span>
      <p class="font_size_p" id="total">${total.price }원</p>
    </div>
    <div class="col">
      <span class="font_size_p">+</span>
    </div>
    <div class="col">
      <span class="font_size">총 할인금액</span>
       <p class="font_size_p" id="totalOff">${total.priceOff }원</p>
    </div>
      <div class="col">
      <span class="font_size_p">+</span>
    </div>
    <div class="col">
    
      <span class="font_size">총 배송비</span>
      <c:choose>
    <c:when test="${total.price > 40000}">
       <p class="font_size_p" style="color:red">0원</p>
    </c:when>
    <c:otherwise>
       <p class="font_size_p">4000원</p>
    	<p style="color:#101010; font-size: 10px;">${40000-total.price}원만 더 시키면 배송비가 무료!</p>
    </c:otherwise>
    </c:choose>
    </div>
      <div class="col">
      <span class="font_size_p">=</span>
    </div>
    <div class="col">
      <span class="font_size">총 결제금액</span>
       <p class="font_size_p" id="totalBuy">${total.total }원</p>
    </div>
  </div>
</div>
                <form >
        <div class="cart__mainbtns">
            <input formaction="menu.do" type="submit" class="cart__bigorderbtn left"   value="쇼핑 계속하기">
            <input formaction="order.do" type="submit" class="cart__bigorderbtn right" value="주문하기" >
        </div>
        </form>
    </section>

    <script>
    // 변수 선언
    let list = '${listJson}';
    let userId = "${userId}";
    let totalPay = 0;
    let menuList = '${menuList}'
    // JSON 파싱
    list = JSON.parse(list);
    menuList = JSON.parse(menuList);
    

    // 이벤트 리스너 추가
    document.querySelector('#checkAll').addEventListener('click', checkAll);

    // 전체 체크/언체크 함수
    function checkAll() {
        let check = document.querySelector('#checkAll').checked;

        document.querySelectorAll('.cart__list__detail').forEach((ele, index) => {
            ele.querySelector('#checkList').checked = check;
        });
    }

    // 초기 총 가격 계산
    list.forEach(ele => {
        totalPay += ele.menuPrice;
    });


    // 각 상품의 체크박스에 이벤트 리스너 추가
    document.querySelectorAll('.cart__list__detail').forEach((ele, index) => {
        ele.children[0].children[0].addEventListener('click', function () {
            updateTotalPrice(this);

            // 전체 체크박스 상태 갱신
            let count = 0;
            document.querySelectorAll('.cart__list__detail').forEach(ele => {
                if (ele.children[0].children[0].checked) {
                    count++;
                }
            });
            document.querySelector('#checkAll').checked = (document.querySelectorAll('.cart__list__detail').length === count);
        });
    });

    // 메뉴 선택자 값 출력
    document.querySelectorAll('#menuSelector').forEach(ele => console.log(ele.value));

    // 플러스 버튼 이벤트 리스너 추가
    document.querySelectorAll('#plus').forEach((ele,index) => {
        ele.addEventListener('click', function (e) {
          
        	if(menuList[index].menuCount <= ele.parentNode.children[1].value){
        		alert('구매할 수 있는 최대 수량은 '+menuList[index].menuCount+'개 입니다.')
        		return;
        	}else{
        	
          let cartNum = list[index].cartNum
          fetch("updatecart.do?cartNum="+cartNum+"&check=true").then(resolve => resolve.json()).then(result => {
            ele.parentNode.children[1].value++;
            updatePrice(result,ele);
            
            }).catch()
        	}
        });
    });

    //  수량 버튼 클릭
    function updatePrice(result,ele) {
        document.querySelectorAll('.cart__list__detail').forEach((row, index) => {
            let quantity = result.cart.cartCount;
            let price = result.cart.menuPrice;
            console.log(result)
            let priceOff = result.cart.menuPriceOff;
            let totalPrice = quantity * (price-priceOff);
            ele.parentNode.parentNode.children[4].children[0].innerText = totalPrice;
            document.querySelector('#total').innerText = result.total.price + '원'
            document.querySelector('#totalOff').innerText = result.total.priceOff + '원'
            document.querySelector('#totalBuy').innerText = result.total.total + '원'
        });
       
    }

    // 마이너스 버튼 이벤트 리스너 추가
    document.querySelectorAll('#minus').forEach((ele,index) => {
        ele.addEventListener('click', function () {
            if (ele.parentNode.children[1].value > 1) {
                
                let cartNum = list[index].cartNum
                fetch("updatecart.do?cartNum="+cartNum+"&check=false").then(resolve => resolve.json()).then(result => {
                ele.parentNode.children[1].value--;
                  updatePrice(result,ele);
                  
                  }).catch(err=>console.log(err))
            } else {
                alert('최소 1개 이상은 구매해야합니다.');
            }
        });
    });

</script>