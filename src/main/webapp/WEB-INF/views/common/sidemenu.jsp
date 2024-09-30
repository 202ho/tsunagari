<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<nav class="navbar bg-body-tertiary fixed-top" style="padding:0;">
    <div class="container-fluid">
        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel" style="padding:30px;">

            <div class="offcanvas-header">

                <div class="sidemenu-header-profile">
                    <h4 class="offcanvas-title" id="offcanvasNavbarLabel">이메일</h4>
                    <h5 class="offcanvas-title" id="offcanvasNavbarLabel">닉네임</h5>
                    <a class="nav-link " aria-current="page" href="#">로그아웃</a>
                </div>

            </div>

            <div class="offcanvas-body">
                <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">

                    <li class="nav-item nav-item-divider"></li>
                    <li class="nav-item">
                        <a class="nav-link " aria-current="page" href="#">마이페이지</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " aria-current="page" href="#">예약 내역</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            호스트 관리
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item side-menu-dropdown-item" href="#">호스트 신청</a></li>
                            <li><a class="dropdown-item side-menu-dropdown-item" href="#">액티비티 등록</a></li>
                            <li><a class="dropdown-item side-menu-dropdown-item" href="#">예약 관리</a></li>
                            <li><a class="dropdown-item side-menu-dropdown-item" href="#">정산 관리</a></li>
                        </ul>
                    </li>

                </ul>
            </div>
        </div>
    </div>
</nav>