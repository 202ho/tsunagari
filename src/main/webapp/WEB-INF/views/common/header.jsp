<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<header class="p-3 bg-white text-dark" style="box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1); margin-bottom:4px;">

    <div class="container-fluid" style="width:768px; ">

        <div class="d-flex flex-wrap align-items-center justify-content-between">
            <a href="/main" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none" style="width: 100px;">
            <img src="resources/image/logo.jpg" style="width:150px">
                <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap">
                    <use xlink:href="#bootstrap"></use>
                </svg>
            </a>

        <div class="input-group col-12 col-lg flex-grow-1 mb-3 mb-lg-0 mx-lg-3">
          <input type="text" class="form-control" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="button-addon2">
          <button class="btn btn-outline-secondary header-search-btn'" type="button" id="button-addon2">검색</button>
        </div>

            <div class="text-end" style="width: 200px;">
                <button type="button" class="btn btn-outline-primary me-2 header-login-btn" style="color: #2E8EE5; border-color: #2E8EE5;">로그인</button>
                <button type="button" class="btn btn-primary" style="background-color: #2E8EE5; border-color: #2E8EE5;">회원가입</button>
            </div>
        </div>

    </div>

</header>