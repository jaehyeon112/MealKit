<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<style>
    dl, ul, ol, menu, li {
    list-style: none;
}
	ul {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}	
	
    .user_id {
        display: inline-block;
        color: #606060;
        font-size: 14px;
        line-height: 22px;
        vertical-align: middle;
    }

    .rating_wrap {
        display: inline-block;
        vertical-align: top;
    }

    a {
        color: inherit;
        text-decoration: none;
    }

    .taste_review_list .etc_info .purchase_num {
        display: inline-block;
        color: #606060;
        font-size: 14px;
        line-height: 22px;
        vertical-align: middle;
    }

    .rating_wrap .rating_star span {
        background-position: -374px 0;
    }

    .review_module .top_wrap .top_wrap--right {
        float: right;
    }

    .taste_review_list,
    .etc_info {
        float: left;
        width: 100%;
        margin-bottom: 20px;
    }

    .taste_review_list .top_wrap:after {
        content: '';
        display: table;
        clear: both;
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

    .taste_review_list .top_wrap {
        margin-bottom: 6px;
    }

    body,
    div,
    dl,
    dt,
    dd,
    ul,
    ol,
    li,
    h1,
    h2,
    h3,
    h4,
    h5,
    h6,
    pre,
    code,
    form,
    fieldset,
    legend,
    textarea,
    p,
    blockquote,
    table,
    th,
    td,
    input,
    select,
    textarea,
    button {
        margin: 0;
        padding: 0;
        word-break: break-all;
        letter-spacing: -0.5px;
    }

    .cn_review_wrap,
    .taste_list,
    .top_sec,
    .total {
        color: #101010;
        font-weight: 700;
        font-size: 22px;
        line-height: 32px;
    }

    .cn_review_wrap,
    .taste_list,
    .top_sec {
        margin-top: 56px;
        padding-bottom: 16px;
        border-bottom: 2px solid #202020;
    }

    #contentReview {
        min-width: 1180px;
        min-height: 900px;
        padding: 52px 0 140px;
    }

    div {
        padding: 0;
        word-break: break-all;
        letter-spacing: -0.5px;
    }

    #reviewTop {
        padding-top: 80px;
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

    .box_search {
        border-top: 1px solid #202020;
        padding: 32px;
        background-color: #f7f7f7;
    }

    .sch_wrap {
        position: relative;
        z-index: 30;
        width: 644px;
        margin: 0 auto;
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

    input,
    select,
    textarea,
    button {
        vertical-align: middle;
    }

    button {
        font-family: 'Noto Sans', '맑은 고딕', 'Malgun Gothic', Dotum, '굴림', arial, sans-serif;
        font-size: 15px;
        font-weight: 400;
        line-height: 23px;
        color: #606060;
        letter-spacing: -0.5px;
    }

    .sch_wrap .input_wrap {
        height: 68px;
    }

    div.input_wrap {
        width: 100%;
    }

    .input_wrap {
        position: relative;
        display: inline-block;
    }

    .review h2 {
        padding-bottom: 36px;
        color: #101010;
        font-size: 40px;
        line-height: 56px;
        font-weight: 700;
        border-bottom: 4px solid #202020;
    }

    .slide h1 {
        text-align: center;
        margin: 0px;
        line-height: 314px;
    }

    .slide {
        overflow: hidden;
        height: 628px;
        padding: 48px 0 0;
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

    .sch_wrap .btn_srch {
        position: absolute;
        right: 18px;
        top: 50%;
        width: 32px;
        height: 32px;
        margin-top: -16px;
        background: url(/cjkit/web/images/pd/ico_set.png) -600px -150px no-repeat;
        background-size: 800px 800px;
    }
    #containerReview {
        width: 1180px;
        height: 100%;
        margin: 0 auto;
    }
	.taste_review_list .etc_info {
    float: left;
    width: 100%;
    margin-bottom: 20px;
}
.taste_review_list li {
    padding: 24px 0;
    border-top: 1px solid #e0e0e0;
}
	
</style>


	<div id="containerReview">
		<div id="contentReview">
			<div class="review">
				<h2>리뷰</h2>
			</div>
			<div class="slide">
				<h1></h1>
			</div>
			<div class="review_search" id="reviewTop">
				<div class="box_search">
					<div class="sch_wrap">
						<div class="input_wrap sch_area ui_inputfield">
							<label for="fn_txt_srch" class="hide">검색어 입력</label>
							<input
							type="text"
							class="txt"
							name="searchText"
							id="fn_txt_srch"
							placeholder="검색어를 입력해주세요"
							/>
							<button class="ico del" type="button">
								<span class="hide">입력삭제</span>
							</button>
							<button type="button" class="btn btn_srch" onclick="#!">
								<span class="hide">검색</span>
							</button>
						</div>
					</div>
				</div>
				<div class="top_sec">
					<p class="total">리뷰<span class="rvwTotalCnt">999</span> 건</p>
				</div>
				<div class="taste_review_list">
					<ul class="reviewArea">
						<!-- <c:forEach items="${reviewList }" var="vo"> -->
							<ul class="reviewArea">
								<li>
									<!-- 이미지 있는 케이스 -->
									<div class="review_module "><!-- 개발 요청 사항 : 이미지 있는 케이스에 photo 클래스 추가 -->
										<div class="top_wrap">
											<p class="tit">
												<!-- 190510_수정 및 케이스 추가 -->
												
												
												<!-- //190510_수정 및 케이스 추가 -->
												<span class="name">[냉동] 얼큰시원 동태탕</span><!-- 개발 요청 사항 : 검색된 단어에 <strong></strong>태그 추가 -->
											</p>
											<div class="top_wrap--right"><!-- 20220609 div 추가 -->
												<time datetime="2023-11-16">2023-11-16</time>
												
												<a href="/pc/cs/formCounsel?cslCtgrId=0410&amp;prdRvwSeq=2631635" class="btn-report">신고</a><!-- 20220609 신고버튼 추가 -->
												
											</div>
										</div>
										<div class="link_wrap"> <!-- 190610_수정 -->
											<div class="etc_info">
												<div class="rating_wrap">
													<span class="rating_star">
														<span class="star">
															<!-- background image 커스텀 영역 -->
															<span style="width:60.0%;"><span class="hide">별점 3.0점</span></span>
															<!-- backgorund image 활성화 영역 (20%에 한개씩 점수가 채워 집니다.) -->
														</span>
													</span>
												</div>
												<!-- 190610_수정 -->
												<div class="user_id"><a href="javascript:cj.prodReview.open('2631635','01');"><span class="hide">작성자</span>lun********</a></div>
												<!-- //190610_수정 -->
												
												<div class="purchase_num"><span class="hide">구매 횟수 : </span>구매 2회</div> <!-- 개발 요청 사항 : 첫구매시에는 노출되지 않음 -->
												
											</div>
											<a href="javascript:;" class="link_more">	<!-- 190610_수정(<a> 링크 추가) --> <!-- 스크립트 요청 사항 : .link_more 클릭시 .review_module에 open클래스 추가/<p class="txt mt_elps">의 mt_elps 클래스 삭제 -->
									<div class="txt_wrap">
										<!-- text -->
										<div class="txt_cont">
											<p class="txt mt_elps">
												동태는 냉동치고는 괜찮았고 다만 무우가 냉동이라 너무 맛없어요. 무우는 생무우로 하나 구입해서 조리하면 훨씬 시원할거 같네요.
											</p>
										</div>
										
										
										
									</div>
									
									
									
									
									
									
									
								</a>	<!-- 190610_수정(</a> 링크 추가) -->
							</div><!-- 190610_수정 -->
						</div>
						<!-- //이미지 있는 케이스 -->
					</li>
					<!-- </c:forEach> -->
				</ul>
			</div>
		</div>
</div>
</div>

<!-- <nav aria-label="...">
	<ul class="pagination">
	<li class="page-item disabled"><a class="page-link">Previous</a></li>
	<li class="page-item"><a class="page-link" href="#">1</a></li>
	<li class="page-item active" aria-current="page"><a class="page-link" href="#">2</a></li>
	<li class="page-item"><a class="page-link" href="#">3</a></li>
	<li class="page-item"><a class="page-link" href="#">Next</a></li>
</ul>
</nav> -->








	
	
		
										
										
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
										
										
										
