<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/10/2022
  Time: 3:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix="securtity" uri="http://www.springframework.org/security/tags" %>
<%@ page import= "com.laptrinhjavaweb.util.SecurityUtils" %>


<html>
<head>
    <title>Trang chủ</title>
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
                <li class="nav-item active"><a class="nav-link" href="<c:url value="/trang-chu"/>">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="<c:url value="/diadanh"/>">Địa danh</a></li>
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
            <li class="nav-item "><a class="nav-link" href="<c:url value="/dang-ky"/> ">Đăng ký</a></li>
        </securtity:authorize>

        <securtity:authorize access="isAuthenticated()">
            <li class="nav-item "><a class="nav-link" href="<c:url value="/user_profile"/> ">Welcome <%=SecurityUtils.getPrincipal().getFullName()%></a></li>
            <li class="nav-item "><a class="nav-link" href="<c:url value="/thoat"/> ">Đăng xuất</a></li>
        </securtity:authorize>
    </ul>

</nav>
<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('<c:url value="/template/web/assets/images/bg_1.jpg"/>');" data-stellar-background-ratio="0.5" id="section-home">
    <div class="overlay"></div>
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md">
                <h2 class="heading mb-2 display-4 font-light probootstrap-animate">Bình Định có núi Vọng Phu Có Đầm Thị Nại có Cù Lao xanh.</h2>
                <p class="lead mb-5 probootstrap-animate">
                </p>
                <a href="<c:url value="/diadanh"/>" role="button" class="btn btn-primary p-3 mr-3 pl-5 pr-5 text-uppercase d-lg-inline d-md-inline d-sm-block d-block mb-3">Khám phá du địa diểm du lịch ngay tại đây</a>
                </p>
            </div>

        </div>
    </div>

</section>
<!-- END section -->

<section class="probootstrap_section" id="section-feature-testimonial">
    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-12 text-center mb-5 probootstrap-animate">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Sơ lược về Bình Định</h2>
                <blockquote class="">
                    <p class="lead mb-4"><em>Bình Định là tỉnh thuộc vùng Duyên hải Nam Trung bộ Việt Nam, có tổng diện tích tự nhiên 6.025km2, Bắc giáp tỉnh Quảng Ngãi, Nam giáp tỉnh Phú Yên, Tây giáp tỉnh Gia Lai, Đông giáp Biển Đông, cách Thủ đô Hà Nội 1.065km, cách Thành phố Hồ Chí Minh 686km, cách Thành phố Đà Nẵng 300km, cách Cửa khẩu Quốc tế Bờ Y (tỉnh Kon Tum) qua Lào 300km. Là 1 trong 5 tỉnh của Vùng kinh tế trọng điểm Miền Trung (cùng với Thừa Thiên Huế, Đà Nẵng, Quảng Nam, Quảng Ngãi).</em></p>
                    <p class="lead mb-4"><em>Nhiệt độ không khí trung bình năm: ở khu vực miền núi biến đổi 20,1 - 26,1°C; tại vùng duyên hải là 27°C. Độ ẩm tuyệt đối trung bình tháng trong năm: tại khu vực miền núi là 22,5 - 27,9% và độ ẩm tương đối 79 - 92%; tại vùng duyên hải độ ẩm tuyệt đối trung bình là 27,9% và độ ẩm tương đối 79%. Tổng lượng mưa trung bình năm là 1.751mm, cực đại là 2.658mm, cực tiểu là 1.131mm. Mùa mưa bắt đầu từ tháng 9 - 12; mùa khô kéo dài từ tháng 1 - 8.</em></p>
                </blockquote>

            </div>
        </div>

    </div>
</section>
<!-- END section -->

<!-- BEGIN section -->
<section class="probootstrap_section">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Top 2 địa danh được yêu thích nhất:</h2>
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<section class="probootstrap-section-half d-md-flex" id="section-about">
    <div class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(<c:url value="/template/web/assets/images/${model1.thumbnail}"/>)"></div>
    <div class="probootstrap-text">
        <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight">
            <h2 class="heading mb-4">${model1.title}</h2>
            <p>${model1.shortDescription}</p>
            <c:url value="/place_detail" var="detail1">
                <c:param name="place_id" value="${model1.id}"/>
            </c:url>
            <p><a href="${detail1}" class="btn btn-primary">Xem thêm</a></p>
        </div>
    </div>
</section>

<section class="probootstrap-section-half d-md-flex">
    <div class="probootstrap-image order-2 probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(<c:url value="/template/web/assets/images/${model1.thumbnail}"/>)"></div>
    <div class="probootstrap-text order-1">
        <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft">
            <h2 class="heading mb-4">${model2.title}</h2>
            <p>${model2.shortDescription}</p>
            <c:url value="/place_detail" var="detail2">
                <c:param name="place_id" value="${model2.id}"/>
            </c:url>
            <p><a href="${detail2}" class="btn btn-primary">Xem thêm</a></p>
        </div>
    </div>
</section>
<!-- END section -->

<section class="probootstrap_section" id="section-feature-testimonial1">
    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-12 text-center mb-5 probootstrap-animate">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Lịch sử phát triển</h2>
                <blockquote class="">
                    <p class="lead mb-4"><em>Bình Định có một mạch nguồn văn hóa rất xa xưa từ nền văn hóa Sa Huỳnh – Truông Xe. Trải qua hàng nghìn năm dựng nước và giữ nước, văn hóa Bình Định vừa lan tỏa, vừa tiếp nhận những giá trị của nền văn hóa khác để bồi đắp, làm phong phú cho mình.</em></p>
                </blockquote>
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<section class="probootstrap_section bg-light">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Những địa danh khác</h2>
            </div>
        </div>
        <div class="row">
        <c:forEach var="item" items="${lists}" begin="0" end="3">
            <div class="col-md-6">
                <c:url value="/place_detail" var="redirect">
                    <c:param name="place_id" value="${item.id}"/>
                </c:url>
                <a href="${redirect}" class="probootstrap-thumbnail">
                    <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                        <div class="probootstrap-media-image" style="background-image: url(<c:url value="/template/web/assets/images/${item.thumbnail}"/>)">
                        </div>
                        <div class="media-body">
                            <h5 class="mb-3">${item.id}: ${item.title}</h5>
                            <p>${item.shortDescription}</p>
                        </div>
                    </div>
                </a>
            </div>
        </c:forEach>
        </div>
    </div>
</section>
</body>
</html>
