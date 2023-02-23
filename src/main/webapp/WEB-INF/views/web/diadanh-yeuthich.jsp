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
                <h2 class="heading mb-2 display-4 font-light probootstrap-animate">ĐỊA ĐIỂM DU LỊCH Ở BÌNH ĐỊNH</h2>

                <p class="lead mb-5 probootstrap-animate">


                </p>
                <a href="#section" target="_blank" role="button" class="btn btn-primary p-3 mr-3 pl-5 pr-5 text-uppercase d-lg-inline d-md-inline d-sm-block d-block mb-3">Tìm hiểu tại đây</a>
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
                <h2 class="display-4 border-bottom probootstrap-section-heading">Các địa điểm ở Bình Định</h2>
            </div>
        </div>
        <div class="row mb-4">
            <c:forEach var="item" items="${lists}" begin="0" end="8">
            <div class="col-lg-3 col-md-6 probootstrap-animate mb-3" id="section">
                <c:url value="/place_detail" var="redirect">
                    <c:param name="place_id" value="${item.id}"/>
                </c:url>
                <a href="${redirect}" class="probootstrap-thumbnail">
                    <img src="<c:url value="/template/web/assets/images/${item.thumbnail}" />" height="200px" width="250px" alt="${item.title}" class="img-fluid">
                    <div class="probootstrap-text">
                        <h3>${item.title}</h3>
                    </div>
                </a>
            </div>
            </c:forEach>
        </div>

        <div class="row justify-content-center probootstrap-animate">
            <div class="col-md-3"><a href="<c:url value="/event"/>" target="_blank" class="btn btn-primary">Xem thêm Địa điểm</a></div>
        </div>

    </div>
</section>
<!-- END section -->


</body>
</html>
