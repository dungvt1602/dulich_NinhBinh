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
    <title>Title</title>
</head>
<body>
<style>
    .normal { font-style: normal; }
    .italic { font-style: italic;}
    .oblique { font-style: oblique;}
</style>
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
            <li class="nav-item "><a class="nav-link" href="<c:url value="/trang-chu"/> ">Đăng ký</a></li>
        </securtity:authorize>

        <securtity:authorize access="isAuthenticated()">
            <li class="nav-item "><a class="nav-link" href="<c:url value="/trang-chu"/> ">Welcome <%=SecurityUtils.getPrincipal().getFullName()%></a></li>
            <li class="nav-item "><a class="nav-link" href="<c:url value="/thoat"/> ">Đăng xuất</a></li>
        </securtity:authorize>
    </ul>

</nav>
<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('<c:url value="/template/web/assets/video/HonKho.jpg"/>');" data-stellar-background-ratio="0.5" id="section-home">
    <div class="overlay"></div>
    <div class="container">
        <div class="row align-items-center">

        </div>
    </div>

</section>
<!-- END section -->

<section class="probootstrap_section" id="section-feature-testimonial">


    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-12 text-center mb-5 probootstrap-animate">
                <h2 class="display-4 border-bottom probootstrap-section-heading">HÒN KHÔ</h2>
                <blockquote class="normal">
                    <p class=" lead mb-4 "><em>Đặt chân đến hòn Khô, bạn sẽ ngạc nhiên trước khung cảnh thiên nhiên quá đỗi bình yên và chưa có nhiều sự khai thác thương mại. Trong đó, điểm đặc trưng của hòn Khô là con đường dài 500m giữa biển được tạo thành khi nước rút, kết nối làng chài Nhơn Hải và hòn đảo này.</em></p>
                    <p class=" lead mb-4 "><em>Cách đi Hòn Khô cũng vô cùng đơn giản. Từ TP. Hồ Chí Minh bạn có thể đi máy bay, xe khách hoặc tàu hoả đến thẳng Quy Nhơn. Sau đó thuê xe đi hết cây cầu Thị Nại, qua Khu kinh tế Nhơn Hội, đi dọc theo vịnh Mai Hương để đến làng chài xã Nhơn Hãi. Sau đó bạn tiếp tục thuê thuyền là có thể ra được hòn đảo xinh đẹp này. Có rất nhiều thuyền với dịch vụ và giá cả khác nhau cho bạn thoải mái lựa chọn. Giá vé hòn khô đi từ đất liền ra đảo bằng thuyền giao động từ 100K – 1200K. </em></p>
                    <p class=" lead mb-4 "><em>Hòn Kho yên bình, hoang sơ chưa có quá nhiều bàn tay can thiệp của con người. Bởi thế mà khi đến đây bạn có thể cảm nhận được sự tự do, phóng khoáng, bình dị. Xung quanh đảo không có nhiều cây cao bóng mát, mà chỉ có những bụi cỏ xanh xen lẫn những tảng đá tạo nên khung cảnh hoang dại rất đặc biệt.</em></p>
                    <p class="probootstrap-author">
                        <a href="https://probootstrap.com/" target="_blank">
                            <img src="<c:url value="/template/web/assets/video/angelo.jpg"/> " alt="Free Template by ProBootstrap.com" class="rounded-circle">
                            <span class="probootstrap-name">Hoàng Minh Châu</span>
                            <span class="probootstrap-title">Ngày 5 tháng 12 năm 2022</span>
                        </a>
                    </p>
                </blockquote>
            </div>
        </div>
    </div>
</section>
<!-- END section -->
<section class="probootstrap_section">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Một số thông tin khác</h2>
            </div>
        </div>
    </div>
</section>
<section class="probootstrap-section-half d-md-flex" style="padding-bottom: 80px">
    <div class="probootstrap-image order-2 probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(<c:url value="/template/web/assets/images/img_3.jpg"/>)"></div>
    <div class="probootstrap-text order-1">
        <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft">
            <h2 class="heading mb-4">HÒN KHÔ</h2>
            <p>Địa chỉ: Thôn Hải Đông, xã Nhơn Hải, TP. Quy Nhơn, tỉnh Bình Định, Việt Nam</p>
            <p>Lượt bình luận: 826</p>
            <p>Lượt yêu thích: 826</p>
            <p><a href="#" class="btn btn-primary"> ♥ Yêu thích</a></p>
        </div>
    </div>
</section>

<section>
    <div class="container-fluid">
        <!-- Comments -->
        <div>

            <h2 class="tm-color-primary tm-post-title">Comments</h2>
            <hr class="tm-hr-primary tm-mb-45">
            <div class="tm-comment-reply tm-mb-45">

                <div class="tm-comment">
                    <figure class="tm-comment-figure">
                        <img src="<c:url value="/template/web/assets/video/picture1.jpg"/>" alt="Image" class="mb-2 rounded-circle img-thumbnail" style="width: 100px;height: 100px;">
                        <figcaption class="tm-color-primary text-center">Jewel Soft</figcaption>
                    </figure>
                    <p>
                        Nunc et eros quis enim feugiat tincidunt et vitae dui. Nullam consectetur justo ac ex laoreet rhoncus. Nunc id leo pretium, faucibus sapien vel, euismod turpis.
                    </p>
                </div>
                <span class="d-block text-right tm-color-primary">June 21, 2020</span>
            </div>
            <div class="tm-comment-reply tm-mb-45">
                <hr>
                <div class="tm-comment">
                    <figure class="tm-comment-figure">
                        <img src="<c:url value="/template/web/assets/video/picture1.jpg"/>" alt="Image" class="mb-2 rounded-circle img-thumbnail" style="width: 100px;height: 100px;">
                        <figcaption class="tm-color-primary text-center">Jewel Soft</figcaption>
                    </figure>
                    <p>
                        Nunc et eros quis enim feugiat tincidunt et vitae dui. Nullam consectetur justo ac ex laoreet rhoncus. Nunc id leo pretium, faucibus sapien vel, euismod turpis.
                    </p>
                </div>
                <span class="d-block text-right tm-color-primary">June 21, 2020</span>
            </div>
            <form action="" class="mb-5">
                <h2 class="tm-color-primary tm-post-title mb-4">Your comment</h2>
                <div class="mb-4">
                    <textarea class="form-control" name="message" rows="6"></textarea>
                </div>
                <div class="text-right">
                    <button class="tm-btn tm-btn-primary tm-btn-small">Submit</button>
                </div>
            </form>
        </div>
    </div>
</section>

<section class="probootstrap_section bg-light">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Những địa danh khác</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">

                <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                    <div class="probootstrap-media-image" style="background-image: url(<c:url value="/template/web/assets/images/img_1.jpg"/>)">
                    </div>
                    <div class="media-body">
                        <h5 class="mb-3">01. Tháp đôi</h5>
                        <p>Tháp được xây dựng vào khoảng cuối thế kỷ 11 – đầu thế kỷ 13. Đây là thời kỳ vương quốc Chăm Pa gặp nhiều biến động.</p>
                    </div>
                </div>

                <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                    <div class="probootstrap-media-image" style="background-image: url(<c:url value="/template/web/assets/images/img_2.jpg"/>)">
                    </div>
                    <div class="media-body">
                        <h5 class="mb-3">02. Ghềnh Ráng</h5>
                        <p>Là tác phẩm thiên tạo với quần thể sơn thạch chạy sát biển, nơi những dãy đá núi nhấp nhô, chập trùng tạo thành hang,... </p>
                    </div>
                </div>

            </div>
            <div class="col-md-6">

                <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                    <div class="probootstrap-media-image" style="background-image: url(<c:url value="/template/web/assets/images/img_4.jpg"/>)">
                    </div>
                    <div class="media-body">
                        <h5 class="mb-3">03. Tháp Dương Long</h5>
                        <p>Trên đất Bình Định đã có nhiều công trình kiến trúc Champa được xây dựng, nhiều tác phẩm điêu khắc được khắc tạc,...</p>
                    </div>
                </div>

                <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                    <div class="probootstrap-media-image" style="background-image: url(<c:url value="/template/web/assets/images/img_3.jpg"/>)">
                    </div>
                    <div class="media-body">
                        <h5 class="mb-3">04. Mũi Vi Rồng</h5>
                        <p>Khi được quan sát từ xa hay nhìn từ trên cao, Mũi Vi Rồng hiện ra là một tảng đá vươn mình ra biển hùng dũng.</p>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
</body>
</html>