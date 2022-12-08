<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/11/2022
  Time: 5:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix="securtity" uri="http://www.springframework.org/security/tags" %>
<%@ page import= "com.laptrinhjavaweb.util.SecurityUtils" %>
<html>
<head>
    <title>Khách sạn</title>
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
                <li class="nav-item"><a class="nav-link" href="<c:url value="/diadanh"/>">Địa danh</a></li>
                <li class="nav-item"><a class="nav-link" href="<c:url value="/event"/>">Sự kiện</a></li>
                <li class="nav-item"><a class="nav-link" href="<c:url value="/dacsan"/>">Ẩm thực</a></li>
                <li class="nav-item active"><a class="nav-link" href="<c:url value="/khachsan"/>">Khách sạn</a></li>
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


<section class="probootstrap-cover overflow-hidden relative"  style="background-image: url('<c:url value="/template/web/assets/images/bg_1.jpg"/>');" data-stellar-background-ratio="0.5" id="section-home">
    <div class="overlay"></div>
    <div class="container">
        <div class="row align-items-center text-center">
            <div class="col-md">
                <h2 class="heading mb-2 display-4 font-light probootstrap-animate">Khách sạn phổ biến nhất</h2>
                <p class="lead mb-5 probootstrap-animate">


                </p>
                <a href="https://quynhon.maiaresorts.com/vi/biet-thu/" target="_blank" role="button" class="btn btn-primary p-3 mr-3 pl-5 pr-5 text-uppercase d-lg-inline d-md-inline d-sm-block d-block mb-3">Khách sạn cao cấp 5 sao</a>
                <a href="https://www.trivago.vn/" target="_blank" role="button" class="btn btn-primary p-3 mr-3 pl-5 pr-5 text-uppercase d-lg-inline d-md-inline d-sm-block d-block mb-3">Khách sạn bình dân</a>
                </p>
            </div>
        </div>
    </div>

</section>
<!-- END section -->




<section class="probootstrap-section-half d-md-flex">
    <div class="probootstrap-image order-2 probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(<c:url value="/template/web/assets/images/img_3.jpg"/>)"></div>
    <div class="probootstrap-text order-1">
        <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft">
            <h2 class="heading mb-4">Chọn khách sạn</h2>

            <p>Chọn khách sạn phù hợp giúp bạn thuận tiện đi lợi trong việc thư giãn , và quản lí được chi phí.</p>
            <p><a href="#" class="btn btn-primary">Tìm khách sạn ngay</a></p>
        </div>
    </div>
</section>
<!-- END section -->


<section class="probootstrap_section">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Những khách sạn phổ biến được đánh giá</h2>
            </div>
        </div>

        <div class="row probootstrap-animate">
            <div class="col-md-12">
                <div class="owl-carousel js-owl-carousel">
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-teatro-de-la-caridad"></span>
                        <em>Teatro de la Caridad</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-royal-museum-of-the-armed-forces"></span>
                        <em>Royal Museum of the Armed Forces</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-parthenon"></span>
                        <em>Parthenon</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-marina-bay-sands"></span>
                        <em>Marina Bay Sands</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-samarra-minaret"></span>
                        <em>Samarra Minaret</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-chiang-kai-shek-memorial"></span>
                        <em>Chiang Kai Shek Memorial</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-heuvelse-kerk-tilburg"></span>
                        <em>Heuvelse Kerk Tilburg</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-cathedral-of-cordoba"></span>
                        <em>Cathedral of Cordoba</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-london-bridge"></span>
                        <em>London Bridge</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-taj-mahal"></span>
                        <em>Taj Mahal</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-leaning-tower-of-pisa"></span>
                        <em>Leaning Tower of Pisa</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-burj-al-arab"></span>
                        <em>Burj al Arab</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-gate-of-india"></span>
                        <em>Gate of India</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-osaka-castle"></span>
                        <em>Osaka Castle</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-statue-of-liberty"></span>
                        <em>Statue of Liberty</em>
                    </a>

                </div>
            </div>
        </div>
    </div>
</section>
<!-- END section -->

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
