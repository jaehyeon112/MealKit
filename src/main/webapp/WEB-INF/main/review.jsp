<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<style>
    .review_module .top_wrap .top_wrap--right {
        float: right;
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

    .search {
        height: 68px;
        width: 644px;
        border: 1px solid #bdd61a;
        background: #ffffff;
        align-items: center;
    }

    input {
        font-size: 16px;
        width: 560px;
        height: 100%;
        padding: 10px;
        border: 0px;
        outline: none;
        float: left;
    }

    button {
        width: 80px;
        height: 100%;
        border: 0px;
        background: #bdd61a;
        outline: none;
        float: right;
        color: #ffffff;
    }

    input:-ms-input-placeholder {
        color: #a8a8a8;
    }

    input::-webkit-input-placeholder {
        color: #a8a8a8;
    }

    input::-moz-placeholder {
        color: #a8a8a8;
    }
</style>

<h2>리뷰</h2>
<hr />
<div id="carouselExampleCaptions" class="carousel slide">
    <div class="carousel-indicators">
        <button
            type="button"
            data-bs-target="#carouselExampleCaptions"
            data-bs-slide-to="0"
            class="active"
            aria-current="true"
            aria-label="Slide 1"
        ></button>
        <button
            type="button"
            data-bs-target="#carouselExampleCaptions"
            data-bs-slide-to="1"
            aria-label="Slide 2"
        ></button>
        <button
            type="button"
            data-bs-target="#carouselExampleCaptions"
            data-bs-slide-to="2"
            aria-label="Slide 3"
        ></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img
                src="https://i.namu.wiki/i/GHmHyJyGUW61QHkC8Cl9gMsdBN1SCUQHes9qInm_rINDLf-8EVhg4dGtPhPC_DaA9wWP9p_dew2VvVbQAXaWVlGqHQxxOgraOwfWdhXlWe43pIVvtG9I_Z8_3gDM4q-QK7P3aEdH8LeG2BU7iLVEog.webp"
                class="d-block w-100"
                alt="..."
            />
            <div class="carousel-caption d-none d-md-block">
                <h5>First slide label</h5>
                <p>Some representative placeholder content for the first slide.</p>
            </div>
        </div>
        <div class="carousel-item">
            <img
                src="https://i.namu.wiki/i/0TqW2tPIPOTX335FBVWaqSh4W_sRC-PfL4qzfzFMLNOlLZE5sJjn2Ds8snrGLefz9Tl-kc153fKS_hDjuK3HDsH4DvTK5Tf2XjrnnY7eiR8RDgwxvrsY2DwrGTV1alopUcK0Sibs1fO1YPYImN2dWg.webp"
                class="d-block w-100"
                alt="..."
            />
            <div class="carousel-caption d-none d-md-block">
                <h5>Second slide label</h5>
                <p>Some representative placeholder content for the second slide.</p>
            </div>
        </div>
        <div class="carousel-item">
            <img
                src="https://i.namu.wiki/i/GHmHyJyGUW61QHkC8Cl9gMsdBN1SCUQHes9qInm_rINDLf-8EVhg4dGtPhPC_DaA9wWP9p_dew2VvVbQAXaWVlGqHQxxOgraOwfWdhXlWe43pIVvtG9I_Z8_3gDM4q-QK7P3aEdH8LeG2BU7iLVEog.webp"
                class="d-block w-100"
                alt="..."
            />
            <div class="carousel-caption d-none d-md-block">
                <h5>Third slide label</h5>
                <p>Some representative placeholder content for the third slide.</p>
            </div>
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>
<hr />
<div class="search">
    <input type="text" placeholder="검색어를 입력해주세요" />
    <button>검색</button>
</div>

<h5>리뷰 123건</h5>
<hr />
<ul class="reviewArea">
    <li>
        <div class="review_module photo">
            <div class="top_wrap">
                <p class="tit">
                    <span class="name">[냉장] 스팸리치치즈존슨탕</span>
                </p>
                <div class="top_wrap--right">
                    <time datetime="2023-11-13">2023-11-13</time>
                    <a href="#!" class="btn-report"> 신고 </a>
                </div>
            </div>
            <div class="link_wrap">
                <div class="etc_info">
                    <div class="reting_wrap">
                        <span class="rating_star">
                            <span class="star">
                                <span style="width: 100%">
                                    <span class="hide">별점 5.0점</span>
                                </span>
                            </span>
                        </span>
                    </div>
                    <div class="user_id">
                        <a href="#!">
                            <span class="hide">작성자</span>
                            "sun******"
                        </a>
                    </div>
                    <div class="purchase_num">
                        <span class="hide">구매 횟수 : </span>
                        "구매 1회"
                    </div>
                </div>
				<a href="#!" class="link_more">
					<div class="txt_wrap">
						<div class="txt_cont">
							<p class="txt mt_elps">
								"존나맛있습니다. 강추합니다."
							</p>
						</div>
						<div class="tag_wrap">
							<span class="tag">#맛있어요</span>
							<span class="tag">#개맛있어요</span>
							<span class="tag">#너무맛있어요</span>
							<span class="tag">#맛있게맛있어요</span>
						</div>
						<div class="tip_box">
							<div class="tip_flag">
								<span class="hide">TIP!</span>
							</div>
							<div class="tip_txt">비앤나 더넣으면 더 맛있어요.</div>
						</div>
					</div>
					<div class="img_left_wrap">
						<div class="img">
							<img src="#!" alt="1번 이미지" onerror=""></div>
							<span class="lang">
								<span class="hide">총 사진 개수</span>
								"1"
							</span>
						</div>
						<div class="img_wrap">
							<div class="img">
								<img src="#!" alt="1번 이미지" onerror=""></div>
							</div>
						</div>
					</div>
				</a>
            </div>
        </div>
    </li>
</ul>
