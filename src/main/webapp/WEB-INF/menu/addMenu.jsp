<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">제품등록</h1>
    </div>
</div>
<div class="container">
    <form name="newProduct" action="addMenu.do" method="post" class="form-horizontal">
        <div class="form-group row">
            <label class="col-sm-2">${vo.menuId }</label>
            <div class="col-sm-3">
                <input type="text" name="menuId" class="form-control" />
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2">${vo.menuName }</label>
            <div class="col-sm-3">
                <input type="text" name="menuName" class="form-control" />
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2">${vo.menuNameInfo }</label>
            <div class="col-sm-3">
                <textarea cols="15" rows="2" name="menuNameInfo"></textarea>
            </div>
        </div>

       

        <div class="form-group row">
            <label class="hotstep">${vo.menuKind }</label>
            <div style="width: 300px;">
                <select name="menuKind">
                    <option value="단계" selected="selected">맵기단계 선택</option>
                    <option value="0단계">매콤0단계</option>
                    <option value="1단계">매콤1단계</option>
                    <option value="2단계">매콤2단계</option>
                    <option value="3단계">매콤3단계</option>
                </select>
            </div>
        </div>


        <div class="form-group row">
            <label class="col-sm-2">${vo.menuPrice }</label>
            <div class="col-sm-3">
                <input type="text" name="menuPrice" class="form-control" />
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2">${vo.menuPriceOff }</label>
            <div class="col-sm-3">
                <input type="text" name="menuPriceOff" class="form-control" />
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2">${vo.menuContent }</label>
            <div class="col-sm-3">
                <textarea cols="30" rows="5" name="menuCentent"></textarea>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2">${vo.menuCount }</label>
            <div class="col-sm-3">
                <input type="text" name="menuCount" class="form-control" />
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2">${vo.menuPoint }</label>
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


        <input type="file" id="image" accept="image/*" onchange="setThumbnail(event);" />
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


        <input type="file" id="image" accept="image/*" onchange="setThumbnail(event);" />
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


        <input type="file" id="image" accept="image/*" onchange="setThumbnail(event);" />
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

        <script src="index.js"></script>

        <div class="form-group row">
            <div class="col-sm-offset-2 col-sm-10">
                <input type="submit" class="btn btn-primary" value="등록" />
            </div>
        </div>
    </form>
</div>
</div>

