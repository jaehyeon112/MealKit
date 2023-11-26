<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> <%@ taglib prefix="sql"
uri="http://java.sun.com/jsp/jstl/sql"%>

<style>
    #content {
        min-height: 900px;
        padding: 52px 0 140px;
    }

    .rating_wrap {
        display: inline-block;
        vertical-align: top;
    }

    .etc_info .user_id {
        display: inline-block;
        color: #606060;
        font-size: 14px;
        line-height: 22px;
        vertical-align: middle;
    }

    .etc_info .purchase_num {
        display: inline-block;
        color: #606060;
        font-size: 14px;
        line-height: 22px;
        vertical-align: middle;
    }

    .etc_info {
        float: left;
        width: 100%;
        margin-bottom: 20px;
    }

    .review_module {
        margin-top: 40px;
        width: 1050px;
        height: 280px;
        padding: 5px;
        border: 1px solid black;
    }

    .order_view {
        width: 1180px;
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

    .order_view h3 {
        display: block;
        padding-bottom: 36px;
        border-bottom: 4px solid #202020;
        font-size: 36px;
        line-height: 50px;
        font-weight: 700;
        color: #101010;
    }

    .my_activity .top_sec {
        position: relative;
        z-index: 2;
    }

    .my_activity .top_sec .tab_menu {
        padding-top: 40px;
    }

    .order_view .top_sec .tab_menu li:first-child {
        padding-left: 0;
    }

    .order_view .top_sec .tab_menu li.on > a {
        display: inline-block;
        padding-bottom: 5px;
        color: #101010;
        font-weight: 700;
        border-bottom: 3px solid #202020;
    }

    .order_view .top_sec .tab_menu li {
        display: inline-block;
        padding-left: 24px;
        line-height: 0;
    }

    dl,
    ul,
    ol,
    menu,
    li {
        list-style: none;
    }

    .order_view .top_sec .tab_menu li > a {
        font-size: 24px;
        line-height: 34px;
        color: #606060;
        font-weight: 500;
    }

    .my_activity .review_list {
        margin-top: 64px;
    }

    a {
        color: inherit;
        text-decoration: none;
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

    .top_wrap .tit {
        float: left;
        padding-left: 1px;
    }

    .review_module .top_wrap .top_wrap--right {
        float: right;
    }

    .text {
        width: 1040px;
        height: 150px;
    }

    .buttons {
        float: right;
        margin-top: 10px;
    }

    .button {
        color: #101010;
        border: 1px solid #bdd61a;
        background-color: #bdd61a;
        height: 30px;
        width: 80px;
        text-align: center;
        font-weight: 700;
        font-size: 14px;
        line-height: 16px;
    }
</style>

<div id="content" class="my_wrap">
    <div class="right_con">
        <div class="order_view my_activity">
            <h3>리뷰</h3>
            <div class="top_sec">
                <div class="tab_menu">
                    <ul>
                        <li class="on"><a href="#!">작성 가능한 리뷰</a></li>
                        <!-- 선택된 메뉴에 on클래스 추가 -->

                        <li><a href="getMyReview.do">작성한 리뷰</a></li>
                    </ul>
                </div>
            </div>
            <div class="#!">
                <!-- 상품리스트 -->
                <div class="prd_list row">
                    <form
                        action="addMyReview.do"
                        method="post"
                        name="myForm"
                        id="formReview"
                        enctype="multipart/form-data"
                    >
                        <ul>
                            <li>
                                <div class="review_module">
                                    <div class="top_wrap">
                                        <p class="tit">
                                            <!-- 구매한 상품 선택. -->
>>>>>>> branch 'develop' of https://github.com/jaehyeon112/MealKit.git

<<<<<<< HEAD
											</select></span>
											<!-- 개발 요청 사항 : 검색된 단어에 <strong></strong>태그 추가 -->
										
												</p>
											<input value="${vo.menuName }" type="hidden" name="menuName" />
											
										<div class="top_wrap--right">
											<!-- 20220609 div 추가 -->
											<span>
												</span>
											<time datetime="2023-11-15">
												<input type="hidden" name="reviewDate" />
											</time>
											
											<!-- 데이터 없을 때 노출 -->
											<!-- <li class="no_data"><span class="ico"></span> <strong>작성
=======
                                            <span class="name">
                                                <select name="orderDetailNumber" id="sel">
                                                    <option selected>주문번호 선택</option>
                                                    <c:forEach items="${list }" var="vo">
                                                        <option
                                                            class="listNum"
                                                            id="${vo.orderDetailNumber}"
                                                            value="${vo.orderDetailNumber}"
                                                        >
                                                            [주문번호 ${vo.orderDetailNumber}번]${vo.menuName }
                                                        </option>
                                                    </c:forEach>
                                                </select>
                                            </span>

                                            <!-- 개발 요청 사항 : 검색된 단어에 <strong></strong>태그 추가 -->
                                        </p>

                                        <c:forEach items="${list }" var="vo">
                                            <input value="${vo.menuName}" name="menuName" type="hidden" />
                                        </c:forEach>

                                        <div class="top_wrap--right">
                                            <!-- 20220609 div 추가 -->
                                            <span> </span>
                                            <time datetime="2023-11-15">
                                                <input type="hidden" name="reviewDate" />
                                            </time>

                                            <!-- 데이터 없을 때 노출 -->
                                            <!-- <li class="no_data"><span class="ico"></span> <strong>작성
>>>>>>> branch 'develop' of https://github.com/jaehyeon112/MealKit.git
								가능한 리뷰가 없습니다.</strong></li> -->
                                            <!-- 데이터 없을 때 노출 -->
                                        </div>
                                    </div>
                                    <div class="etc_info">
                                        <div class="rating_wrap">
                                            <span class="rating_star">
                                                <span class="star">
                                                    <!-- background image 커스텀 영역 -->
                                                    <span style="width: 100%">
                                                        <select name="reviewStar">
                                                            <option value="">별점</option>
                                                            <option value="1">1점</option>
                                                            <option value="2">2점</option>
                                                            <option value="3">3점</option>
                                                            <option value="4">4점</option>
                                                            <option value="5">5점</option>
                                                        </select>
                                                    </span>
                                                    <!-- backgorund image 활성화 영역 (20%에 한개씩 점수가 채워 집니다.) -->
                                                </span>
                                            </span>
                                        </div>
                                        <!-- 190610_수정 -->
                                        <div class="user_id">
                                            <input value="${userId }" name="userId" type="hidden" />
                                        </div>
                                        <!-- //190610_수정 -->

                                        <div class="purchase_num"></div>
                                        <!-- 개발 요청 사항 : 첫구매시에는 노출되지 않음 -->
                                    </div>

                                    <input
                                        type="text"
                                        name="reviewContent"
                                        class="text"
                                        placeholder="리뷰를 작성해주세요"
                                    />
                                    <div class="buttons">
                                        <input type="file" name="reviewImage" accept="image/*" value="사진등록" />
                                        <input class="button" value="리뷰등록" id="btn" form="formReview" />
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    let order = 0;

    document.querySelector('#btn').addEventListener('click', function (e) {
        if (order == 0) {
            alert('이미등록된 리뷰입니다.');
            return;
        }
        document.forms.myForm.action = 'addMyReview.do?order=' + order;
        console.log('addMyReview.do?order=' + order);
        document.forms.myForm.submit();
    });
    document.querySelector('#sel').addEventListener('change', function (e) {
        order = e.target.value;
    });
</script>
