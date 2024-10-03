<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<header class="bg-white text-dark" style="box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1); margin-bottom:4px;">
    <div class="container-fluid" style="width:800px; padding:0px;">
        <div class="d-flex flex-wrap align-items-center justify-content-between">
            <a href="/main" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none" style="width: 150px;">
                <img src="/resources/image/logo.jpg" style="width:150px">
            </a>

            <div class="input-group col-12 col-lg flex-grow-1 mb-3 mb-lg-0 mx-lg-3">
                <input type="search" class="header-search-input form-control" placeholder="액티비티를 검색하세요." aria-label="Recipient's username" aria-describedby="button-addon2">
                <button class="btn btn-outline-secondary header-search-btn'" type="button" id="header-search-btn">검색</button>
            </div>

            <div class="text-end">
                <sec:authorize access="isAuthenticated()">
                    <div class="navbar" style="width:60px;">
                        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                    </div>
                </sec:authorize>
                <sec:authorize access="!isAuthenticated()">
                    <button type="button" class="btn btn-outline-primary me-2 header-login-btn" onclick="location.href='/signin'" style="color: #2E8EE5; border-color: #2E8EE5;">로그인</button>
                    <button type="button" class="btn btn-primary" onclick="location.href='/signup'" style="background-color: #2E8EE5; border-color: #2E8EE5;">회원가입</button>
                </sec:authorize>
            </div>
        </div>
    </div>
</header>

<sec:authorize access="isAuthenticated()">
    <%@ include file="/WEB-INF/views/common/sidemenu.jsp" %>
</sec:authorize>