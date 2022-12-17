<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/11/2022
  Time: 4:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix="securtity" uri="http://www.springframework.org/security/tags" %>
<%@ page import= "com.laptrinhjavaweb.util.SecurityUtils" %>
<html>
<head>
    <title>Địa danh</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark probootstrap_navbar" id="probootstrap-navbar">
    <div class="container">
        <a class="navbar-brand" href="<c:url value="/trang-chu"/>">BINH DINH - VIET NAM</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-menu" aria-controls="probootstrap-menu" aria-expanded="false" aria-label="Toggle navigation">
            <span><i class="ion-navicon"></i></span>
        </button>
        <div class="collapse navbar-collapse" id="probootstrap-menu">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="<c:url value="/trang-chu"/>">Home</a></li>
                <li class="nav-item active"><a class="nav-link" href="<c:url value="/diadanh"/>">Địa danh</a></li>
                <li class="nav-item"><a class="nav-link" href="<c:url value="/event"/>">Sự kiện</a></li>
                <li class="nav-item"><a class="nav-link" href="<c:url value="/dacsan"/>">Ẩm thực</a></li>
                <li class="nav-item"><a class="nav-link" href="<c:url value="/khachsan"/>">Khách sạn</a></li>
                <li class="nav-item "><a class="nav-link" href="<c:url value="/contact"/> ">Thông tin liên hệ</a></li>
            </ul>
        </div>
    </div>
    <ul class="navbar-nav ml-auto">
        <securtity:authorize access="isAnonymous()">
            <li class="nav-item "><a class="nav-link" href="<c:url value="/dang-nhap"/> ">Đăng nhập</a></li>
            <li class="nav-item "><a class="nav-link" href="<c:url value="/trang-chu"/> ">Đăng ký</a></li>
        </securtity:authorize>

        <securtity:authorize access="isAuthenticated()">
            <li class="nav-item "><a class="nav-link" href="<c:url value="/trang-chu"/> ">Welcome <%=SecurityUtils.getPrincipal().getFullName()%></a></li>
            <li class="nav-item "><a class="nav-link" href="<c:url value="/thoat"/> ">Đăng xuất</a></li>
        </securtity:authorize>
    </ul>

</nav>
<!-- END nav -->


<section class="probootstrap-cover overflow-hidden relative"  style="background-image: url('<c:url value="/template/web/assets/images/bg_1.jpg"/>');" data-stellar-background-ratio="0.5" id="section-home">
    <div class="overlay"></div>
    <div class="container">
        <div class="row align-items-center text-center">
            <div class="col-md">
                <h2 class="heading mb-2 display-4 font-light probootstrap-animate">Địa điểm được yêu thích nhất</h2>

                <p class="lead mb-5 probootstrap-animate">


                </p>
                <a href="google.com" target="_blank" role="button" class="btn btn-primary p-3 mr-3 pl-5 pr-5 text-uppercase d-lg-inline d-md-inline d-sm-block d-block mb-3">Tìm hiểu tại đây</a>
                </p>
            </div>
        </div>
    </div>

</section>
<!-- END section -->

<section class="probootstrap_section" id="section-city-guides">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Địa điểm nhiều du khách tham quan nhất</h2>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
                <a href="<c:url value="/place_detail"/>" class="probootstrap-thumbnail">
                    <img src="/template/web/assets/images/BaiTamHoangHau.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
                    <div class="probootstrap-text">
                        <h3>Buena</h3>
                    </div>
                </a>
            </div>
            <div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
                <a href="#" class="probootstrap-thumbnail">
                    <img src="assets/images/img_2.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
                    <h3>Road</h3>
                </a>
            </div>
            <div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
                <a href="#" class="probootstrap-thumbnail">
                    <img src="assets/images/img_3.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
                    <h3>Australia</h3>
                </a>
            </div>
            <div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
                <a href="#" class="probootstrap-thumbnail">
                    <img src="assets/images/img_4.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
                    <h3>Japan</h3>
                </a>
            </div>
        </div>


        <div class="row">
            <div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
                <a href="#" class="probootstrap-thumbnail">
                    <img src="assets/images/img_5.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
                    <div class="probootstrap-text">
                        <h3>Paris</h3>
                    </div>
                </a>
            </div>
            <div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
                <a href="#" class="probootstrap-thumbnail">
                    <img src="assets/images/img_2.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
                    <h3>Brazil</h3>
                </a>
            </div>
            <div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
                <a href="#" class="probootstrap-thumbnail">
                    <img src="assets/images/img_3.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
                    <h3>Australia</h3>
                </a>
            </div>
            <div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
                <a href="#" class="probootstrap-thumbnail">
                    <img src="assets/images/img_4.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
                    <h3>Japan</h3>
                </a>
            </div>
        </div>

        <div class="row justify-content-center probootstrap-animate">
            <div class="col-md-3"><a href="https://themewagon.com/theme_tag/free/" target="_blank" class="btn btn-primary">More Templates Here</a></div>
        </div>

    </div>
</section>

<section class="probootstrap_section" id="section-feature-testimonial">
    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-12 text-center mb-5 probootstrap-animate">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Why we Love Places</h2>
                <blockquote class="">
                    <p class="lead mb-4"><em>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</em></p>
                    <p class="probootstrap-author">
                        <a href="https://probootstrap.com/" target="_blank">
                            <img src="assets/images/person_1.jpg" alt="Free Template by ProBootstrap.com" class="rounded-circle">
                            <span class="probootstrap-name">James Smith</span>
                            <span class="probootstrap-title">Chief Executive Officer</span>
                        </a>
                    </p>
                </blockquote>

            </div>
        </div>

    </div>
</section>

</body>
</html>
