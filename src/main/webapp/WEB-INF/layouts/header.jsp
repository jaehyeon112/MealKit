<%@page import="co.yedam.cart.serviceImpl.CartServiceImpl"%>
<%@page import="co.yedam.cart.service.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
    #e { font-family: cursive; }
</style>

<ul class="nav justify-content-end bg-black" id="nav">
    <c:choose>
        <c:when test="${empty userId}">
            <li class="nav-item"><a class="nav-link" href="join.do">회원가입</a></li>
        </c:when>
        <c:otherwise>
            <li class="nav-item"><a class="nav-link" href="myPage.do">${userName }님</a></li>
        </c:otherwise>
    </c:choose>
    <c:choose>
        <c:when test="${empty userId}">
            <li class="nav-item"><a class="nav-link" href="login.do">로그인</a></li>
        </c:when>
        <c:otherwise>
            <li class="nav-item"><a class="nav-link" href="logout.do">로그아웃</a></li>
        </c:otherwise>
    </c:choose>
</ul>

<nav class="navbar navbar-expand-sm bg-body-tertiary">
    <div class="container-fluid">
        <a class="navbar-brand" href="main.do">
            <h1 id="e"><i>4MEN</i></h1>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarNav" aria-controls="navbarNav"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item"><a class="nav-link" href="introduceForm.do"> 소개 </a></li>
                <li class="nav-item"><a class="nav-link" href="menu.do"> 메뉴 </a></li>
                <li class="nav-item"><a class="nav-link" href="review.do">리뷰 </a></li>
                <c:choose>
                    <c:when test="${empty userId}">
                        <li class="nav-item"><a class="nav-link" href="login.do">마이페이지</a></li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item"><a class="nav-link" href="myPage.do">마이페이지</a></li>
                    </c:otherwise>
                </c:choose>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li>
                <c:choose>
      			  <c:when test="${empty userId}">      			  
                    <a href="login.do" class="btn position-relative" style="--bs-btn-border-color: none">
      			  </c:when>
     		   <c:otherwise>
                    <a href="cart.do" class="btn position-relative" style="--bs-btn-border-color: none">
    		    </c:otherwise>
 			   </c:choose>
                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
                            <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
                        </svg>
                        <P>장바구니</P>
                        <span id="cartAmounts" class="position-absolute top-20 start-80 badge rounded-pill bg-danger">
                            <!-- 장바구니 갯수! -->
                            <c:set var="userId" value="${userId }"></c:set>
                            <% 
                                Integer a = 0;
                                CartService svc = new CartServiceImpl();
                                String userId = (String) session.getAttribute("userId");
                                if(svc.checkCartList(userId)!=null){
                                    a = svc.checkCartList(userId);
                                } else {
                                    a = 0;
                                }
                            %>
                            <%=a %>
                        </span>
                    </a>
                </li>
                
            </ul>
        </div>
    </div>
</nav>
<hr>
