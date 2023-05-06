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


<section class="probootstrap-cover overflow-hidden relative"  style="background-image: url('<c:url value="/template/web/assets/images/bg_ks.png"/>');" data-stellar-background-ratio="0.5" id="section-home">
    <div class="overlay"></div>
    <div class="container">
        <div class="row align-items-center text-center">
            <div class="col-md">
                <h2 class="heading mb-2 display-4 font-light probootstrap-animate">TOP 5 KHÁCH SẠN ĐƯỢC YÊU THÍCH NHẤT</h2>
                <p class="lead mb-5 probootstrap-animate">
            </div>
        </div>
    </div>

</section>
<!-- END section -->

<!-- BEGIN section -->
<section class="probootstrap-section-half d-md-flex" >
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate" style="padding-top: 5%">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Top Khách sạn được yêu thích nhất</h2>
            </div>
        </div>

        <div class="products-catagories-area clearfix row">
            <div class="">

                <!-- Single Catagory -->
                <div class="single-products-catagory clearfix" style="padding-bottom: 5%">
                    <a href="shop.html">
                        <img src="<c:url value="/template/web/assets/images/FleurDeLys.png"/>" alt="" style="height: 70%; width: 70%; padding: 2px; border-radius: 5px; margin-left: 15%; margin-right: 5%">
                        <!-- Hover Content -->
                        <div class="hover-content">
                            <div class="line"></div>
                            <h6 style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 40%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center; width: 20%">Top 1</h6>
                            <h4 class="title" style="padding-top: 2%; text-align: center">Fleur De Lys hotel</h4>
                        </div>
                    </a>
                </div>

                <!-- Single Catagory -->
                <div class="single-products-catagory clearfix" style="padding-bottom: 5%">
                    <a href="shop.html">
                        <img src="<c:url value="/template/web/assets/images/Raon.jpg"/>" alt="" style="height: 70%; width: 70%; padding: 2px; border-radius: 5px; margin-left: 15%; margin-right: 5%">
                        <!-- Hover Content -->
                        <div class="hover-content">
                            <div class="line"></div>
                            <h6 style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 40%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center; width: 20%">Top 2</h6>
                            <h4 class="title" style="padding-top: 2%; text-align: center">Raon Hotel</h4>
                        </div>
                    </a>
                </div>

                <!-- Single Catagory -->
                <div class="single-products-catagory clearfix" style="padding-bottom: 5%">
                    <a href="shop.html">
                        <img src="<c:url value="/template/web/assets/images/Kadupul.jpg"/>" alt="" style="height: 70%; width: 70%; padding: 2px; border-radius: 5px; margin-left: 15%; margin-right: 5%">
                        <!-- Hover Content -->
                        <div class="hover-content" >
                            <div class="line"></div>
                            <h6 style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 40%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center; width: 20%">Top 3</h6>
                            <h4 class="title" style="padding-top: 2%; text-align: center">Kadupul Hotel</h4>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<!-- Begin section -->
<section>
    <div class="container  ">
        <div class="row text-center mb-5 probootstrap-animate" style="padding-top: 5%">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Top Khách sạn được đánh giá nhiều nhất</h2>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 col-lg-5 ">
                <div class="img-box">
                    <img src="<c:url value="/template/web/assets/images/FleurDeLys.png"/>" alt="" style="border-radius: 5px; height: 100%; width: 100%">
                </div>
            </div>
            <div class="col-md-6 col-lg-7">
                <div class="detail-box" style="margin-top: 5%; margin-left: 10%; padding-top: 5%; padding-bottom: 5%; padding-left: 3%; background-color: #f7f8ef; border-radius: 5px">
                    <div class="heading_container">
                        <h2>
                            Fleur De Lys hotel
                        </h2>
                    </div>
                    <p>
                        Là khách sạn 4 sao đạt chuẩn quốc tế với 250 phòng có tầm nhìn hướng biển tuyệt đẹp, tại Fleur de Lys Quy Nhơn du khách không chỉ được trải nghiệm những dịch vụ đa dạng, tiện nghi, mà còn được phục vụ bởi những nhân viên chuyên nghiệp, tận tâm nhất.
                    </p>
                    <a href="">
                        Chi tiết
                    </a>
                </div>
            </div>
        </div>
        <div class="row" style="padding-top: 3%">
            <div class="col-md-6 col-lg-7">
                <div class="detail-box" style="margin-top: 5%; margin-left: 10%; padding-top: 5%; padding-bottom: 5%; padding-left: 3%; background-color: #f7f8ef; border-radius: 5px">
                    <div class="heading_container">
                        <h2>
                            Mira Bãi Xếp - Quy Nhơn
                        </h2>
                    </div>
                    <p>
                        Tọa lạc tại Bãi Xép - Phường Ghềnh Ráng - TP Quy Nhơn. Homestay nằm cách biển chỉ 5m, với phong cách thiết kế chủ yếu là Tre, Nứa và các vật liệu đậm chất Mộc đảm bảo sẽ mang lại cho bạn cảm giác thư giãn cũng như hàng loạt không gian sống ảo cực đẹp chỉ có riêng tại Mira Các phòng và suite có kiểu trang trí cổ điển, ánh sáng mặt trời ấm áp và sự hài hòa giữa không gian trong nhà-ngoài trời.
                    </p>
                    <a href="">
                        Chi tiết
                    </a>
                </div>
            </div>
            <div class="col-md-6 col-lg-5 ">
                <div class="img-box">
                    <img src="<c:url value="/template/web/assets/images/MiraHotel.jpg"/>" alt="" style="border-radius: 5px; height: 100%; width: 100%">
                </div>
            </div>
        </div>
        <div class="row" style="padding-top: 3%">
            <div class="col-md-6 col-lg-5 ">
                <div class="img-box">
                    <img src="<c:url value="/template/web/assets/images/Raon.jpg"/>" alt="" style="border-radius: 5px; height: 100%; width: 100%">
                </div>
            </div>
            <div class="col-md-6 col-lg-7">
                <div class="detail-box" style="margin-top: 5%; margin-left: 10%; padding-top: 5%; padding-bottom: 5%; padding-left: 3%; background-color: #f7f8ef; border-radius: 5px">
                    <div class="heading_container">
                        <h2>
                            Raon Hotel
                        </h2>
                    </div>
                    <p>
                        Nằm ở thành phố Quy Nhơn, cách Bãi biển Quy Nhơn 600 m, RAON Hotel cung cấp chỗ nghỉ với hồ bơi ngoài trời, chỗ đỗ xe riêng miễn phí và sân hiên. Khách sạn 4 sao này có dịch vụ tiền sảnh và bàn đặt tour.
                    </p>
                    <a href="">
                        Chi tiết
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<section class="probootstrap_section">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Một số khách sạn khác</h2>
            </div>
        </div>

        <div class="row probootstrap-animate">
            <div class="col-md-12">
                <div class="owl-carousel js-owl-carousel">
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-teatro-de-la-caridad"></span>
                        <em>FLEUR DE LYS HOTEL</em>
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
