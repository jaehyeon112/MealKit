<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>




<div class="container text-center">
	<div class="row">
		<div class="col">
			<div class="tleft">	
				<img src="image/${menuId.menuImage1}" width="650" height="650">
			</div>
			<div class="tbot">

				<img src="image/${menuId.menuImage1}" width="130" height="120"> 
				<img src="image/${menuId.menuImage2}" width="130" height="120"> 
				<img src="image/${menuId.menuImage3}" width="130" height="120">

				<div class="bot">
					<div class="review">
						<a href="#" class="review_btn" role="button"></a>
					</div>
					<div class="review_st">
						<span class="hide"
							style="visibility: hidden; display: none; width: 0; height: 0; font-size: 0; line-height: 0;">별점</span>
						<span class="rat_str"></span> <span class="star"><svg
								style="color: yellowgreen;" xmlns="http://www.w3.org/2000/svg"
								width="16" height="16" fill="currentColor"
								class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path
									d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                            </svg></span> <span class="star"><svg
								style="color: yellowgreen;" xmlns="http://www.w3.org/2000/svg"
								width="16" height="16" fill="currentColor"
								class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path
									d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                            </svg></span> <span class="star"><svg
								style="color: yellowgreen;" xmlns="http://www.w3.org/2000/svg"
								width="16" height="16" fill="currentColor"
								class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path
									d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                            </svg></span> <span class="star"><svg
								style="color: yellowgreen;" xmlns="http://www.w3.org/2000/svg"
								width="16" height="16" fill="currentColor"
								class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path
									d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                            </svg></span> <span class="star"><svg
								style="color: yellowgreen;" xmlns="http://www.w3.org/2000/svg"
								width="16" height="16" fill="currentColor"
								class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path
									d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                            </svg></span>
						<div class="score">
							<p>
								<b>5.0</b>
							</p>
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="col">
			<div class="trig">
				<div class="text">	
					<h2>
						<b>${menuId.menuName}</b>						
					</h2>

					<p>원산지 : 상품정보 참조</p>

					<p>
						${menuId.menuMany}인분 | 조리 ${menuId.menuTime}분 | ${menuId.menuKind}
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-emoji-angry-fill"
							viewBox="0 0 16 16">
                            <path
								d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zM4.053 4.276a.5.5 0 0 1 .67-.223l2 1a.5.5 0 0 1 .166.76c.071.206.111.44.111.687C7 7.328 6.552 8 6 8s-1-.672-1-1.5c0-.408.109-.778.285-1.049l-1.009-.504a.5.5 0 0 1-.223-.67zm.232 8.157a.5.5 0 0 1-.183-.683A4.498 4.498 0 0 1 8 9.5a4.5 4.5 0 0 1 3.898 2.25.5.5 0 1 1-.866.5A3.498 3.498 0 0 0 8 10.5a3.498 3.498 0 0 0-3.032 1.75.5.5 0 0 1-.683.183zM10 8c-.552 0-1-.672-1-1.5 0-.247.04-.48.11-.686a.502.502 0 0 1 .166-.761l2-1a.5.5 0 1 1 .448.894l-1.009.504c.176.27.285.64.285 1.049 0 .828-.448 1.5-1 1.5z" />
                        </svg>
					</p>
					<div class="container text-center">
						<div class="row">
							<div class="col-6 col-sm-3">
								<h4>판매가</h4>
							</div>
							<div class="col-6 col-sm-3">
								<del>${menuId.menuPrice}원</del>
							</div>

							<!-- Force next columns to break to new line -->
							<div class="w-100"></div>

							<div class="col-6 col-sm-3">
								<h4>할인가</h4>
							</div>
							<div class="col-6 col-sm-3">
								<b>${menuId.menuPriceOff}원</b>
							</div>
						</div>
					</div>
					<hr>
					<div class="container text-center">
						<div class="row">
							<div class="col-6 col-sm-3">포인트 적립</div>
							<div class="col-6 col-sm-5">CJ ONE 포인트 0.2% 적립</div>
						</div>
					</div>
					<hr>
					<div class="container text-center">
						<div class="row">
							<div class="col-6 col-sm-3">배송방법</div>
							<div class="col-6 col-sm-3">
								지정일배송
								<svg xmlns="http://www.w3.org/2000/svg" width="14" height="16"
									fill="currentColor" class="bi bi-question-circle"
									viewBox="0 0 16 16">
                                    <path
										d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                                    <path
										d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z" />
                                </svg>
							</div>

							<!-- Force next columns to break to new line -->
							<div class="w-100"></div>

							<div class="col-6 col-sm-3">배송비</div>
							<div class="col-6 col-sm-5">3000원 4만원 이상 무료배송</div>
						</div>
					</div>
					<hr style="border: double 5px">
					<div class="row">
						<div class="col">
							<h5>
								<b>수량 0개</b>
							</h5>
						</div>
						<div class="col-5"></div>
						<div class="col" style="color: red; margin-left: 150px;">
							<h4>
								<b>0원</b>
							</h4>
						</div>
					</div>
					<div class="row">
						<div class="col-6">

							<button
								style="height: 64px; width: 250px; border: 1px solid #b0b0b0; background-color: white; color: black;"
								class="btn btn-primary" type="button">구매</button>
						</div>

						<div class="col-6">

							<button
								style="background-color: #BDD61A; width: 250px; border: 1px solid #BDD61A; height: 64px;"
								class="btn btn-primary" type="button">장바구니</button> <a href="deleteMenuForm.do"><button>삭제</button></a>
						</div>
					</div>



				</div>
			</div>

		</div>
	</div>


	<!-- <h4>판매가&nbsp;&nbsp;&nbsp;&nbsp;15,900원</h4>
                          <h4>할인가&nbsp;&nbsp;&nbsp;&nbsp;<b>11,900원</b></h4>
                          <hr>
                          <p>포인트 적립&nbsp;&nbsp;&nbsp;&nbsp;CJ ONE 포인트 0.2% 적립 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-question-circle" viewBox="0 0 16 16">
                            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                            <path d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z"/>
                          </svg></p>
                          <hr>
                          <p>배송방법&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;지정일배송 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-question-circle" viewBox="0 0 16 16">
                            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                            <path d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z"/>
                          </svg></p>
                          <p>배송비&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3000원</p> -->
</div>
</div>
</div>


