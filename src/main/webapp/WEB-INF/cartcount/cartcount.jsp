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
 ${total }
  ${menuList }
 ${listJson }
  -->
 <!-- 메뉴 list를 가져와서 가격 * 수량이 되야 장바구니의 금액이 된다. -->
  <h2 style="font-weight:800">장바구니</h2>
    <section class="cart">
            <form>
        <table class="cart__list">
              <input type="button" id="deleteCheck"value="선택상품 삭제" class="cart__list__optionbtn">
              <input type="button" id="soldOut" value="품절상품 삭제" class="cart__list__optionbtn">
                <thead>
                    <tr>
                      <td><input type="checkbox" id="checkAll" checked></td>   
                        <td colspan="2">상품정보</td>
                        <td>수량</td>
                        <td>원가</td>
                        <td>할인가</td>
                    </tr>
                </thead>
                <tbody id="tbody">
                <c:forEach var="vo" items="${list}">


                  <c:choose>
                  <c:when test="${vo.restCount < 1}">
                  
                    <tr class="cart__list__detail" style="z-index: -1;position: relative" >
                 <td><input class="checkListOther" type="checkbox" disabled  id="${vo.cartNum }"></td>
                        <td><img id="images" src="resources/menu/${vo.menuImage1 }" style="display: table;
    width: 100px;
    opacity:0.5;
    height: 100px;
    background-color: rgba(0,0,0,.5);
    color:red; z-index:1;
    position: relative" ></td>
                        <td colspan="2" style="text-align:center;line-height:100px; font-size:30px; font-weight:800px; color:red;">품절 상품입니다.</td>
                        
                        <td id="amount_center" style="display:none">
                        <input type="button" class="bnt_size" value="-" id="minus">
                        <input style="border:0; width:20px;" readonly id="amounts" value="${vo.cartCount }" size="9">
                        <input type="button" class="bnt_size" value="+"  id="plus"></td>
                        <td><span style=" text-decoration:line-through"class="priceOriginal" >
                        ${Integer.parseInt(vo.menuPrice) * Integer.parseInt(vo.cartCount) }</span>원</td>
                        <td><span class="price" >
                        ${Integer.parseInt(vo.menuPrice-vo.menuPriceOff) * Integer.parseInt(vo.cartCount) }</span>원</td>
                        </tr>
                  </c:when>
                  <c:otherwise>
                    <tr class="cart__list__detail">
                  <td><input class="checkList" type="checkbox" checked id="${vo.cartNum }"></td>
                        <td><img id="images" src="resources/menu/${vo.menuImage1 }"></td>
                        <td id="description"><a class="menuId" id="${vo.menuId }" href="#">${vo.menuName }</a></td>
                        <td id="amount_center">
                        <input type="button" class="bnt_size" value="-" id="minus">
                        <input style="border:0; width:20px;" readonly id="amounts" value="${vo.cartCount }" size="9">
                        <input type="button" class="bnt_size" value="+"  id="plus"></td>
                        <td><span style=" text-decoration:line-through"class="priceOriginal" >
                        ${Integer.parseInt(vo.menuPrice) * Integer.parseInt(vo.cartCount) }</span>원</td>
                        <td><span class="price" >
                        ${Integer.parseInt(vo.menuPrice-vo.menuPriceOff) * Integer.parseInt(vo.cartCount) }</span>원</td>
                    </tr>
                  </c:otherwise>
                  </c:choose>
                    </c:forEach>
                </tbody>
        </table>
            </form>
        
             <hr>
                <div class="container text-center">
  <div class="row">
    <div class="col">
      <span class="font_size">총 상품금액</span>
      <p class="font_size_p" id="total">${total.price }<span class="font_size_p">원</span></p>
    </div>
    <div class="col">
      <span class="font_size_p">-</span>
    </div>
    <div class="col">
      <span class="font_size">총 할인금액</span>
       <p class="font_size_p" id="totalOff">${total.priceOff }<span class="font_size_p">원</span></p>
    </div>
      <div class="col">
      <span class="font_size_p">+</span>
    </div>
    <div class="col">
      <span class="font_size">총 배송비</span>
       <p id="delivery" class="font_size_p" style="color:red">${total.delivery }<span class="font_size_p">원</span></p>
       
       <c:choose>
       <c:when test="${total.price<1 }">
    	<p id="deliCheck" style="display:none; color:#101010; font-size: 10px;">${40000- total.total }원 더 구매시 배송비가 무료! </p>
       </c:when>
       <c:otherwise>
    	<p id="deliCheck" style="display:none; color:#101010; font-size: 10px;">${40000- total.total+total.delivery }원 더 구매시 배송비가 무료! </p>
       </c:otherwise>
       </c:choose>
    	
    	
    </div>
      <div class="col">
      <span class="font_size_p">=</span>
    </div>
    <div class="col">
      <span class="font_size">총 결제금액</span>
      <c:choose>
      <c:when test="${total.price > 0 }">
       <p class="font_size_p" id="totalBuy">${total.total}원</p>
      </c:when>
      <c:otherwise>
       <p class="font_size_p" id="totalBuy">4000원</p>
      </c:otherwise>
      </c:choose>
    </div>
  </div>
</div>
               <form name="myForm" method="POST"> 
                 <div class="cart__mainbtns">
                   <input formaction="menu.do" type="submit" class="cart__bigorderbtn left"   value="쇼핑 계속하기">
                   <input id="buy" type="button" class="cart__bigorderbtn right" value="주문하기" >
                  </div>
                </form>
        
    </section>

    <script>
    // 변수 선언
    let list = '${listJson}';
    let userId = "${userId}";
    let totalPay = 0;
    let menuList = '${menuList}'
    let totalJson = '${totalJson}'
    // JSON 파싱
    list = JSON.parse(list);
    totalJson = JSON.parse(totalJson)
    console.log(totalJson)
    menuList = JSON.parse(menuList);

    //장바구니가 처음에 비어있다면 이렇게!
    cartListCheck()
    
    //객체의 길이를 반환
    console.log(Object.keys(list).length)
    
    //주문할때 넘어가는 정보..
    document.querySelector('#buy').addEventListener('click', function(e){
      let arr = [];
      let count = 0;
      document.querySelectorAll('.cart__list__detail').forEach(ele => {
        if(ele.children[0].children[0].className=='checkList'&&ele.children[0].children[0].checked){
          arr.push(ele.querySelector('.menuId').id)
          console.log('체크!')
          count++
        }
      })
      if(count==0){
    	  alert('장바구니에 물건이 없어요!')
    	  return;
      }
     document.forms.myForm.action = 'order.do?cartNum='+arr
	 document.forms.myForm.submit();
    })
    
    function cartListCheck(){
    	if(Object.keys(list).length == 0){
    		let tr = document.createElement('tr')
    		let td = document.createElement('td')
    		let p = document.createElement('h1')
        td.setAttribute('colspan',6)
        
        p.innerHTML = "장바구니가 텅~"
        document.querySelector('#tbody').append(tr);
        tr.append(td);
    	td.append(p);
    	}
    }
  
    
    
    // 삭제 버튼
    document.querySelector('#deleteCheck').addEventListener('click',function(){
    	  let count=0
    	  let arr= []
    	  
      document.querySelectorAll('.cart__list__detail').forEach(ele => {
        if(ele.children[0].children[0].checked){
        arr.push(ele.querySelector('.checkList').id)
        ele.remove();
        	count++;
        }
      })
        	console.log(arr.join(','))
      if(count==0){
        alert('최소 하나는 선택하셔야 합니다.')
        return;
      }
    	const data = {
                     method: 'POST',
                     headers: {
                                'Content-Type': 'application/x-www-form-urlencoded'
                              },
                      body: "cartNum="+arr.join(','),
    };
      fetch('deleteCartList.do',data).then(resolve => resolve.json()).then(result => {
    	  payChange(result.total)
    	 document.querySelector('#cartAmounts').innerText = result.newList.length
    	 console.log(result.newList)
    	 let cartList = Object.keys( document.querySelectorAll('.cart__list__detail')).length
    	 console.log('carList값이다 '+cartList)
      cartListCheck()

      })
    })
	
    
    //품절삭제버튼
    document.querySelector('#soldOut').addEventListener('click',function(){
    		    let count = 0;
      fetch("removeSoldout.do").then(resolve => resolve.json()).then(result => {
    	  if(result.retCode=="OK"){
    		  alert('품절 목록들이 삭제되었습니다!');
    		      document.querySelectorAll('.checkList').forEach(ele=>{
    		    	  count++;
    		      })
    	  }else{
    		  alert('품절 목록이 없습니다!')
    	  }
        document.querySelectorAll('.checkListOther').forEach(ele=>{
    	  ele.parentNode.parentNode.remove()
      })
    check40000();
  })
  if(count==0){    	  
    		    cartListCheck()
    		      }
          console.log(count)
      })
    
    check40000();
    
    function check40000(){
      let check = 0;
      let arr = [];
      let total = 0;
      let price = 0;
      let priceOff = 0;
      let delivery = 0;
      list.forEach((ele,index)=>{
    	 price += ele.menuPrice*ele.cartCount
    	 priceOff += ele.menuPriceOff*ele.cartCount
        check += ele.menuPrice*ele.cartCount;
      })
    	 total = price - priceOff;
      if(totalJson.total < 40000){
        document.querySelector('#deliCheck').style.display= 'block';
        delivery = 4000;
      }
      arr.push(price,priceOff,total,delivery);
      return arr;
    }

    // 이벤트 리스너 추가
    document.querySelector('#checkAll').addEventListener('click', checkAll);

    // 전체 체크/언체크 함수
    function checkAll() {
    	// 체크되어있으면 true / 아니면 false
        let check = document.querySelector('#checkAll').checked;
        
        
        document.querySelectorAll('.cart__list__detail').forEach((ele, index) => {
         
          if(ele.children[0].children[0].className!='checkListOther'){
            ele.querySelector('.checkList').checked = check;
          }
        });		
    	if(!check){
        document.querySelector('#total').innerText = '0원'
            document.querySelector('#totalOff').innerText = '0원'
            document.querySelector('#totalBuy').innerText = '4000원'
            document.querySelector('#delivery').innerText = '4000원'
            	document.querySelector('#deliCheck').style.display = 'block';
            document.querySelector('#deliCheck').innerText=	'40000원 더 구매시 배송비가 무료!'
    	}else{
        fetch('carttest.do').then(resolve => resolve.json()).then(result => {
          console.log(result)
          document.querySelector('#totalOff').innerText = result.total.priceOff + '원'
          document.querySelector('#total').innerText = result.total.price + '원'
          if(result.total.price==0){
              document.querySelector('#totalBuy').innerText =  '4000원'
          }else{
              document.querySelector('#totalBuy').innerText = result.total.total +  '원'
          }
              document.querySelector('#delivery').innerText = result.total.delivery + '원'
              if(result.total.total < 40000){
                document.querySelector('#deliCheck').style.display = 'block';
                document.querySelector('#deliCheck').innerHTML = 36000-result.total.total+'원 더 구매시 배송비가 무료!' 
              }else{
                document.querySelector('#deliCheck').style.display= 'none';
              }
        })
      }
        
    }



    // 각 상품의 체크박스에 이벤트 리스너 추가
    document.querySelectorAll('.cart__list__detail').forEach((ele, index) => {
        ele.children[0].children[0].addEventListener('click', function () {
          payChange()
        });
    });

    function payChange(result) {
            let count = 0;
            let total = 0;
            let price = 0;
            let priceOff = 0;
            
		     let arr= []
		      	  
		      document.querySelectorAll('.cart__list__detail').forEach(ele => {
		       if(ele.children[0].children[0].checked){
		         arr.push(ele.querySelector('.checkList').id)
		          }
		        })
            	arr = arr.join(',')
            fetch("updatecart2.do?arr="+arr).then(resolve => resolve.json()).then(result => {
                document.querySelector('#total').innerText = result.price + '원'
               document.querySelector('#totalOff').innerText = result.priceOff + '원'
               document.querySelector('#totalBuy').innerText = result.total + '원'
               document.querySelector('#delivery').innerText = result.delivery + '원'
               if(total < 40000){
               	document.querySelector('#deliCheck').style.display= 'block';
               	document.querySelector('#deliCheck').innerText= 40000-result.total + '원 더 구매시 배송비가 무료!' 
               }else{
               	document.querySelector('#deliCheck').style.display= 'none';
               }
            })
            
            
            
            
            
    }

    // 플러스 버튼 이벤트 리스너 추가
    document.querySelectorAll('#plus').forEach((ele,index) => {



      ele.addEventListener('click', function (e) {



        let arr = [];
	 if(ele.parentNode.parentNode.children[0].children[0].checked){    	  
      let count = 0;
      document.querySelectorAll('.cart__list__detail').forEach(ele => {
        if(ele.children[0].children[0].className=='checkList'&&ele.children[0].children[0].checked){
          arr.push(ele.querySelector('.menuId').id)
          count++
      }})}
	
	 arr = arr.join(',')


        if(ele.parentNode.parentNode.children[0].children[0].checked){
 			 cartNum = list[index].cartNum
      }
        	let bnt = e.target.parentNode.parentNode.querySelector('.checkList')
          if(!bnt.checked){
            alert('장바구니에서 선택이 되어있지 않습니다.')
            return;
          }
        	let compare = ele.parentNode.parentNode.children[2].children[0].id
        	
        	let quan = 0;
        	menuList.forEach(ele => {
            if(ele.menuId==compare){
              quan = ele.menuCount
        		} 
        	})
        	
        	if(quan <= ele.parentNode.children[1].value){
            alert('구매할 수 있는 최대 수량은 '+quan+'개 입니다.')
        		return;
        	}else{
            
          fetch("updatecart.do?cartNum="+cartNum+"&check=true&arr="+arr).then(resolve => resolve.json()).then(result => {
            ele.parentNode.children[1].value++;
            updatePrice(result,ele);
                
            }).catch(err => console.log(err))
        	}
        });
    });

    //  수량 버튼 클릭
    function updatePrice(result,ele) {
        document.querySelectorAll('.cart__list__detail').forEach((row, index) => {
          if(list[index].restCount > 0 && row.children[0].children[0].checked){
        	  let quantity = result.cart.cartCount;
              let price = result.cart.menuPrice;
              let priceOff = result.cart.menuPriceOff;
              let totalPrice = quantity * (price-priceOff);
              let totalPriceOriginal = quantity * (price);
            
            ele.parentNode.parentNode.children[5].children[0].innerText = totalPrice;
            ele.parentNode.parentNode.children[4].children[0].innerText = totalPriceOriginal;
            document.querySelector('#total').innerText = result.total.price + '원'
            document.querySelector('#totalOff').innerText = result.total.priceOff + '원'
            document.querySelector('#totalBuy').innerText = result.total.total + '원'
            document.querySelector('#delivery').innerText = result.total.delivery + '원'
            if(result.total.total < 40000+result.total.delivery){
              document.querySelector('#deliCheck').style.display= 'block';
            	document.querySelector('#deliCheck').innerText= 40000-result.total.total +result.total.delivery+ '원 더 구매시 배송비가 무료!' 
            }else{
              document.querySelector('#deliCheck').style.display= 'none';
            }
          };
        });
       
    }

    // 마이너스 버튼 이벤트 리스너 추가
    document.querySelectorAll('#minus').forEach((ele,index) => {
        ele.addEventListener('click', function (e) {


          let arr = [];
	 if(ele.parentNode.parentNode.children[0].children[0].checked){    	  
      let count = 0;
      document.querySelectorAll('.cart__list__detail').forEach(ele => {
        if(ele.children[0].children[0].className=='checkList'&&ele.children[0].children[0].checked){
          arr.push(ele.querySelector('.menuId').id)
          count++
      }})}
	
	 arr = arr.join(',')








        	let bnt = e.target.parentNode.parentNode.querySelector('.checkList')
        	if(!bnt.checked){
                alert('장바구니에서 선택이 되어있지 않습니다.')
                return;
              }
            if (ele.parentNode.children[1].value > 1) {
                
                let cartNum = list[index].cartNum
                fetch("updatecart.do?cartNum="+cartNum+"&check=false&arr="+arr).then(resolve => resolve.json()).then(result => {
                ele.parentNode.children[1].value--;
                  updatePrice(result,ele);
                  return;
                  
                  }).catch(err=>console.log(err))
            } else {
                alert('최소 1개 이상은 구매해야합니다.');
                return;
            }
        });
    });

</script>