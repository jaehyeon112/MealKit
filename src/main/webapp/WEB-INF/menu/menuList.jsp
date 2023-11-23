<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<style>
    .ud {
        text-align: center;
    }

    .btn {
        display: inline-block;
    }
    #menu_list_table, th, td {
    border: 1px solid #bcbcbc;
    text-align: center;
  }
  table {
    width: 100%;
    height: 200px;
  }
</style>

<div class="shadow-lg p-3 mb-5 bg-body-tertiary rounded">
    <h2>상품목록</h2>
    
</div>

<table class="table" border="3" id="menu_list_table">

    <tr>
        <th>상품번호</th>
        <th>상품이름</th>
        <th>상품타이틀</th>
        <th>메인이미지</th>
        <th>상품맵기단계</th>
        <th>상품가격</th>
        <th>상품할인가격</th>
        <th>상품설명</th>
        <th>상품재고</th>
        <th>상품포인트</th>
        <th>상품조리시간</th>
        <th>상품인분체크</th>
        <th>메뉴팁</th>
        <th>삭제하기</th>
        <th>수정하기</th>


    </tr>

    <c:forEach items="${list }" var="vo">
        <tr class="menu_list">
            <input name="menuId" value="${vo.menuId }" type="hidden">
            <td >${vo.menuId }</td>
            <td>${vo.menuName}</td>
            <td>${vo.menuNameInfo}</td>
            <td><img src="resources/menu/${vo.menuImage1}" width="130" height="120"></td>
            <td>${vo.menuKind}</td>
            <td>${vo.menuPrice}</td>
            <td>${vo.menuPriceOff}</td>
            <td>${vo.menuContent}</td>
            <td>${vo.menuCount}</td>
            <td>${vo.menuPoint}</td>
            <td>${vo.menuTime}</td>
            <td>${vo.menuMany}</td>
            <td>${vo.menuTip}</td>
            <td><button type="button" class="deleteCheck">삭제</button></td>
            <td><a href="updateMenuForm.do"><button type="button">수정</button></a></td>         
            
        </tr>
    </c:forEach>
</table>



<!-- 삭제버튼 -->
<script>
    // 배열로 됨.
    document.querySelectorAll('.deleteCheck').forEach((ele, index) => {
        ele.addEventListener('click', function () {
            var menuId = document.getElementsByName("menuId")[0].value;
            var menuId2 = document.getElementsByName("menuId")[index].value;
            console.log("기존" + menuId);
            console.log("이후" + menuId2)
            // 화면단 삭제
            ele.parentNode.parentNode.remove();
            //let menuId = ele.parentNode.parentNode.children[0].id
            // let menuId = document.getElementsByName("menuId")[0].value;
            console.log(menuId + "입니다");
            // json => object 변환
            fetch('deleteMenu.do?mid=' + menuId2).then(resolve => resolve.json()).then(result => {
                console.log(result.retCode);
                if (result.retCode == "OK") {
                    alert('삭제 성공!~')
                } else {
                    alert('삭제 실패~@!')
                }

            })

        })
    })
</script>

