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

<!-- Begin section -->
<section class="probootstrap-cover overflow-hidden relative"  style="background-image: url('<c:url value="/template/web/assets/images/bg_1.jpg"/>');" data-stellar-background-ratio="0.5" id="section-home">
    <div class="overlay"></div>
    <div class="container">
        <div class="row align-items-center text-center">
            <div class="col-md">
                <h2 class="heading mb-2 display-4 font-light probootstrap-animate">ĐỊA ĐIỂM DU LỊCH Ở BÌNH ĐỊNH</h2>
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<section class="probootstrap_section" id="section-city-guides">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Các địa điểm du lịch ở Bình Định</h2>
            </div>
        </div>
        <div class="row">
            <c:forEach var="item" items="${lists}" begin="0" end="8">
                <c:url value="/place_detail" var="redirect">
                    <c:param name="place_id" value="${item.id}"/>
                </c:url>
            <div class="probootstrap-animate d-md-flex" id="section" style="margin-bottom: 5%">
                <a href="${redirect}" class="probootstrap-thumbnail" style="width: 30%;">
                    <img src="<c:url value="/template/web/assets/images/${item.thumbnail}" />" height="100%" width="100%" alt="${item.title}" class="img-fluid" style="border-radius: 5px">
                </a>
                <div class="probootstrap-text" style="padding-left: 3%; width: 70%; padding-bottom: 2%; background-color: #e0eae1; border-radius: 5px; margin-left: 1%; margin-bottom: 1%; padding-top: 2%">
                    <h1 class="banner_taital">${item.title}</h1>
                    <p>${item.shortDescription}</p>
                    <p> Lượt yêu thích: 15</p>
                    <p><a href="#" class="btn btn-primary">Xem thêm</a></p>
                </div>
            </div>
            </c:forEach>
        </div>

        <div class="row justify-content-center probootstrap-animate">
            <div class="col-md-3"><a href="<c:url value="/event"/>" target="_blank" class="btn btn-primary">Xem thêm Địa điểm</a></div>
        </div>
    </div>
</section>
<!-- END section -->

<section class="probootstrap_section">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="box">
                <a href="" class="probootstrap-thumbnail">
                    <img class="img-fluid" style="height: 50%; width: 50%" src="<c:url value="/template/web/assets/images/BaiTamHoangHau.jpg"/>" alt="">
                    <div class="detail-box">
                        <h6 class="probootstrap-text">
                            Bãi tắm Hoàng Hậu
                        </h6>
                    </div>
                </a>
            </div>
        </div>
        <a href="" class="brand-btn">
            See More
        </a>
    </div>
</section>


</body>
</html>
