<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<nav class="navbar bg-body-tertiary fixed-top" style="padding:0;">
    <div class="container-fluid">
        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel" style="padding:30px;">

            <div class="offcanvas-header">

                <div class="sidemenu-header-profile">
                    <h4 class="offcanvas-title" id="offcanvasNavbarLabel"><span><sec:authentication property="principal.username" /></span></h4>
                    <h5 class="offcanvas-title" id="offcanvasNavbarLabel"><span><sec:authentication property="principal.nickname" /></span></h5>
                    <a class="nav-link " aria-current="page" href="/logout?redirectURL=${pageContext.request.requestURI}">로그아웃</a>
                </div>

            </div>

            <div class="offcanvas-body">
                <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">

                    <li class="nav-item nav-item-divider"></li>
                    <li class="nav-item">
                        <a class="nav-link " aria-current="page" href="/guest/mypage">마이페이지</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " aria-current="page" href="/guest/reservation">예약 내역</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            호스트 관리
                        </a>
                        <ul class="dropdown-menu">
                            <sec:authorize access="hasRole('ROLE_GUEST')">
                                <li><a class="dropdown-item side-menu-dropdown-item" href="/host/register">호스트 신청</a></li>
                            </sec:authorize>
                            <sec:authorize access="hasRole('ROLE_HOST')">
                                <li><a class="dropdown-item side-menu-dropdown-item" href="/host/activity">액티비티 관리</a></li>
                                <li><a class="dropdown-item side-menu-dropdown-item" href="/host/reservation">예약 관리</a></li>
                                <li><a class="dropdown-item side-menu-dropdown-item" href="/host/revenue">정산 관리</a></li>
                            </sec:authorize>
                        </ul>
                    </li>

                </ul>
            </div>
        </div>
    </div>
</nav>