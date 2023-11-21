<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%> <%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> <%@ taglib
prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<style>
  #content {
    min-height: 900px;
    padding: 52px 0 140px;
  }
  .rating_wrap .rating_star span {
	background-position: -374px 0;
}

  .rating_star span {
	display: block;
	width: 88px;
	height: 16px;

	background-size: 800px 800px;
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

  .name {
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
    margin-top: 70px;
    width: 1040px;
    height: 150px;
    border: 1px solid black;
    padding: 10px;
  }

  .buttons{
    margin-top: 10px;
   float: right;
  }
  .button {
    color: #101010;
    border: 1px solid #BDD61A;
    background-color: #BDD61A;
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
          
            <li><a href="addReview.do">작성 가능한 리뷰</a></li>
            <!-- 선택된 메뉴에 on클래스 추가 -->
            <li class="on"><a href="getMyReview.do">작성한 리뷰</a></li>
          </ul>
        </div>
      </div>
      <div class="#!">
        <!-- 상품리스트 -->
        <div class="prd_list row">
          <ul>
          <c:forEach items="${getReview}" var="vo">
          
            <li>
              <div class="review_module">
                <div class="top_wrap">
                  <p class="tit">
                    <!-- 190510_수정 및 케이스 추가 -->

                    <!-- //190510_수정 및 케이스 추가 -->
                    <span class="name">${vo.menuName }</span>
                    <!-- 개발 요청 사항 : 검색된 단어에 <strong></strong>태그 추가 -->
                  </p>
                  <div class="top_wrap--right">
                    <!-- 20220609 div 추가 -->
					
						<span><input name="orderDetailNumber" value="${vo.orderDetailNumber }" type="hidden"></input>주문상세번호: ${vo.orderDetailNumber } |</span>													
                    <time datetime="2023-11-15"
                      ><fmt:formatDate value="${vo.reviewDate}"
													pattern="yyyy.MM.dd" /></time>
                    <!-- 데이터 없을 때 노출 -->
                    <!-- <li class="no_data"><span class="ico"></span> <strong>작성
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
                          <span class="star"><c:forEach begin="1" end="${vo.reviewStar }" var="i"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="gold" class="bi bi-star-fill" viewBox="0 0 16 16">
                            <path 
                            d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                          </svg></c:forEach></span>                          
                        <!-- backgorund image 활성화 영역 (20%에 한개씩 점수가 채워 집니다.) -->
                      </span>
                    </span>
                    </span>
                  </div>
                  <!-- 190610_수정 -->
                  <div class="user_id">
                    <a
                      ><span> | ${vo.userId }</span></a>
                      
                  </div>
                  <!-- //190610_수정 -->

                  <!-- <div class="purchase_num">
                    <span class="hide">구매 횟수 : </span>구매 3회
                  </div> -->
                  <!-- 개발 요청 사항 : 첫구매시에는 노출되지 않음 -->
                </div>
                <div class="text">
                  <pre>${vo.reviewContent }</pre>
                </div>
                <div class="buttons">
                <input type="button" class="button" value="리뷰수정" onclick="location.href='modMyReviewForm.do?orderDetailNumber=${vo.orderDetailNumber}'">
                <input type="button" class="button"  value="리뷰삭제" onclick="location.href='deleteMyReview.do?orderDetailNumber=${vo.orderDetailNumber }'">
                </div>
              </div>
            </li>
            </c:forEach>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
