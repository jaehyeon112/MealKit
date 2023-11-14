<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, textarea, p, blockquote, table, th, td, input, select, textarea, button {
    margin: 0;
    padding: 0;
    word-break: break-all;
    letter-spacing: -0.5px;
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
    margin: 64px 0 0 41px;
}

.pro_module:first-child {
    margin-top: 0;
}
.ma_best .prod_list ul {
    float: left;
    width: 1221px;
    margin: -64px 0 0 -41px;
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

.ma_best {
    width: 1180px;
    margin: 140px auto 0;
}

.tit {
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
			<img src="https://img.cjcookit.com/images/file/product/502/20220624075548488.png?RS=520x520">
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
	<div class="sec_tit">
		<h2 class="tit">실시간 베스트</h2>
	</div>
	<div class="prod_list">
		<ul>
			<!-- 반복 -->
			<li>
				<div class="pro_module">
					<div class="img_wrap">
						<a href="#!" class="conts"> <img src="https://img.cjcookit.com/images/file/product/511/20230901140905314.jpg?RS=549x549" alt="#!"
							onerror="#!"> <span class="flag_num best"> <span>BEST</span>
								01
						</span>
						</a>
					</div>
					<div class="txt_wrap">
						<a href="#!" class="conts">
							<div class="tit_info"> <!-- 추후 수정 -->
								<span class="tit mt_elps">[냉동] 진한육수 곱창전골</span>
							</div>
							<div class="price_info"> <!-- 추후 수정 -->
								<p class="sale">
									<span class="price">13,992</span>
									<span class="won">원</span>
								</p>
								<p class="servings"> / 2~3인분</p>
							</div>
						</a>
					</div>
					<div class="act_btn_wrap">
						<button type="button" class="btn btn_cart" onclick="#!">
							<span class="hide">장바구니 담기</span>
						</button>
					</div>
				</div>
			</li>
		</ul>
	</div>
</div>

