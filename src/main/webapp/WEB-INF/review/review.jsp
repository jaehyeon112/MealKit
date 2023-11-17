<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<head>
<link href="css/review.css" rel="stylesheet" type="text/css">
</head>


<section id="container">
	<div id="container_title" class="hide" tabindex="-1">본문 시작</div>
	<div id="content" class="cn_wrap">
		<div class="cn_review_wrap">
			<h2>리뷰</h2>
			<div class="best_review">
				<div
					class="img_wrap slide_wrap ui_carousel carousel-initialized ui_carousel_slider ui_carousel_dots"
					ui-modules="Carousel">
					<div class="ui_carousel_list ui_static" style="overflow: hidden">
						<div class="ui_carousel_track ui_static"
							style="opacity: 1; width: 25000px; transform: translate3d(-568px, 0px, 0px);">
							<div class="slide_conts ui_carousel_slide ui_carousel_cloned"
								data-ui_carousel_index="-1" style="float: left"
								aria-hidden="true">
								<div class="item">
									<a href="javascript:openDetail('2607621');" class="cont"
										tabindex="-1"> </a>
									<div class="img_wrap">
										<div class="best_flag">
											<span class="flag_txt">Best</span>
										</div>
										<img
											src="//img.cjcookit.com/images/file/RVW/2023/1029/71aab7e9-f5d1-4257-a33e-06e194d3934e_20231029174333_thum.jpg?RS=640&amp;CG=5&amp;CS=520X390"
											alt="[냉동] 얼큰시원 동태탕" onerror="cj.com.noImg(this, 'P')" />
									</div>
									<div class="txt_wrap">
										<span class="tit">[냉동] 얼큰시원 동태탕</span>
										<div class="etc_info">
											<div class="rating_wrap">
												<span class="rating_star"> <span class="star">
														<span style="width: 100%"><span
															class="hide">별점 5.0점</span></span>
												</span>
												</span>
											</div>
											<div class="user_id">
												<span class="hide">작성자아이디</span>kg1*****
											</div>
										</div>
										<div class="txt">제일 좋은게 한봉지 안에 다 들어 있어서 좋습니다 편하게 손질도 없이
											뚝딱 만들어서 좋습니다 동태도 쫄깃하고 맛있고 국물이 최고 입니다</div>
									</div>
								</div>
							</div>
						</div>

						<div class="count_wrap">
							<span class="num"><em>1</em>/5</span>
						</div>

						<div class="slide_arrow_wrap">
							<div class="arr_area">
								<button type="button"
									class="btn_arrow prev ui_carousel_prev ui_carousel_arrow"
									style="display: block">
									<span class="hide">이전 보기</span>
								</button>
								<button type="button"
									class="btn_arrow next ui_carousel_next ui_carousel_arrow"
									style="display: block">
									<span class="hide">다음 보기</span>
								</button>
							</div>
						</div>
						::after
					</div>
				</div>
			</div>
			<div class="taste_list review_info" id="reviewTop">
				<h3 class="hide">리뷰 찾아보기</h3>
				<div class="box_search">
					<div class="sch_wrap">
						<div class="input_wrap sch_area ui_inputfield">
							<label for="fn_txt_srch" class="hide">검색어 입력</label> <input
								type="text" class="txt" name="searchText" id="fn_txt_srch"
								placeholder="검색어를 입력해주세요"
								onkeyup="if(event.keyCode=='13'){search();}" />
							<button class="ico del" type="button">
								<span class="hide">입력 삭제</span>
							</button>
							<button type="button" class="btn btn_srch" onclick="search()">
								<span class="hide">검색</span>
							</button>
						</div>
					</div>
				</div>
				<div class="top_sec">
					<p class="total">
						리뷰 <span class="rvwTotalCnt">204,713</span>건
					</p>
					<div class="list_sort">
						<div class="chk_wrap">
							<input type="checkbox" id="sorting_photo" onchange="loadList(1)"
								class="accessibility-keyboard" /> <label
								for="sorting_photo">포토리뷰만 보기</label>
						</div>
					</div>
				</div>
				<div class="no_data" style="display: none"></div>
				<ul class="reviewArea">
					<li>
						<div class="review_module">
							<div class="top_wrap">
								<p class="tit">
									<span class="name">[냉동] 스페인식 감바스</span>
								</p>
								<div class="top_wrap--right">
									<time datetime="2023-11-16">2023-11-16</time>
									<a
										href="/pc/cs/formCounsel?cslCtgrId=0410&amp;prdRvwSeq=2632066"
										class="btn-report">신고</a>
								</div>
							</div>
							<div class="link_wrap">
								<div class="etc_info">
									<div class="rating_wrap">
										<span class="rating_star"> <span class="star"> <span
												style="width: 100%"><span
													class="hide">별점 5.0점</span></span>
										</span>
										</span>
									</div>
									<div class="user_id">
										<a href="javascript:cj.prodReview.open('2632066','01');"><span
											class="hide">작성자</span>red*********</a>
									</div>
									<div class="purchase_num">
										<span class="hide">구매 횟수 : </span>구매 6회
									</div>
								</div>
								<a href="javascript:;" class="link_more"> </a>
								<div class="txt_wrap">
									<div class="txt_cont">
										<p class="txt">냉장패키지로 나올때보다 맛은 좀 아쉽긴 한데 간편하게 해동만 시켜서 팬에 넣고
											끓이면 되니 간편하네요 !</p>
									</div>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
</section>
