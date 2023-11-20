<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h3>상품 목록</h3>
<table class="table">
	<thead>
		<tr>
			<th>상품번호</th>
			<th>상품이름</th>
			<th>상픔타이틀</th>
			<th>메인이미지</th>
			<th>서브이미지1</th>
			<th>서브이미지2</th>
			<th>맵기조절단계</th>
			<th>상품가격</th>
			<th>상품할인가격</th>
			<th>상품설명</th>
			<th>재고량</th>
			<th>상품포인트</th>
			<th>조리시간</th>
			<th>인분체크</th>
			
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${list }" var="vo">
			<tr>
				<td>${vo.menuId }</td>
				<td><a href="getMenu.do?bno=${vo.menuId }">${vo.menuName }</a></td>
				<td>${vo.writer }</td>
				<td>${vo.writeDate }</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<p><a href="addForm.do">등록화면</a></p>
