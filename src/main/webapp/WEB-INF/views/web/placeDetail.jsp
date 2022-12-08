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
            <li class="nav-item "><a class="nav-link" href="<c:url value="/trang-chu"/> ">Đăng ký</a></li>
        </securtity:authorize>

        <securtity:authorize access="isAuthenticated()">
            <li class="nav-item "><a class="nav-link" href="<c:url value="/trang-chu"/> ">Welcome <%=SecurityUtils.getPrincipal().getFullName()%></a></li>
            <li class="nav-item "><a class="nav-link" href="<c:url value="/thoat"/> ">Đăng xuất</a></li>
        </securtity:authorize>
    </ul>

</nav>


<iframe width="100%" height="700"
                        src="https://www.youtube.com/embed/GALWvoe6VJM?start=240" title="YouTube video player"
                        frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>



<section class="probootstrap_section" id="section-feature-testimonial">
    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-12 text-center mb-5 probootstrap-animate">
                <h2 class="display-4 border-bottom probootstrap-section-heading">HÒN KHÔ</h2>
                <blockquote class="">
                    <p class="lead mb-4"><em>Đặt chân đến hòn Khô, bạn sẽ ngạc nhiên trước khung cảnh thiên nhiên quá đỗi bình yên và chưa có nhiều sự khai thác thương mại. Trong đó, điểm đặc trưng của hòn Khô là con đường dài 500m giữa biển được tạo thành khi nước rút, kết nối làng chài Nhơn Hải và hòn đảo này.</em></p>
                    <p class="probootstrap-author">
                        <a href="https://probootstrap.com/" target="_blank">
                            <img src="/template/web/assets/video/angelo.jpg" alt="Free Template by ProBootstrap.com" class="rounded-circle">
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
                <h2 class="display-4 border-bottom probootstrap-section-heading">Một </h2>
            </div>
        </div>
    </div>
</section>

<section class="probootstrap-section-half d-md-flex">
    <div class="probootstrap-image order-2 probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(<c:url value="/template/web/assets/images/img_3.jpg"/>)"></div>
    <div class="probootstrap-text order-1">
        <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft">
            <h2 class="heading mb-4">Mũi vi rồng</h2>
            <p>Mũi Vi Rồng hay còn tên ngắn gọn là Mũi Rồng, truyền thuyết kể lại rằng trước kia núi này vẫn còn nguyên một khối, có hình dạng giống như vi cá chép nên khiến người dân liên tưởng đến ngọn núi đá có vảy rồng và gọi là “Đá Vảy Rồng”. Cao
                Biển – một viên tướng thời ấy – thấy ngọn núi có nhiều linh khí kết tụ cho nên đã phù phép chém đứt vảy rồng đề trừ khử cái xấu – trong lúc ông đang đi tìm vùng đất vượng khí. Khi chém thì máu rồng đổ xuống, đọng lại thành nhiều hòn
                đá son nhỏ lẫn trong những bãi cát gần đấy. Nếu đi dạo trên cát sẽ có lúc bạn vô tình thấy những viên đá màu đỏ son thì đó chính là máu rồng đọng lại như truyền thuyết nói đến đó.</p>
            <p><a href="#" class="btn btn-primary">Xem thêm</a></p>
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
