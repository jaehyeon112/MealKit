<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!-- 메뉴바-->
<style>
    img {
  width: 300px;
  height: 300px;
  object-fit: cover;
}
</style>

<div>
    <h1><b>COOKIT 메뉴</b></h1>
    <a href="addForm.do"><button>상품등록</button></a>   
</div>
<br>
<div>
    <a href="#"><b>배송일별</b></a>
    <a href="#"><b>테마별</b></a>
</div>


<!-- 개별 상품-->
<div>
    <b>예담에서 배송 가능한 메뉴입니다.</b><br>
    <div class="row" input type="redio">
        <div class="col">
            <p class="메뉴2">주문마감은 오전 7시 입니다.</p>
        </div>
        <div class="col">
            <a href="#"><span>신메뉴순</span></a>
            <a href="#"><span>인기메뉴순</span></a>
            <a href="#"><span>높은가격순</span></a>
            <a href="#"><span>낮은가격순</span></a>
            <a href="#"><span>만족도순</span></a>
        </div>
    </div>
</div>



<section class="py-5">
    <div class="container px-4 px-lg-5 mt-5">
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <c:forEach items="${list }" var="vo">
                <input type="hidden" name="menuId" value="${vo.menuId}">
                <!--메뉴페이지 상품 포이치로 돌림-->
                <!-- 상품목록 -->
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Sale badge-->
                        <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale
                        </div>
                        <!-- Product image--><a href="menupage.do?menuId=${vo.menuId}">

                            <img class="card-img-top"
                                src="image/${vo.menuImage1 }"
                                alt="..." />
                        </a>
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name-->
                                <h5 class="fw-bolder">${vo.menuName }</h5>
                                <!-- Product reviews-->
                                <div class="d-flex justify-content-center small text-warning mb-2">
                                    <div class="bi-star-fill"></div>
                                    <div class="bi-star-fill"></div>
                                    <div class="bi-star-fill"></div>
                                    <div class="bi-star-fill"></div>
                                    <div class="bi-star-fill"></div>
                                </div>
                                <!-- Product price-->
                                <span class="text-muted text-decoration-line-through">${vo.menuPrice }원</span><br>
                                <span class="text">${vo.menuPriceOff }원</span>
                                <p>조리시간 ${vo.menuTime }분 | ${vo.menuMany }인분 | ${vo.menuKind } <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                        fill="currentColor" class="bi bi-fire" viewBox="0 0 16 16">
                                        <path
                                            d="M8 16c3.314 0 6-2 6-5.5 0-1.5-.5-4-2.5-6 .25 1.5-1.25 2-1.25 2C11 4 9 .5 6 0c.357 2 .5 4-2 6-1.25 1-2 2.729-2 4.5C2 14 4.686 16 8 16Zm0-1c-1.657 0-3-1-3-2.75 0-.75.25-2 1.25-3C6.125 10 7 10.5 7 10.5c-.375-1.25.5-3.25 2-3.5-.179 1-.25 2 1 3 .625.5 1 1.364 1 2.25C11 14 9.657 15 8 15Z" />
                                    </svg></p>
                            </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <div class="text-center"><a id=${vo.menuId } class="btn btn-outline-dark mt-auto" href="#">장바구니</a>
                            </div>
                            <a>${vo.menuId }</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>
<script>

let userId = "${userId}";

document.querySelectorAll('.btn.btn-outline-dark').forEach(ele=>{
    ele.addEventListener('click', function() {  
        if(userId!="guest"){  
            let menuId = this.getAttribute("id")
            fetch("addCart.do?menuId="+menuId).then(resolve=>resolve.json()).then(result=>{
        	//값은 갯수 가져왔음.
            if(result.retCode == 'NG'){
            	alert('이미 장바구니에 있어요~')
            }else{
            	
        	let cart = document.querySelector('#cartAmounts')
        	console.log(result.number)
            cart.innerHTML = result.number;
            console.log(cart);
        	alert('등록되었습니다!')
            }
        	
        }).catch(err=>{console.log(err)})
        }else{
    		alert('로그인을 하셔야합니다.')
    	}
    })})
</script>

