<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<style>
img {
	width:186px;
	height: 186px;
}

*:after, *:before {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

.cn_review_wrap h2 {
	padding-bottom: 36px;
	color: #101010;
	font-size: 40px;
	line-height: 56px;
	font-weight: 700;
	border-bottom: 4px solid #202020;
}

element.style {
	overflow: hidden;
}

element.style {
	float: left;
}

.rating_wrap .rating_star .star, .rating_wrap .rating_star span {
	display: block;
	width: 88px;
	height: 16px;
	background-size: 800px 800px;
}

em {
	font-style: normal;
}

.hide {
	display: inline-block;
	position: absolute;
	z-index: -10;
	width: 0 !important;
	height: 0 !important;
	overflow: hidden !important;
	font-size: medium;
	line-height: normal;
	word-break: break-all;
}

.rating_wrap .rating_star span {
	background-position: -374px 0;
}

.rating_star {
	display: inline-block;
	padding: 7px 0;
	vertical-align: middle;
}

.rating_wrap {
	display: inline-block;
	vertical-align: top;
}

element.style {
	opacity: 1;
	width: 25000px;
	transform: translate3d(-568px, 0px, 0px);
}

.hide {
	display: inline-block;
	position: absolute;
	z-index: -10;
	width: 0 !important;
	height: 0 !important;
	overflow: hidden !important;
	font-size: medium;
	line-height: normal;
	word-break: break-all;
}

div {
	display: block;
}

.cn_review_wrap .taste_list h3 {
	padding-bottom: 16px;
	color: #101010;
	font-size: 22px;
	line-height: 32px;
	font-weight: 700;
}

.cn_review_wrap .review_bnr_wrap ~ .taste_list .box_search,
	.cn_review_wrap .best_review ~ .taste_list .box_search {
	border-top: 1px solid #202020;
}

.cn_review_wrap .taste_list .box_search {
	padding: 32px;
	background-color: #f7f7f7;
}

.sch_wrap {
	position: relative;
	z-index: 30;
	width: 644px;
	margin: 0 auto;
}

.sch_wrap .input_wrap {
	height: 68px;
}

div.input_wrap {
	width: 100%;
}

label {
	vertical-align: middle;
}

.sch_wrap input.txt {
	height: 68px;
	padding: 0 106px 0 20px;
	border: 2px solid #202020;
	color: #101010;
	font-weight: 700;
	font-size: 20px;
	opacity: 1;
}

.input_wrap {
	position: relative;
	display: inline-block;
}

.sch_wrap .input_wrap .ico {
	right: 66px;
}

.input_wrap .ico {
	display: none;
	position: absolute;
	top: 50%;
	right: 15px;
	background: url(/cjkit/web/images/common/ico_set.png) no-repeat;
	background-size: 800px 800px;
}

input[type='submit'], input[type='button'], button {
	cursor: pointer;
}

input, select, textarea, button {
	vertical-align: middle;
	border: none;
}

.sch_wrap .btn_srch {
	position: absolute;
	right: 18px;
	top: 50%;
	width: 32px;
	height: 32px;
	margin-top: -16px;
	background:
		url(https://www.cjcookit.com/cjkit/web/images/pd/ico_set.png) -600px
		-150px no-repeat;
	background-size: 800px 800px;
}

.cn_review_wrap .taste_list .top_sec {
	margin-top: 56px;
	padding-bottom: 16px;
	border-bottom: 2px solid #202020;
}

.cn_review_wrap .taste_list .top_sec .list_sort {
	top: 0;
}

.chk_wrap {
	display: inline-block;
}

.cn_review_wrap .taste_list .top_sec .chk_wrap label {
	font-size: 16px;
	line-height: 24px;
}

.cn_review_wrap .chk_wrap input+label:before {
	margin-top: -5px;
}

.chk_wrap input+label:before {
	content: '';
	zoom: 1;
	display: inline-block;
	width: 25px;
	height: 26px;
	margin: -3px 6px 0 0;
	background:
		url(https://www.cjcookit.com/cjkit/web/images/common/ico_set.png)
		no-repeat;
	background-position: -1px -40px;
	background-size: 800px 800px;
	vertical-align: middle;
}

.chk_wrap label {
	display: inline-block;
	color: #101010;
	font-size: 14px;
	line-height: 23px;
	cursor: pointer;
}

.cn_review_wrap .taste_review_list .no_data {
	border-bottom: 0;
}

.taste_review_list .no_data {
	padding-bottom: 80px;
	border-bottom: 1px solid #e0e0e0;
}

.no_data {
	padding: 80px 0 0;
	text-align: center;
}

input.txt {
	display: inline-block;
	width: 100%;
	height: 48px;
	padding: 0 16px;
	background-color: #fff;
	border: 1px solid #ccc;
	color: #101010;
	font-weight: 400;
	font-size: 15px;
	line-height: 23px;
	-ms-transform: translateZ(0);
	-webkit-transform: translateZ(0);
	-moz-transform: translateZ(0);
	transform: translateZ(0);
}

label {
	vertical-align: middle;
}

dl, ul, ol, menu, li {
	list-style: none;
}

.chk_wrap input {
	position: absolute;
	z-index: 0;
	opacity: 0;
	filter: alpha(opacity = 0);
}

.taste_review_list .top_wrap:after {
	content: '';
	display: table;
	clear: both;
}

.taste_review_list .link_more {
	display: block;
	width: 100%;
}

.cn_review_wrap .taste_review_list .etc_info .user_id:before {
	content: '';
	display: inline-block;
	width: 1px;
	height: 14px;
	margin: 0 10px;
	background-color: #e0e0e0;
	vertical-align: middle;
}

.taste_review_list li:first-child {
	border-top: 0;
}

.taste_review_list li {
	padding: 24px 0;
	border-top: 1px solid #e0e0e0;
}

.taste_review_list .top_wrap {
	margin-bottom: 6px;
}

.taste_review_list .top_wrap .tit {
	float: left;
	padding-left: 1px;
}

.review_module .top_wrap .top_wrap--right {
	float: right;
	margin-right: 20px
}

.review_module .top_wrap .top_wrap--right time {
	position: static;
	float: none;
}

.taste_review_list .top_wrap time {
	float: right;
	margin-top: 2px;
	font-size: 14px;
	line-height: 24px;
}

.taste_review_list .etc_info .rating_wrap .rating_star {
	padding: 0;
}

.cn_review_wrap .taste_review_list .etc_info .user_id {
	display: inline-block;
	color: #606060;
	font-size: 14px;
	line-height: 22px;
	vertical-align: middle;
}

.taste_review_list .etc_info .purchase_num {
	display: inline-block;
	color: #606060;
	font-size: 14px;
	line-height: 22px;
	vertical-align: middle;
}

.taste_review_list .link_more .txt_wrap .txt.mt_elps {
	max-height: 44px;
	font-size: 14px;
	line-height: 22px;
}

.taste_review_list .link_more .txt_wrap .txt {
	font-size: 14px;
	line-height: 22px;
}

.taste_review_list .link_more:after {
	content: '';
	display: table;
	clear: both;
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

.taste_review_list .top_wrap .name {
	float: left;
	display: inline-block;
	width: 560px;
	color: #101010;
	font-weight: 700;
	font-size: 16px;
	line-height: 24px;
}

.taste_review_list .etc_info {
	float: left;
	width: 100%;
	margin-bottom: 0 px;
}

.top_sec .list_sort {
	position: absolute;
	right: 0;
	top: 8px;
	font-size: 0;
}

.taste_review_list .etc_info .purchase_num:before {
	content: '';
	display: inline-block;
	width: 1px;
	height: 14px;
	margin: -2px 10px 0;
	background-color: #e0e0e0;
	vertical-align: middle;
}

.taste_review_list .link_more .txt_wrap {
	float: right;
	width: 100%;
}

.cn_review_wrap .taste_list .top_sec .total {
	color: #101010;
	font-weight: 700;
	font-size: 22px;
	line-height: 32px;
}

.top_sec {
	position: relative;
}

input, select, textarea, button {
	vertical-align: middle;
	border: none;
}
</style>


<section id="container">
	<div id="container_title" class="hide" tabindex="-1">본문 시작</div>
	<div id="content" class="cn_wrap">
		<div class="cn_review_wrap">
			<h2 class="review">리뷰</h2>

			<div class="taste_list review_info" id="reviewTop">
				<h3 class="hide">리뷰 찾아보기</h3>

				<!-- 검색 -->

				<form action="searchReview.do" method="post">
					<div class="box_search">
						<div class="sch_wrap">
							<div class="input_wrap sch_area ui_inputfield">
								<label for="fn_txt_srch" class="hide">검색어 입력</label> <input
									type="text" class="txt" name="word" placeholder="검색어를 입력해주세요">
								<button class="ico del" type="button">
									<span class="hide">입력 삭제</span>
								</button>
								<button type="submit" class="btn btn_srch">
									<span class="hide">검색</span>
								</button>
							</div>
						</div>
					</div>
				</form>

				<!-- 검색 마지막 문단 -->
				<div class="top_sec">
					<p class="total">
						전체리뷰 <span class="rvwTotalCnt"></span>${reviewCnt }건
					</p>
					<div class="list_sort"></div>
				</div>
				<div class="taste_review_list">
					<div class="no_data" style="display: none"></div>
					<ul class="reviewArea">
						<c:forEach var="vo" items="${reviewList}">
							<li>
								<div class="review_module">
									<div class="top_wrap">
										<p class="tit">
											<span class="name">${vo.menuName }</span>
										</p>
										<div class="top_wrap--right">
											<time datetime="2023-11-16">
												<fmt:formatDate value="${vo.reviewDate}"
													pattern="yyyy.MM.dd" />
											</time>

										</div>

									</div>
									<div class="link_wrap">
										<div class="etc_info">
											<div class="rating_wrap">
												<span class="rating_star"> <!-- 11-17 별 색상 변경하기 --> <c:forEach
														begin="1" end="${vo.reviewStar }" var="i">
														<svg xmlns="http://www.w3.org/2000/svg" width="16"
															height="16" fill="gold" class="bi bi-star-fill"
															viewBox="0 0 16 16">
  <path
																d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
</svg>
													</c:forEach> <span class="star"> <span style="width: 100%"></span>
												</span>
												</span>
											</div>
											<div class="user_id">
												<a href="javascript:cj.prodReview.open('2632066','01');"><span
													class="hide">작성자</span>${vo.userId }</a>
											</div>
											<div class="purchase_num">

												<span class="hide">구매 횟수 : </span>
											</div>
										</div>
										<a href="javascript:;" class="link_more"> </a>
										<div class="txt_wrap">
											<div class="txt_cont">
												<p class="txt mt_elps">${vo.reviewContent }</p>
											</div>
										</div>
										<div class="img_left_wrap">
											<!-- 첫번째 이미지 -->
											<div class="thumb_img">

												<div class="img">
													<img src="image/${vo.reviewImage }" 
														onerror="this.style.display='none';">

												</div>

												<!-- 스크립트 요청 사항 : .review_module .img_wrap 안에 있는 .img 갯수 체크 -->
											</div>
											<!-- 큰 이미지 영역 -->

											<!-- //큰 이미지 영역 -->
										</div>
									</div>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>