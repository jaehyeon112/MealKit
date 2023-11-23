<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<style>
.col {
    margin-top: 50px;
}


.btn-primary {
	--bs-btn-color: #fff;
	--bs-btn-bg: #bdd61a;
	--bs-btn-border-color: #bdd61a;
	--bs-btn-hover-color: #fff;
	--bs-btn-hover-bg: #0b5ed7;
	--bs-btn-hover-border-color: #0a58ca;
	--bs-btn-focus-shadow-rgb: 49, 132, 253;
	--bs-btn-active-color: #fff;
	--bs-btn-active-bg: #0a58ca;
	--bs-btn-active-border-color: #0a53be;
	--bs-btn-active-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
	--bs-btn-disabled-color: #fff;
	--bs-btn-disabled-bg: #bdd61a;
	--bs-btn-disabled-border-color: #bdd61a;
}

.mt_elps {
	width: 100%;
	overflow: hidden;
	max-height: 48px;
	text-overflow: ellipsis;
	word-break: break-all;
	line-height: 24px;
	-moz-line-clamp: 2;
	-ms-line-clamp: 2;
	-webkit-line-clamp: 2;
	font-family: 'Noto Sans', '맑은 고딕', 'Malgun Gothic', Dotum, '굴림', arial,
		sans-serif;
}

*, *:after, *:before {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

dl, ul, ol, menu, li {
	list-style: none;
}

.ma_best .prod_list .pro_module .img_wrap .flag_num.best span {
	display: block;
	margin-bottom: -2px;
}

.pro_module .txt_wrap {
	position: relative;
	padding: 16px 0 0;
}

fieldset, img {
	border: 0 none;
}

.pro_module .txt_wrap .price_info .servings {
	display: inline-block;
	padding-left: 6px;
	font-size: 16px;
	line-height: 24px;
	vertical-align: middle;
}

.ma_best .prod_list .pro_module .act_btn_wrap {
	position: absolute;
	right: 0;
	top: auto;
	bottom: 2px;
}

.act_btn_wrap .btn.btn_cart {
	background-position: -45px -190px;
}

.pro_module .txt_wrap .price_info {
	padding-top: 8px;
	font-size: 0;
}

.pro_module .txt_wrap .price_info .sale {
	display: inline-block;
	color: #101010;
	font-size: 18px;
	line-height: 27px;
	font-weight: 700;
	vertical-align: middle;
}

.pro_module .txt_wrap .price_info .sale .price {
	display: inline-block;
	vertical-align: top;
}

.pro_module .txt_wrap .price_info .sale .won {
	letter-spacing: 0;
}

.pro_module .txt_wrap .tit_info .tit {
	display: block;
	color: #101010;
	font-weight: 500;
	font-size: 17px;
	word-break: break-all;
}

.pro_module .txt_wrap .tit_info {
	font-size: 0;
}

.ma_best .prod_list .pro_module .txt_wrap .tit_info .tit {
	width: 310px;
}

.pro_module a {
	display: block;
}

a {
	color: inherit;
	text-decoration: none;
}

.ma_best .prod_list .pro_module .img_wrap .flag_num {
	position: absolute;
	left: 16px;
	top: 16px;
	width: 48px;
	height: 48px;
	padding-top: 11px;
	background: #202020;
	color: #fff;
	font-size: 16px;
	line-height: 24px;
	letter-spacing: 0;
	text-align: center;
}

.ma_best .prod_list .pro_module .img_wrap {
	position: relative;
	width: 366px;
	height: 366px;
}

.pro_module .img_wrap, .pro_module .img_wrap a {
	text-align: center;
}

.pro_module .img_wrap img {
	display: block;
	width: 100%;
}

img {
	vertical-align: middle;
}

.ma_best .prod_list .pro_module .img_wrap .flag_num.best {
	width: 64px;
	height: 64px;
	padding: 8px 0 0 10px;
	text-align: left;
}

.ma_best .prod_list li {
	float: left;
	width: 366px;
	height: 498px;
	
}

.pro_module:first-child {
	margin-top: 0;
}

.ma_best .prod_list ul {
	float: left;
	width: 1221px;
}

.act_btn_wrap .btn:first-child {
	margin-left: 0;
}

.sec_tit {
	position: relative;
	width: 1180px;
	margin: 0 auto;
}

.ma_best .prod_list {
	margin-top: 40px;
	overflow: hidden;
}

.container {
	min-width: 1260px;
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

.tit {
	color: #101010;
	font-weight: 700;
	font-size: 40px;
	line-height: 56px;
	margin-top: 60px;
}

#textBox1, #textBox2, #textBox3 {
	margin-bottom: 150px;
	margin-right: 600px;
	background-color: rgba(200, 200, 200, 0.1);
}

#textBox1 h1, #textBox2 h1, #textBox3 h1 {
	text-align: left;
	color: white;
	font-weight: 700;
	line-height: 1.24;
	letter-spacing: -6px;
	font-size: 50px;
	font-family: "Noto Sans", "맑은 고딕", "Malgun Gothic", Dotum, "굴림", arial,
		sans-serif;
}

#textBox1 p, #textBox2 p, #textBox3 p {
	color: white;
	font-size: 20px;
	font-weight: 600;
	line-height: 1.24;
	float: left;
	margin-top: 15px;
}
</style>
<!-- 슬라이드 영역 -->
<div id="carouselExampleDark" class="carousel carousel-dark slide"
	data-bs-ride="carousel">
	<div class="carousel-indicators">
		<button type="button" data-bs-target="#carouselExampleDark"
			data-bs-slide-to="0" class="active" aria-current="true"
			aria-label="Slide 1"></button>
		<button type="button" data-bs-target="#carouselExampleDark"
			data-bs-slide-to="1" aria-label="Slide 2"></button>
		<button type="button" data-bs-target="#carouselExampleDark"
			data-bs-slide-to="2" aria-label="Slide 3"></button>
	</div>
	<div class="carousel-inner">
		<div class="carousel-item active" data-bs-interval="5000">
			<img
				src="//img.cjcookit.com/images/file/display/890/20190828155709248.jpg?RS=1920x640"
				class="d-block w-100" alt="..." />
			<div class="carousel-caption d-none d-md-block" id="textBox1">
				<h1>
					목등심과 쫄깃한 버섯<br />버섯소불고기
				</h1>
				<p>3인분 / 조리 8분</p>
			</div>
		</div>
		<div class="carousel-item" data-bs-interval="5000">
			<img
				src="//img.cjcookit.com/images/file/display/648/20200730105857306.jpg?RS=1920x640"
				class="d-block w-100" alt="..." />
			<div class="carousel-caption d-none d-md-block" id="textBox2">
				<h1>
					진한 국물이 일품<br />스팸리치치즈 존슨탕
				</h1>
				<p>3인분 / 조리 25분</p>
			</div>
		</div>
		<div class="carousel-item" data-bs-interval="5000">
			<img
				src="//img.cjcookit.com/images/file/display/043/20200429180744043.jpg?RS=1920x640"
				class="d-block w-100" alt="..." />
			<div class="carousel-caption d-none d-md-block" id="textBox3">
				<h1>
					근사한 소울푸드<br />토마토비프스튜
				</h1>
				<p>2인분 / 조리 30분</p>
			</div>
		</div>
	</div>
	<button class="carousel-control-prev" type="button"
		data-bs-target="#carouselExampleDark" data-bs-slide="prev">
		<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="visually-hidden">Previous</span>
	</button>
	<button class="carousel-control-next" type="button"
		data-bs-target="#carouselExampleDark" data-bs-slide="next">
		<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="visually-hidden">Next</span>
	</button>
</div>
<!-- 슬라이드 종료영역 -->
<div class="ma_best">
	<div class="sec_tit">
		<h2 class="tit">베스트 메뉴</h2>
	<hr>
	</div>

</div>

<div class="row row-cols-5 row-cols-md-4 g-1">
	<c:forEach items="${menuList }" var="vo">
		<div class="col">
			<div class="card" style="width: 18rem;">
			
				<img src="resources/menu/${vo.menuImage1 }" class="card-img-top"
					alt="...">
					
				<div class="card-body">
					<h5 class="card-title">${vo.menuName }</h5>
					<p class="card-text">${vo.menuPrice}원 / ${vo.menuMany }인분</p>
					<a href="menupage.do?menuId=${vo.menuId}" class="btn btn-primary">메뉴 상세페이지</a>
				</div>
			</div>
		</div>
	</c:forEach>
</div>

