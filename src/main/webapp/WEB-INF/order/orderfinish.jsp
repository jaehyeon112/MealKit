<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h1>결제가 완료 되었습니다!</h1>
<h1>배송을 기다리세요!</h1>
<hr>
유저 정보 ${userInfo }
<br>
구매 리스트 ${buyList }

획득 포인트 ${getPoint } 회원 등급에 따라 차등 지급
	
<script>
let a = '${userInfo}'
let b = '${buyList}'
let c = '${getPoint}'

console.log(a)
console.log(b)
console.log(c)

</script>