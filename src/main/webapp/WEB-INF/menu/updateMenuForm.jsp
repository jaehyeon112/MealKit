<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>




    <div class="update">
        <div class="container">
            <h1 class="display-3">상품수정</h1>
        </div>
    </div>
    <div class="container">
        <form name="updateMenu" action="updateMenu.do" method="post" class="form-horizontal" enctype="multipart/form-data">
            <div class="form-group row">
                <label class="col-sm-2">제품번호</label>
                <div class="col-sm-3">
                    <input type="text" name="menuId" class="form-control"/>
                </div>
            </div>
    
            <div class="form-group row">
                <label class="col-sm-2">상품이름</label>
                <div class="col-sm-3">
                    <input type="text" name="menuName" class="form-control" />
                </div>
            </div>
    
            <div class="form-group row">
                <label class="col-sm-2">상품타이틀</label>
                <div class="col-sm-3">
                    <textarea cols="15" rows="2" name="menuNameInfo"></textarea>
                </div>
            </div>
    
            <div class="form-group row">
                <label class="col-sm-2">조리시간</label>
                <div class="col-sm-3">
                    <input type="text" name="menuTime" class="form-control" />
                </div>
            </div>
    
            <div class="form-group row">
                <label class="hotstep">몇인분</label>
                <div style="width: 300px;">
                    <select name="menuMany">
                        <option value="인분" selected="selected">인분체크 선택</option>
                        <option value="2">2인분</option>
                        <option value="3">3인분</option>
                        <option value="4">4인분</option>
                    </select>
                </div>
            </div>
    
    
            <div class="form-group row">
                <label class="hotstep">맵기단계</label>
                <div style="width: 300px;">
                    <select name="menuKind">
                        <option value="단계" selected="selected">맵기단계 선택</option>
                        <option value="매콤0단계">매콤0단계</option>
                        <option value="매콤1단계">매콤1단계</option>
                        <option value="매콤2단계">매콤2단계</option>
                        <option value="매콤3단계">매콤3단계</option>
                    </select>
                </div>
            </div>
    
    
            <div class="form-group row">
                <label class="col-sm-2">제품가격</label>
                <div class="col-sm-3">
                    <input type="text" name="menuPrice" class="form-control" />
                </div>
            </div>
    
            <div class="form-group row">
                <label class="col-sm-2">할인가격</label>
                <div class="col-sm-3">
                    <input type="text" name="menuPriceOff" class="form-control" />
                </div>
            </div>
    
            <div class="form-group row">
                <label class="col-sm-2">제품설명</label>
                <div class="col-sm-3">
                    <textarea cols="30" rows="5" name="menuContent"></textarea>
                </div>
            </div>
    
            <div class="form-group row">
                <label class="col-sm-2">재고수량</label>
                <div class="col-sm-3">
                    <input type="text" name="menuCount" class="form-control" />
                </div>
            </div>
    
            <div class="form-group row">
                <label class="col-sm-2">포인트적립</label>
                <div class="col-sm-3">
                    <input type="text" name="menuPoint" class="form-control" />
                </div>
            </div>
    
            <div class="button">
                <label for="chooseFile">
                    👉 첫번째파일 업로드 👈
                </label>
            </div>
            <div class="image-show" id="image-show"></div>
    
            <input type="file" id="image" accept="image/*" onchange="setThumbnail(event);" name="menuImage1"/>
            <div id="image_container1"></div> 
            <script>
                function setThumbnail(event) {
                    var reader = new FileReader();
    
                    reader.onload = function (event) {
                        var img = document.createElement("img");
                        img.setAttribute("src", event.target.result);
                        document.querySelector("div#image_container1").appendChild(img);
                    };
    
                    reader.readAsDataURL(event.target.files[0]);
                }
            </script>
    
            <br>
            <div class="button">
                <label for="chooseFile">
                    👉 두번째파일 업로드 👈
                </label>
            </div>
            <div class="image-show" id="image-show"></div>
    
    
            <input type="file" id="image" accept="image/*" onchange="setThumbnail(event);" name="menuImage2"/>
            <div id="image_container2"></div>
            <script>
                function setThumbnail(event) {
                    var reader = new FileReader();
    
                    reader.onload = function (event) {
                        var img = document.createElement("img");
                        img.setAttribute("src", event.target.result);
                        document.querySelector("div#image_container2").appendChild(img);
                    };
    
                    reader.readAsDataURL(event.target.files[0]);
                }
            </script>
    
            <br>
            <div class="button">
                <label for="chooseFile">
                    👉 세번째파일 업로드 👈
                </label>
            </div>
            <div class="image-show" id="image-show"></div>
    
    
            <input type="file" id="image" accept="image/*" onchange="setThumbnail(event);" name="menuImage3"/>
            <div id="image_container3"></div>
            <script>
                function setThumbnail(event) {
                    var reader = new FileReader();
    
                    reader.onload = function (event) {
                        var img = document.createElement("img");
                        img.setAttribute("src", event.target.result);
                        document.querySelector("div#image_container3").appendChild(img);
                    };
    
                    reader.readAsDataURL(event.target.files[0]);
                }
            </script>
            <br>
            
    
            <div class="form-group row">
                <div class="col-sm-offset-2 col-sm-10">
                    <input type="submit" class="btn btn-primary" value="수정완료" />
                </div>
            </div>
        </form>
    </div>


    
    