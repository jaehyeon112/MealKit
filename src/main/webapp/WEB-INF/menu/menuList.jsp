<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<style>
    th {
        font-size: 13px;
    }
    td {
        text-align: center;
        font-size: 15px;
        border: 1;
    }
    .ud{
        text-align: center;      
    }
    .btn{
        display: inline-block;
    }
   
</style>

<div class="shadow-lg p-3 mb-5 bg-body-tertiary rounded">
    <h2>상품목록</h2>
</div>

<table class="table" border="3">
    
    <tr>
        <th>상품번호</th>
        <th>상품이름</th>
        <th>상품타이틀</th>
        <th>메인이미지</th>
        <th>상품맵기단계</th>
        <th>상품가격</th>
        <th>상품할인가격</th>
        <th>상품설명</th>
        <th>상품재고량</th>
        <th>상품포인트</th>
        <th>상품조리시간</th>
        <th>상품인분체크</th>
        <th class="menu_list_delete">
        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">전체삭제</th>
         
    </tr>



    <c:forEach items="${list }" var="vo">
        <tr>
            <td>${vo.menuId }</td>    
            <td>${vo.menuName}</td>
            <td>${vo.menuNameInfo}</td>
            <td><img src="image/${vo.menuImage1}" width="130" height="120"></td>
            <td>${vo.menuKind}</td>
            <td>${vo.menuPrice}</td>
            <td>${vo.menuPriceOff}</td>
            <td>${vo.menuContent}</td>
            <td>${vo.menuCount}</td>
            <td>${vo.menuPoint}</td>
            <td>${vo.menuTime}</td>
            <td>${vo.menuMany}</td>
            <td><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">삭제</td>
        </tr>  
    </c:forEach>
</table>

<div class="ud">
    <a href="deleteMenuForm.do"><button type="button" class="btn btn-outline-danger">삭제하기</button></a>
    <a href="updateMenuForm.do"><button type="button" class="btn btn-outline-primary">수정하기</button></a>
</div>
<script>
    document.querySelectorAll('.')
</script>
