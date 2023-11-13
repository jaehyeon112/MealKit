<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<style>
    .search {
        height: 68px;
        width: 644px;
        border: 1px solid #bdd61a;
        background: #ffffff;
        text-align: center;
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
<div class="row row-cols-1 row-cols-md-2 g-4">
    <div class="col">
        <div class="card">
            <img src="..." class="card-img-top" alt="..." />
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">
                    This is a longer card with supporting text below as a natural lead-in to additional content. This
                    content is a little bit longer.
                </p>
            </div>
        </div>
    </div>
    <div class="col">
        <div class="card">
            <img src="..." class="card-img-top" alt="..." />
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">
                    This is a longer card with supporting text below as a natural lead-in to additional content. This
                    content is a little bit longer.
                </p>
            </div>
        </div>
    </div>
    <div class="col">
        <div class="card">
            <img src="..." class="card-img-top" alt="..." />
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">
                    This is a longer card with supporting text below as a natural lead-in to additional content.
                </p>
            </div>
        </div>
    </div>
    <div class="col">
        <div class="card">
            <img src="..." class="card-img-top" alt="..." />
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">
                    This is a longer card with supporting text below as a natural lead-in to additional content. This
                    content is a little bit longer.
                </p>
            </div>
        </div>
    </div>
</div>
<hr />
<div class="search">
    <input type="text" placeholder="검색어를 입력해주세요" />
    <button>검색</button>
</div>
