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
<section class="probootstrap_section">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Những địa danh được yêu thích nhất</h2>
            </div>
        </div>
    </div>
</section>


<section class="probootstrap-section-half d-md-flex" id="section-about">
    <div class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(<c:url value="/template/web/assets/images/BaiTamHoangHau.jpg"/>)"></div>
    <div class="probootstrap-text">
        <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight">
            <h2 class="heading mb-4">${model1.title}</h2>
            <p>${model1.shortDescription}</p>
            <p>Số lượt yêu thích: 205</p>
            <p>Số lượt bình luận: 121</p>
            <p><a href="#" class="btn btn-primary">Xem chi tiết</a></p>
        </div>
    </div>
</section>

<section class="probootstrap-section-half d-md-flex">
    <div class="probootstrap-image order-2 probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(<c:url value="/template/web/assets/images/ThapDoi.png"/>)"></div>
    <div class="probootstrap-text order-1">
        <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft">
            <h2 class="heading mb-4">${model2.title}</h2>
            <p>${model2.shortDescription}</p>
            <p>Số lượt yêu thích: 205</p>
            <p>Số lượt bình luận: 121</p>
            <p><a href="#" class="btn btn-primary">Xem thêm chi tiết</a></p>
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
                    <p class="lead mb-4"><em>Tháng 7 năm 1471, vua Lê cho lập phủ Hoài Nhơn gồm 3 huyện là: Bồng Sơn, Phù Ly và Tuy Viễn. Từ đó người Việt bắt đầu tiến vào sinh sống trên vùng đất Bình Định ngày nay. Năm 1490 (chưa đầy 20 năm sau), theo Thiên nam dư hạ tập cho biết: dưới thời Hồng Đức, Phủ Hoài Nhơn có 19 tổng và 100 xã.

                        Năm 1570, Nguyễn Hoàng, người được vua Lê cử trấn nhậm hai xứ Thuận Hóa và Quảng Nam lúc bấy giờ có cả phủ Hoài Nhơn.

                        Năm 1602, chúa Nguyễn Hoàng cho đổi phủ Hoài Nhơn thành phủ Quy Nhơn.

                        Năm 1651, dưới thời Nguyễn Phúc Tần, chúa cho đổi phủ Hoài Nhơn thành phủ Quy Ninh. Năm 1702, chúa Nguyễn Phúc Khoát cho lấy lại tên cũ là Quy Nhơn và vẫn được gọi suốt thời kỳ Tây Sơn. Năm 1744, chúa Nguyễn Phúc Khoát đặt các đạo làm dinh, nhưng cấp phủ vẫn giữ nguyên. Phủ Quy Nhơn vẫn thuộc về dinh Quảng Nam, đặt các chức tuần phủ và khám lý để cai trị. Phủ lỵ được dời ra phía Bắc thành Đồ Bàn, đóng tại thôn Châu Thành (nay thuộc xã Nhơn Thành, An Nhơn).

                        Từ thời các chúa Nguyễn, ở đàng Trong nói chung, Bình Định nói riêng đã có sự phân hóa giàu nghèo, địa vị khác nhau và các tầng lớp trong xã hội. Đặc biệt vào đầu thế kỷ XVII, vấn đề trên càng trở nên mâu thuẫn sâu sắc. Cho đến trước cuộc khởi nghĩa nông dân Tây Sơn 1771, ở Bình Định đã nổ ra nhiều cuộc khởi nghĩa nông dân, trong đó tiêu biểu là cuộc khởi nghĩa của Chàng Lía: cướp của nhà giàu, chia cho dân nghèo, trừng phạt quan lại hống hách bức hiếp dân. Nhưng tồn tại chẳng được bao lâu, cuộc khởi nghĩa của Lía bị thất bại.</em></p>
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
                <h2 class="display-4 border-bottom probootstrap-section-heading">Những địa điểm được bình luận nhiều nhất</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">

                <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                    <div class="probootstrap-media-image" style="background-image: url(<c:url value="/template/web/assets/images/BaiTamHoangHau.jpg"/>)">
                    </div>
                    <div class="media-body">
                        <h5 class="mb-3">01. Bãi tắm Hoàng Hậu</h5>
                        <p>Bãi biển Hoàng Hậu nằm trong Ghềnh Ráng. Từ đỉnh Ghềnh Ráng có thể phóng tầm mắt nhìn rộng cả bốn bề.</p>
                    </div>
                </div>

                <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                    <div class="probootstrap-media-image" style="background-image: url(<c:url value="/template/web/assets/images/ThapDoi.png"/>)">
                    </div>
                    <div class="media-body">
                        <h5 class="mb-3">02. Tháp đôi</h5>
                        <p>Tháp có cấu trúc độc đáo gồm hai tháp nằm liền kề nhau như cặp vợ chồng quấn quýt.</p>
                    </div>
                </div>

            </div>
            <div class="col-md-6">

                <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                    <div class="probootstrap-media-image" style="background-image: url(<c:url value="/template/web/assets/images/ThapDuongLong.jpg"/>)">
                    </div>
                    <div class="media-body">
                        <h5 class="mb-3">03. Tháp Dương Long</h5>
                        <p>Ở xã Tây Bình, huyện Tây Sơn, cách TP.Quy Nhơn khoảng 50km.</p>
                    </div>
                </div>
                <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                    <div class="probootstrap-media-image" style="background-image: url(<c:url value="/template/web/assets/images/GhenhRangTienSa.jpg"/>)">
                    </div>
                    <div class="media-body">
                        <h5 class="mb-3">04. Ghềnh Ráng - Tiên Sa</h5>
                        <p>Nói tới khu du lịch Ghềnh Ráng Bình Định bạn sẽ biết thêm về một sự tích được lưu truyền cho đến tận bây giờ về địa điểm này.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
