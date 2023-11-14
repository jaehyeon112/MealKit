<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.container {
	min-width: 1260px;
}

.col-6 {
	width: 520px;
	height: 520px;
	background-color: green;
}

.dropdown {
	padding-top: 116px;
}

.name {
	max-height: 60px;
	font-weight: 700;
	font-size: 20px;
	line-height: 30px;
}

.price1 {
	font-weight: 700;
	font-size: 28px;
	line-height: 42px;
}

.won {
	font-weight: 700;
	font-size: 28px;
	line-height: 42px;
}

.col-2 {
	width: 320px;
	padding-top: 200px;
}

.ma_best {
    width: 1260px;
   	height: 500px;
   	
}

.tit{
    color: #101010;
    font-weight: 700;
    font-size: 40px;
    line-height: 56px;
   
}
</style>
<div class="container text-center">
	<div class="row">
		<div class="col">
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
		</div>
		<div class="col-6">
			<h1>사진영역</h1>
		</div>
		<div class="col-2">
			<span class="name">[냉동] 진한육수 곱창전골</span>
			<div class="price">

				<span class="price1">22,380 <span class="won">원</span>
				</span>
				<p class="servings">/ 2인분</p>
			</div>
		</div>
	</div>
</div>
<hr>
<div class="ma_best">
	<h2 class="tit">실시간 베스트</h2>
</div>

