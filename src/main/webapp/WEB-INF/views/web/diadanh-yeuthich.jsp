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

<!--Begin section Loved place-->
<section class="shop_section layout_padding">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate" style="padding-top: 10%">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Top địa danh được yêu thích nhất:</h2>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 ">
                <div class="box">
                    <a href="">
                        <div class="image_1 overlay probootstrap-cover" style="display: block; background-image: url('<c:url value="/template/web/assets/images/BaiTamHoangHau.jpg"/>'); height: 100%; width: 100%; border-radius: 5px; vertical-align: top">
                            <div style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 10%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center;"> Bãi tắm Hoàng Hậu </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="box">
                    <a href="">
                        <div class="image_1 overlay probootstrap-cover" style="display: block; background-image: url('<c:url value="/template/web/assets/images/ThapDoi.png"/>'); height: 100%; width: 100%; border-radius: 5px; vertical-align: top">
                            <div style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 10%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center;"> Tháp Đôi </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="box">
                    <a href="">
                        <div class="image_1 overlay probootstrap-cover" style="display: block; background-image: url('<c:url value="/template/web/assets/images/ThapDuongLong.jpg"/>'); height: 100%; width: 100%; border-radius: 5px; vertical-align: top">
                            <div style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 10%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center;"> Tháp Dương Long </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="box">
                    <a href="">
                        <div class="image_1 overlay probootstrap-cover" style="display: block; background-image: url('<c:url value="/template/web/assets/images/GhenhRangTienSa.jpg"/>'); height: 100%; width: 100%; border-radius: 5px; vertical-align: top; margin-top: 10%;">
                            <div style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 10%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center;"> Ghềnh Ráng - Tiên Sa </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="box">
                    <a href="">
                        <div class="image_1 overlay probootstrap-cover" style="display: block; background-image: url('<c:url value="/template/web/assets/images/ThapBanhIt.jpg"/>'); height: 100%; width: 100%; border-radius: 5px; vertical-align: top; margin-top: 10%;">
                            <div style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 10%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center;"> Tháp Bánh Ít </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-6  col-xl-3">
                <div class="box">
                    <a href="">
                        <div class="image_1 overlay probootstrap-cover" style="display: block; background-image: url('<c:url value="/template/web/assets/images/BaiTamQuyNhon.jpg"/>'); height: 100%; width: 100%; border-radius: 5px; vertical-align: top; margin-top: 10%;">
                            <div style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 10%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center;"> Bãi tắm Quy Nhơn </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="box">
                    <a href="">
                        <div class="image_1 overlay probootstrap-cover" style="display: block; background-image: url('<c:url value="/template/web/assets/images/EoGio.jpg"/>'); height: 100%; width: 100%; border-radius: 5px; vertical-align: top; margin-top: 10%;">
                            <div style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 10%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center;"> Eo Gió </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="btn-box" style="padding-top: 5%; padding-bottom: 5%; text-align: center">
            <a href="#" class="btn btn-primary">Xem thêm</a>
        </div>
    </div>
</section>
<!--End section Loved place-->

<!--Begin section most comment place-->
<section>
    <div style="padding-top: 10%; padding-bottom: 10%">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Top địa danh được bình luận nhiều nhất:</h2>
            </div>
        </div>

        <div class="row" style="padding-left: 10%">
            <div class="col-md-6" style="padding-right: 2%;">
                <div class="small-box-c" style="-webkit-box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); background: #f8f6ec; padding: 12px; height: 100%">
                    <div class="small-img-b" style="height: 50%">
                        <img class="img-responsive" src="<c:url value="/template/web/assets/images/ThapBanhIt.jpg"/>" alt="Hình ảnh Tháp Bánh Ít" style="width: 100%; height: 100%; border-radius: 5px"/>
                    </div>
                    <div class="clearfix" style="padding-top: 2%; padding-left: 2%">
                        <div class="left-ti">
                            <h4>Tháp Bánh Ít</h4>
                            <p> Mô tả ngắn </p>
                            <p> Số lượt bình luận: 143</p>
                            <a href="#"> Chi tiết </a>
                        </div>
                        <div class="prod-btn" style="background: #ffffff; border: 1px solid #f6e37c; border-radius: 2%; display: block; margin-right: 2%; padding: 2%; width: 20%; float: right">
                            <a href="#" style=" color: red "><i class="fa fa-heart" aria-hidden="true"></i> Yêu thích </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6" style="padding-right: 2%">
                <div class="small-box-c" style="-webkit-box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); background: #f8f6ec; padding: 12px; height: 100%">
                    <div class="small-img-b" style="height: 50%">
                        <img class="img-responsive" src="<c:url value="/template/web/assets/images/EoGio.jpg"/>" alt="Hình ảnh Eo Gió" style="width: 100%; height: 100%; border-radius: 5px"/>
                    </div>
                    <div class="clearfix" style="padding-top: 2%; padding-left: 2%">
                        <div class="left-ti">
                            <h4>Eo gió</h4>
                            <p> Mô tả ngắn </p>
                            <p> Số lượt bình luận: 52</p>
                            <a href="#"> Chi tiết </a>
                        </div>
                        <div class="prod-btn" style="background: #ffffff; border: 1px solid #f6e37c; border-radius: 2%; display: block; margin-right: 2%; padding: 2%; width: 20%; float: right">
                            <a href="#" style=" color: red "><i class="fa fa-heart" aria-hidden="true"></i> Yêu thích </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row" style="padding-left: 10%; margin-top: 2%">
            <div class="col-md-6" style="padding-right: 2%;">
                <div class="small-box-c" style="-webkit-box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); background: #f8f6ec; padding: 12px; height: 100%">
                    <div class="small-img-b" style="height: 50%">
                        <img class="img-responsive" src="<c:url value="/template/web/assets/images/ThapDuongLong.jpg"/>" alt="Hình ảnh Tháp Bánh Ít" style="width: 100%; height: 100%; border-radius: 5px"/>
                    </div>
                    <div class="clearfix" style="padding-top: 2%; padding-left: 2%">
                        <div class="left-ti">
                            <h4>Tháp Dương Long</h4>
                            <p> Mô tả ngắn </p>
                            <p> Số lượt bình luận: 143</p>
                            <a href="#"> Chi tiết </a>
                        </div>
                        <div class="prod-btn" style="background: #ffffff; border: 1px solid #f6e37c; border-radius: 2%; display: block; margin-right: 2%; padding: 2%; width: 20%; float: right">
                            <a href="#" style=" color: red "><i class="fa fa-heart" aria-hidden="true"></i> Yêu thích </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6" style="padding-right: 2%">
                <div class="small-box-c" style="-webkit-box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); background: #f8f6ec; padding: 12px; height: 100%">
                    <div class="small-img-b" style="height: 50%">
                        <img class="img-responsive" src="<c:url value="/template/web/assets/images/GhenhRangTienSa.jpg"/>" alt="Hình ảnh Eo Gió" style="width: 100%; height: 100%; border-radius: 5px"/>
                    </div>
                    <div class="clearfix" style="padding-top: 2%; padding-left: 2%">
                        <div class="left-ti">
                            <h4>Ghềnh Ráng - Tiên Sa</h4>
                            <p> Mô tả ngắn </p>
                            <p> Số lượt bình luận: 52</p>
                            <a href="#"> Chi tiết </a>
                        </div>
                        <div class="prod-btn" style="background: #ffffff; border: 1px solid #f6e37c; border-radius: 2%; display: block; margin-right: 2%; padding: 2%; width: 20%; float: right">
                            <a href="#" style=" color: red "><i class="fa fa-heart" aria-hidden="true"></i> Yêu thích </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="btn-box" style="padding-top: 5%; padding-bottom: 5%; text-align: center">
            <a href="#" class="btn btn-primary">Xem thêm</a>
        </div>
    </div>
</section>
<!--End section most comment place-->

<section>
    <div class="computers_section layout_padding">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Gợi ý địa danh cho bạn:</h2>
            </div>
        </div>

        <div class="container">
            <h1 class="womans_taital" style="text-align: center; padding-bottom: 5%">Bãi tắm Quy Nhơn</h1>
            <div class="womans_section_2" >
                <div class="row">
                    <div class="col-md-6" style="margin-top: 15%; background-color: #dcefe3; height: 20%; border-radius: 5px; padding-top: 2%">
                        <p class="Get_offer_text">Biển Quy Nhơn hiền hòa nhưng cũng đầy “sôi nổi”, có thể ví như một thiếu nữ miền biển, mộc mạc chân chất mà vẫn đầy vui tươi.</p>
                        <div class="btn-box" style="padding-top: 5%; padding-bottom: 5%; text-align: center">
                            <a href="#" class="btn btn-primary">Chi tiết</a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="image_4"><img style="border-radius: 5px; margin-left: 1%" src="<c:url value="/template/web/assets/images/BaiTamQuyNhon.jpg"/>"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

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
