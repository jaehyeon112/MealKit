<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
#container {
	clear: both;
}
.screen1 {
	width:1260px;
	height: 520px;
	
}

.dropdown {
	width: 210px;
	height: 520px;
	float: left;
	padding-top: 116px;
	
}

.screen2 {
	width: 520px;
	height: 520px;
	float: left;
	background-color: black;
}

.screen3 {
    width: 787px;
    height: 520px;
    padding: 0 48px 0 477px;
}

</style>
<div class="screen1">
	<div class="dropdown">
		<h2>나는</h2>
		<button class="btn btn-secondary dropdown-toggle" type="button"
			data-bs-toggle="dropdown" aria-expanded="false">맛선택</button>
		<ul class="dropdown-menu">
			<li><a class="dropdown-item" href="#">매콤한맛</a></li>
			<li><a class="dropdown-item" href="#">담백한맛</a></li>
			<li><a class="dropdown-item" href="#">짭잘한맛</a></li>
		</ul>
		<h2>을 좋아합니다</h2>
	</div>
	<div class="screen3">
	
	<div class="screen2"></div>
	</div>
</div>

