<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<div class="shadow-lg p-3 mb-5 bg-body-tertiary rounded">
    <h2>상품삭제</h2>
</div>
<table class="table" border="2">
    <form action="deleteMenu.do" method="post" id="delMenu" enctype="application/x-www-form-urlencoded">
        <h5>삭제할 상품 번호</h5>
        <div class="col-sm-2">
            <input type="text" name="menuId" />
        </div>

        <!-- <h5>삭제내용</h5>
            <div class="col-sm-2">
                <textarea name="menuContent" id="" cols="30" rows="10"></textarea>
            </div>         -->
</table>

<td colspan="2">
    <input class="btn btn-outline-danger" type="submit" value="삭제">
    <input class="btn btn-outline-primary" type="submit" value="초기화" form="delMenu" />
</td>
</form>
<!-- <button type="button" class="btn btn-outline-danger">삭제하기</button> -->