<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/11/2022
  Time: 5:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix="securtity" uri="http://www.springframework.org/security/tags" %>
<%@ page import= "com.laptrinhjavaweb.util.SecurityUtils" %>
<html>
<head>
    <title>Sự kiện</title>
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
                <li class="nav-item active"><a class="nav-link" href="<c:url value="/event"/>">Sự kiện</a></li>
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

<section class="probootstrap-cover overflow-hidden relative"  style="background-image: url('https://noitoiseden.com/wp-content/uploads/2018/09/anh-thien-nhien-full-hd-2k-4k.jpg');" data-stellar-background-ratio="0.5" id="section-home">
    <div class="overlay"></div>
    <div class="container">
        <div class="row align-items-center text-center">
            <div class="col-md">
                <h2 class="heading mb-2 display-4 font-light probootstrap-animate">Những sự kiện nổi bật hằng tuần</h2>
                <p class="lead mb-5 probootstrap-animate"></p>
                <a href="https://themewagon.com/theme_tag/free/" target="_blank" role="button" class="btn btn-primary p-3 mr-3 pl-5 pr-5 text-uppercase d-lg-inline d-md-inline d-sm-block d-block mb-3">Tìm hiểu tại đây</a>
                </p>
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<!-- Loved event Section Begin -->
<section class="probootstrap_section">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Top sự kiện được yêu thích nhất</h2>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-6 p-0">
                <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate" style="border-radius: 5px; background-color: #e3dde7">
                    <div class="probootstrap-media-image" style="background-image: url(https://scontent.iocvnpt.com/resources/portal//Images/BDH/adminbdh/hinhsukien/unnamed_443811906.jpg); border-radius: 5px"></div>
                    <div class="media-body">
                        <h5 class="mb-3">Chương trình “Đêm võ đài Bình Định” năm 2022</h5>
                        <p>ĐÊM VÕ ĐÀI BÌNH ĐỊNH - HÀNH TRÌNH CỦA MỘT THƯƠNG HIỆU Năm 2016 được sự cho phép của UBND tỉnh Bình Định, Sở Văn hóa và Thể thao tổ chức chương trình Đêm Võ đài xứ Nẫu, nhằm xây dựng, làm nổi bật hình ảnh các võ</p>
                        <p><a href="#" class="btn btn-primary" style="background-color: #9b57cb ; border-color: #9b57cb">Xem thêm</a></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate" style="border-radius: 5px; background-color: #e3dde7">
                    <div class="probootstrap-media-image" style="background-image: url(https://scontent.iocvnpt.com/resources/portal//Images/BDH/adminbdh/hinhsukien/marathon/8_1613982901_500x300_510217100.jpg); border-radius: 5px"></div>
                    <div class="media-body">
                        <h5 class="mb-3">VnExpress Marathon tại Quy Nhơn năm nay</h5>
                        <p>Hiện nay, vận động viên có thể đăng ký hai cự ly 21km và 42km, mức giá lần lượt là 950.000 đồng và 1,1 triệu đồng. Đây là cơ hội cuối cùng để những người yêu chạy bộ có thể đăng ký tham gia sự kiện thể thao sôi động này.</p>
                        <p><a href="#" class="btn btn-primary" style="background-color: #9b57cb ; border-color: #9b57cb">Xem thêm</a></p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-6 p-0">
                <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate" style="border-radius: 5px; background-color: #e3dde7; height: 100%">
                    <div class="probootstrap-media-image" style="background-image: url('<c:url value="/template/web/assets/images/LeHoiDuaThuyen.jpg"/>'); border-radius: 5px; height: 100%; width: 50%"></div>
                    <div class="media-body">
                        <div style="height: 70%">
                            <h5 class="mb-3">Lễ hội Đua Thuyền</h5>
                            <p>Lễ hội này được tổ chức nhằm thể hiện sức mạnh của những ngư dân vùng sông nước, đem lại niềm vui, xóa đi bao nỗi nhọc nhằn của một năm lao động vất vả.</p>
                        </div>
                        <div style="display: block; height: 30%">
                            <a href="#" class="btn btn-primary" style="background-color: #9b57cb ; border-color: #9b57cb; float:bottom;">Xem thêm</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate" style="border-radius: 5px; background-color: #e3dde7; height: 100%">
                    <div class="image_1 overlay probootstrap-cover" style="background-image: url('<c:url value="/template/web/assets/images/LeHoiChuaOngNui.jpg"/>'); border-radius: 5px; height: 100%; width: 50%"></div>
                    <div class="media-body" style="height: 100%">
                        <div style="height: 70%">
                            <h5 class="mb-3">Lễ hội Chùa Ông Núi</h5>
                            <p>Nơi đây không chỉ là di tích lịch sử – văn hóa cấp quốc gia, địa chỉ tâm linh mà còn là chốn thăm quan hữu tình, điểm du lịch hấp dẫn.</p>
                        </div>
                        <div style="display: block; height: 30%">
                            <a href="#" class="btn btn-primary" style="background-color: #9b57cb ; border-color: #9b57cb;">Xem thêm</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Section End -->

<!-- Most comment Section Begin -->
<section class="probootstrap_section">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Top sự kiện được bình luận nhiều nhất</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4">
                <div class="item">
                    <div class="image_1 overlay probootstrap-cover" style="background-image: url('<c:url value="/template/web/assets/images/LeHoiChuaOngNui.jpg"/>'); border-radius: 5px; height: 100%; width: 100%"></div>
                    <div class="text" style="padding-top: 2%">
                        <h5><a href="#" style="height: 100%; text-align: center">Lễ hội Chùa Ông Núi</a></h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="item">
                    <div class="image_1 overlay probootstrap-cover" style="background-image: url('<c:url value="/template/web/assets/images/DemVoDai.jpg"/>'); border-radius: 5px; height: 100%; width: 100%"></div>
                    <div class="text" style="padding-top: 2%">
                        <h5><a href="#" style="height: 100%; text-align: center">Đêm võ đài - Bình Định</a></h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="item">
                    <div class="image_1 overlay probootstrap-cover" style="background-image: url('<c:url value="/template/web/assets/images/VnExpressMarathon.jpg"/>'); border-radius: 5px; height: 100%; width: 100%"></div>
                    <div class="text" style="padding-top: 2%">
                        <h5><a href="#" style="height: 100%; text-align: center">VnExpress Marathon</a></h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="item">
                    <div class="image_1 overlay probootstrap-cover" style="background-image: url('<c:url value="/template/web/assets/images/LeHoiCauNgu.jpg"/>'); border-radius: 5px; height: 100%; width: 100%"></div>
                    <div class="text" style="padding-top: 2%">
                        <h5><a href="#" style="height: 100%; text-align: center">Lễ hội Cầu Ngư</a></h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="item">
                    <div class="image_1 overlay probootstrap-cover" style="background-image: url('<c:url value="/template/web/assets/images/LeHoiDongDa.jpg"/>'); border-radius: 5px; height: 100%; width: 100%"></div>
                    <div class="text" style="padding-top: 2%">
                        <h5><a href="#" style="height: 100%; text-align: center">Lễ hội Đống Đa</a></h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="item">
                    <div class="image_1 overlay probootstrap-cover" style="background-image: url('<c:url value="/template/web/assets/images/LeHoiDuongPho1.jpg"/>'); border-radius: 5px; height: 100%; width: 100%"></div>
                    <div class="text" style="padding-top: 2%">
                        <h5><a href="#" style="height: 100%; text-align: center">Lễ hội Đường Phố</a></h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Most comment Section End -->

<!-- Recommend Event Section Begin -->
<section class="probootstrap_section">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Gợi ý cho bạn</h2>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="image_1 overlay probootstrap-cover" style="background-image: url('<c:url value="/template/web/assets/images/LeHoiDuongPho1.jpg"/>'); border-radius: 5px; height: 100%; width: 100%">
                    <div class="text-center" style="padding-top: 2%">
                        <h6><a href="#" style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 10%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center;">Lễ hội Đường Phố</a></h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="image_1 overlay probootstrap-cover" style="background-image: url('<c:url value="/template/web/assets/images/LeHoiDongDa.jpg"/>'); border-radius: 5px; height: 100%; width: 100%">
                    <div class="text-center" style="padding-top: 2%">
                        <h6><a href="#" style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 10%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center;">Lễ hội Đống Đa</a></h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="image_1 overlay probootstrap-cover" style="background-image: url('<c:url value="/template/web/assets/images/LeHoiCauNgu.jpg"/>'); border-radius: 5px; height: 100%; width: 100%">
                    <div class="text-center" style="padding-top: 2%">
                        <h6><a href="#" style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 10%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center;">Lễ hội Cầu Ngư</a></h6>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Recommend Event Section End -->

<section class="probootstrap_section" id="section-city-guides">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Top sự kiện được yêu thích nhất</h2>
            </div>
        </div>

        <div class="row mb-3">
            <div class="col-md-6">
                <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                    <div class="probootstrap-media-image" style="background-image: url(https://scontent.iocvnpt.com/resources/portal//Images/BDH/adminbdh/hinhsukien/unnamed_443811906.jpg)"></div>
                    <div class="media-body">
                        <h5 class="mb-3">01.
                            Chương trình “Đêm võ đài Bình Định” năm 2022</h5>
                        <p>
                            ĐÊM VÕ ĐÀI BÌNH ĐỊNH - HÀNH TRÌNH CỦA MỘT THƯƠNG HIỆU Năm 2016 được sự cho phép của UBND tỉnh Bình Định, Sở Văn hóa và Thể thao tổ chức chương trình Đêm Võ đài xứ Nẫu, nhằm xây dựng, làm nổi bật hình ảnh các võ</p>
                    </div>
                </div>

                <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                    <div class="probootstrap-media-image" style="background-image: url(https://scontent.iocvnpt.com/resources/portal//Images/BDH/adminbdh/hinhsukien/marathon/8_1613982901_500x300_510217100.jpg)">
                    </div>
                    <div class="media-body">
                        <h5 class="mb-3">02. VnExpress Marathon Quy Nhon 2022</h5>
                        <p><a href="#" class="btn btn-primary">Xem thêm</a></p>
                    </div>
                </div>

            </div>
            <div class="col-md-6">

                <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                    <div class="probootstrap-media-image" style="background-image: url(https://scontent.iocvnpt.com/resources/portal//Images/BDH/adminbdh/TinTuc/lehoidothinuocman/screenshot_1599706872_350705137.png)">
                    </div>
                    <div class="media-body">
                        <h5 class="mb-3">03. Lễ hội Đô thị Nước Mặn</h5>
                        <p>Lễ hội Đô thị Nước Mặn (Lễ hội Chùa Bà Nước Mặn): Hàng năm lễ hội tổ chức trong ba ngày: ngày cuối tháng giêng âm lịch, có thể ngày 29 hay ngày 30 tùy tháng thiếu hay đủ và từ ngày 01 đến ngày 02 tháng 02 âm lịch, tại thôn A</p>
                    </div>
                </div>

                <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                    <div class="probootstrap-media-image" style="background-image: url(https://scontent.iocvnpt.com/resources/portal//Images/BDH/adminbdh/hinhsukien/linhvat/145064946_3765157203598524_2965239764912896250_o_105496391.jpg)">
                    </div>
                    <div class="media-body">
                        <h5 class="mb-3">04. Trưng bày Biểu tượng linh vật mừng năm mới Tân Sửu 2022</h5>
                        <p>Để tạo không khí vui tươi phấn khởi và phục vụ nhân dân vui xuân đón Tết cổ truyền dân tộc; đồng thời tạo điểm nhấn về du lịch tại TP.Quy Nhơn, thu hút du khách trong và ngoài tỉnh khi đến với Bình Định trong dịp xuân Tân Sửu 2021 </p>
                    </div>
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
                <h2 class="display-4 border-bottom probootstrap-section-heading">Các dịch vụ khác</h2>
            </div>
        </div>

        <div class="row probootstrap-animate">
            <div class="col-md-12">
                <div class="owl-carousel js-owl-carousel">
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-teatro-de-la-caridad"></span>
                        <em>Cá chình</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-royal-museum-of-the-armed-forces"></span>
                        <em>Bánh gai ít</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-parthenon"></span>
                        <em>Kẹo</em>
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
</body>
</html>
