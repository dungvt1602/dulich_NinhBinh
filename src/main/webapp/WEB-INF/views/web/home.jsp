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
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- bootstrap css -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/template/web/assets/css/bootstrap/bootstrap.min.css"/> ">
    <!-- style css -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/template/web/assets/css/style.css"/>">
    <!-- Responsive-->
    <link rel="stylesheet" href="<c:url value="/template/web/assets/css/responsive.css"/>">
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="<c:url value="/template/web/assets/css/jquery.mCustomScrollbar.min.css"/>">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <title>Trang chủ</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark probootstrap_navbar" id="probootstrap-navbar">
    <div class="container">
        <a class="navbar-brand" href="<c:url value="/trang-chu"/>">BINH DINH - VIET NAM</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-menu" aria-controls="probootstrap-menu" aria-expanded="false" aria-label="Toggle navigation">
            <span><i class="ion-navicon"></i></span>
        </button>
        <div style="width: 10%">
            <form class="navbar-form navbar-left web-sh">
                <div class="form">
                    <input type="text" class="form-control" placeholder="Search place ...">
                </div>
            </form>
        </div>
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

<!-- BEGIN section -->
<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('<c:url value="/template/web/assets/images/bg_1.jpg"/>');" data-stellar-background-ratio="0.5" id="section-home">
    <div class="overlay"></div>
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md">
                <h2 class="heading mb-2 display-4 font-light probootstrap-animate">Bình Định có núi Vọng Phu Có Đầm Thị Nại có Cù Lao xanh.</h2>
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<!-- BEGIN section top 5 place  -->
<section style="padding-top: 5%">
    <div class="row text-center mb-5 probootstrap-animate">
        <div class="col-md-12">
            <h2 class="display-4 border-bottom probootstrap-section-heading">Top 5 địa danh được yêu thích nhất:</h2>
        </div>
    </div>
    <div id="my_slider" class="carousel slide" data-ride="carousel" style="background-color: #e1e8dc; padding-top: 3%; padding-bottom: 3%; border-radius: 10px">
        <div class="carousel-inner" style="width: 70%; margin-left: 15%">
            <div class="carousel-item active">
                <div class="container">
                    <div class="probootstrap-section-half d-md-flex">
                        <div class="probootstrap-image probootstrap-animate">
                            <div class="image_1"><img src="<c:url value="/template/web/assets/images/BaiTamHoangHau.jpg"/>" style="width:100%; border-radius: 5px"></div>
                        </div>
                        <div class="probootstrap-text" style="padding-left: 2%; padding-bottom: 2%; background-color: #e1e8dc">
                            <h1 class="banner_taital">Bãi Tắm Hoàng Hậu</h1>
                            <p> Bãi tắm Hoàng Hậu được thiên nhiên ưu ái ban tặng cho vẻ đẹp nên thơ, với địa thế thuận lợi, gần các khu nghỉ dưỡng resort nên nó đã trở thành một trong những địa điểm thu hút khách du lịch trong và ngoài nước đến. Đây được coi là một trong những điểm đến hàng đầu ở Bình Định. Đây là bãi tắm tuyệt đẹp và còn giữ nguyên được vẻ đẹp hoang sơ hùng vĩ của mình.</p>
                            <p> Lượt yêu thích: </p>
                            <p><a href="#" class="btn btn-primary">Xem thêm</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="probootstrap-section-half d-md-flex">
                        <div class="probootstrap-image probootstrap-animate">
                            <div class="image_1"><img src="<c:url value="/template/web/assets/images/ThapDoi.png"/>" style="width:100%; border-radius: 5px"></div>
                        </div>
                        <div class="probootstrap-text" style="padding-left: 2%; background-color: #e1e8dc; padding-bottom: 2%">
                            <h1 class="banner_taital">Tháp Đôi</h1>
                            <p> Trải qua nhiều biến cố lịch sử thăng trầm, tháp đã bị phá hủy nặng nề. Tuy nhiên, từ năm 1990 đến năm 1997, Tháp Đôi ở Quy Nhơn đã được trùng tu. Tôn tạo bởi những người thợ lành nghề. Cùng với sự giúp đỡ của các nhà khoa học, khảo cổ học trong nước, các chuyên gia đến từ Ba La. Và sự đầu tư của Nhà nước nên địa điểm này lấy lại được dáng vẻ gần như ban đầu. </p>
                            <p> Lượt yêu thích: 15</p>
                            <p><a href="#" class="btn btn-primary">Xem thêm</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="probootstrap-section-half d-md-flex">
                        <div class="probootstrap-image probootstrap-animate">
                            <div class="image_1"><img src="<c:url value="/template/web/assets/images/ThapDuongLong.jpg"/>" style="width:100%; border-radius: 5px"></div>
                        </div>
                        <div class="probootstrap-text" style="padding-left: 2%; background-color: #e1e8dc; padding-bottom: 2%">
                            <h1 class="banner_taital">Tháp Dương Long</h1>
                            <p> Ở xã Tây Bình, huyện Tây Sơn, cách TP.Quy Nhơn khoảng 50km, được xây dựng vào cuối thế ki XII, đây là thời kỳ phát triển rực rỡ nhất của nền văn hóa Champa. Cụm tháp này gồm ba tháp: Tháp giữa cao 42m, tháp Nam cao 36m và tháp Bắc cao 34m. Phần thân của các tháp xây bằng gạch, các góc được ghép bởi những tảng đá lớn chạm trổ công phu. </p>
                            <p> Lượt yêu thích: 6</p>
                            <p><a href="#" class="btn btn-primary">Xem thêm</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <a class="carousel-control-prev btn btn-primary" href="#my_slider" role="button" data-slide="prev" style=" width: 10%; margin-top: 15%; height: 15%; margin-left: 2%"><h4> < Prev </h4></a>
        </div>
        <div>
            <a class="carousel-control-next btn btn-primary" href="#my_slider" role="button" data-slide="next" style="width: 10%; margin-top: 15%; height: 15%; margin-right: 2%"><h4> Next > </h4> </a>
        </div>
    </div>
</section>
<!-- END section -->

<!-- BEGIN section top 5 event  -->
<section style="padding-top: 5%">
    <div class="row text-center mb-5 probootstrap-animate">
        <div class="col-md-12">
            <h2 class="display-4 border-bottom probootstrap-section-heading">Top 5 sự kiện được quan tâm nhiều nhất:</h2>
        </div>
    </div>
    <div id="my_slider_event" class="carousel slide" data-ride="carousel" style="background-color: #e3dde7; padding-top: 3%; padding-bottom: 3%; border-radius: 10px">
        <div class="carousel-inner" style="width: 70%; margin-left: 15%">
            <div class="carousel-item active">
                <div class="container">
                    <div class="probootstrap-section-half d-md-flex">
                        <div class="probootstrap-image probootstrap-animate">
                            <div class="image_1"><img src="<c:url value="/template/web/assets/images/BaiTamHoangHau.jpg"/>" style="width:100%; border-radius: 5px"></div>
                        </div>
                        <div class="probootstrap-text" style="padding-left: 2%; padding-bottom: 2%; background-color: #e3dde7">
                            <h1 class="banner_taital">Bãi Tắm Hoàng Hậu</h1>
                            <p> Bãi tắm Hoàng Hậu được thiên nhiên ưu ái ban tặng cho vẻ đẹp nên thơ, với địa thế thuận lợi, gần các khu nghỉ dưỡng resort nên nó đã trở thành một trong những địa điểm thu hút khách du lịch trong và ngoài nước đến. Đây được coi là một trong những điểm đến hàng đầu ở Bình Định. Đây là bãi tắm tuyệt đẹp và còn giữ nguyên được vẻ đẹp hoang sơ hùng vĩ của mình.</p>
                            <p> Lượt yêu thích: </p>
                            <p><a href="#" class="btn btn-primary" style="background-color: #9b57cb ; border-color: #9b57cb">Xem thêm</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="probootstrap-section-half d-md-flex">
                        <div class="probootstrap-image probootstrap-animate">
                            <div class="image_1"><img src="<c:url value="/template/web/assets/images/ThapDoi.png"/>" style="width:100%; border-radius: 5px"></div>
                        </div>
                        <div class="probootstrap-text" style="padding-left: 2%; background-color: #e3dde7; padding-bottom: 2%">
                            <h1 class="banner_taital">Tháp Đôi</h1>
                            <p> Trải qua nhiều biến cố lịch sử thăng trầm, tháp đã bị phá hủy nặng nề. Tuy nhiên, từ năm 1990 đến năm 1997, Tháp Đôi ở Quy Nhơn đã được trùng tu. Tôn tạo bởi những người thợ lành nghề. Cùng với sự giúp đỡ của các nhà khoa học, khảo cổ học trong nước, các chuyên gia đến từ Ba La. Và sự đầu tư của Nhà nước nên địa điểm này lấy lại được dáng vẻ gần như ban đầu. </p>
                            <p> Lượt yêu thích: 15</p>
                            <p><a href="#" class="btn btn-primary" style="background-color: #9b57cb; border-color: #9b57cb">Xem thêm</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="probootstrap-section-half d-md-flex">
                        <div class="probootstrap-image probootstrap-animate">
                            <div class="image_1"><img src="<c:url value="/template/web/assets/images/ThapDuongLong.jpg"/>" style="width:100%; border-radius: 5px"></div>
                        </div>
                        <div class="probootstrap-text" style="padding-left: 2%; background-color: #e3dde7; padding-bottom: 2%">
                            <h1 class="banner_taital">Tháp Dương Long</h1>
                            <p> Ở xã Tây Bình, huyện Tây Sơn, cách TP.Quy Nhơn khoảng 50km, được xây dựng vào cuối thế ki XII, đây là thời kỳ phát triển rực rỡ nhất của nền văn hóa Champa. Cụm tháp này gồm ba tháp: Tháp giữa cao 42m, tháp Nam cao 36m và tháp Bắc cao 34m. Phần thân của các tháp xây bằng gạch, các góc được ghép bởi những tảng đá lớn chạm trổ công phu. </p>
                            <p> Lượt yêu thích: 6</p>
                            <p><a href="#" class="btn btn-primary" style="background-color: #9b57cb; border-color: #9b57cb">Xem thêm</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <a class="carousel-control-prev btn btn-primary" href="#my_slider_event" role="button" data-slide="prev" style=" width: 10%; margin-top: 15%; height: 15%; margin-left: 2%; background-color: #a572c9; border-color: #a572c9"><h4> < Prev </h4></a>
        </div>
        <div>
            <a class="carousel-control-next btn btn-primary" href="#my_slider_event" role="button" data-slide="next" style="width: 10%; margin-top: 15%; height: 15%; margin-right: 2%; background-color: #a572c9; border-color: #a572c9"><h4> Next > </h4> </a>
        </div>
    </div>
</section>
<!-- END section -->

<!-- BEGIN section top 5 food  -->
<section style="padding-top: 5%">
    <div class="row text-center mb-5 probootstrap-animate">
        <div class="col-md-12">
            <h2 class="display-4 border-bottom probootstrap-section-heading">Top 5 món ăn được yêu thích nhất:</h2>
        </div>
    </div>
    <div id="my_slider_food" class="carousel slide" data-ride="carousel" style="background-color: #e5dbd9; padding-top: 3%; padding-bottom: 3%; border-radius: 10px">
        <div class="carousel-inner" style="width: 70%; margin-left: 15%">
            <div class="carousel-item active">
                <div class="container">
                    <div class="probootstrap-section-half d-md-flex">
                        <div class="probootstrap-image probootstrap-animate">
                            <div class="image_1"><img src="<c:url value="/template/web/assets/images/BaiTamHoangHau.jpg"/>" style="width:100%; border-radius: 5px"></div>
                        </div>
                        <div class="probootstrap-text" style="padding-left: 2%; padding-bottom: 2%; background-color: #e5dbd9">
                            <h1 class="banner_taital">Bãi Tắm Hoàng Hậu</h1>
                            <p> Bãi tắm Hoàng Hậu được thiên nhiên ưu ái ban tặng cho vẻ đẹp nên thơ, với địa thế thuận lợi, gần các khu nghỉ dưỡng resort nên nó đã trở thành một trong những địa điểm thu hút khách du lịch trong và ngoài nước đến. Đây được coi là một trong những điểm đến hàng đầu ở Bình Định. Đây là bãi tắm tuyệt đẹp và còn giữ nguyên được vẻ đẹp hoang sơ hùng vĩ của mình.</p>
                            <p> Lượt yêu thích: </p>
                            <p><a href="#" class="btn btn-primary" style="background-color: #f6957d ; border-color: #f6957d">Xem thêm</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="probootstrap-section-half d-md-flex">
                        <div class="probootstrap-image probootstrap-animate">
                            <div class="image_1"><img src="<c:url value="/template/web/assets/images/ThapDoi.png"/>" style="width:100%; border-radius: 5px"></div>
                        </div>
                        <div class="probootstrap-text" style="padding-left: 2%; background-color: #e5dbd9; padding-bottom: 2%">
                            <h1 class="banner_taital">Tháp Đôi</h1>
                            <p> Trải qua nhiều biến cố lịch sử thăng trầm, tháp đã bị phá hủy nặng nề. Tuy nhiên, từ năm 1990 đến năm 1997, Tháp Đôi ở Quy Nhơn đã được trùng tu. Tôn tạo bởi những người thợ lành nghề. Cùng với sự giúp đỡ của các nhà khoa học, khảo cổ học trong nước, các chuyên gia đến từ Ba La. Và sự đầu tư của Nhà nước nên địa điểm này lấy lại được dáng vẻ gần như ban đầu. </p>
                            <p> Lượt yêu thích: 15</p>
                            <p><a href="#" class="btn btn-primary" style="background-color: #f6957d; border-color: #f6957d">Xem thêm</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="probootstrap-section-half d-md-flex">
                        <div class="probootstrap-image probootstrap-animate">
                            <div class="image_1"><img src="<c:url value="/template/web/assets/images/ThapDuongLong.jpg"/>" style="width:100%; border-radius: 5px"></div>
                        </div>
                        <div class="probootstrap-text" style="padding-left: 2%; background-color: #e5dbd9; padding-bottom: 2%">
                            <h1 class="banner_taital">Tháp Dương Long</h1>
                            <p> Ở xã Tây Bình, huyện Tây Sơn, cách TP.Quy Nhơn khoảng 50km, được xây dựng vào cuối thế ki XII, đây là thời kỳ phát triển rực rỡ nhất của nền văn hóa Champa. Cụm tháp này gồm ba tháp: Tháp giữa cao 42m, tháp Nam cao 36m và tháp Bắc cao 34m. Phần thân của các tháp xây bằng gạch, các góc được ghép bởi những tảng đá lớn chạm trổ công phu. </p>
                            <p> Lượt yêu thích: 6</p>
                            <p><a href="#" class="btn btn-primary" style="background-color: #f6957d; border-color: #f6957d">Xem thêm</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <a class="carousel-control-prev btn btn-primary" href="#my_slider_food" role="button" data-slide="prev" style=" width: 10%; margin-top: 15%; height: 15%; margin-left: 2%; background-color: #f37859; border-color: #f37859"><h4> < Prev </h4></a>
        </div>
        <div>
            <a class="carousel-control-next btn btn-primary" href="#my_slider_food" role="button" data-slide="next" style="width: 10%; margin-top: 15%; height: 15%; margin-right: 2%; background-color: #f37859; border-color: #f37859"><h4> Next > </h4> </a>
        </div>
    </div>
</section>
<!-- END section -->

<!-- BEGIN section top 5 hotel  -->
<section style="padding-top: 5%">
    <div class="row text-center mb-5 probootstrap-animate">
        <div class="col-md-12">
            <h2 class="display-4 border-bottom probootstrap-section-heading">Top 5 khách sạn được yêu thích nhất:</h2>
        </div>
    </div>
    <div id="my_slider_hotel" class="carousel slide" data-ride="carousel" style="background-color: #eaf4f6; padding-top: 3%; padding-bottom: 3%; border-radius: 10px">
        <div class="carousel-inner" style="width: 70%; margin-left: 15%">
            <div class="carousel-item active">
                <div class="container">
                    <div class="probootstrap-section-half d-md-flex">
                        <div class="probootstrap-image probootstrap-animate">
                            <div class="image_1"><img src="<c:url value="/template/web/assets/images/BaiTamHoangHau.jpg"/>" style="width:100%; border-radius: 5px"></div>
                        </div>
                        <div class="probootstrap-text" style="padding-left: 2%; padding-bottom: 2%; background-color: #eaf4f6">
                            <h1 class="banner_taital">Bãi Tắm Hoàng Hậu</h1>
                            <p> Bãi tắm Hoàng Hậu được thiên nhiên ưu ái ban tặng cho vẻ đẹp nên thơ, với địa thế thuận lợi, gần các khu nghỉ dưỡng resort nên nó đã trở thành một trong những địa điểm thu hút khách du lịch trong và ngoài nước đến. Đây được coi là một trong những điểm đến hàng đầu ở Bình Định. Đây là bãi tắm tuyệt đẹp và còn giữ nguyên được vẻ đẹp hoang sơ hùng vĩ của mình.</p>
                            <p> Lượt yêu thích: </p>
                            <p><a href="#" class="btn btn-primary" style="background-color: #83e2f9 ; border-color: #83e2f9">Xem thêm</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="probootstrap-section-half d-md-flex">
                        <div class="probootstrap-image probootstrap-animate">
                            <div class="image_1"><img src="<c:url value="/template/web/assets/images/ThapDoi.png"/>" style="width:100%; border-radius: 5px"></div>
                        </div>
                        <div class="probootstrap-text" style="padding-left: 2%; background-color: #eaf4f6; padding-bottom: 2%">
                            <h1 class="banner_taital">Tháp Đôi</h1>
                            <p> Trải qua nhiều biến cố lịch sử thăng trầm, tháp đã bị phá hủy nặng nề. Tuy nhiên, từ năm 1990 đến năm 1997, Tháp Đôi ở Quy Nhơn đã được trùng tu. Tôn tạo bởi những người thợ lành nghề. Cùng với sự giúp đỡ của các nhà khoa học, khảo cổ học trong nước, các chuyên gia đến từ Ba La. Và sự đầu tư của Nhà nước nên địa điểm này lấy lại được dáng vẻ gần như ban đầu. </p>
                            <p> Lượt yêu thích: 15</p>
                            <p><a href="#" class="btn btn-primary" style="background-color: #83e2f9; border-color: #83e2f9">Xem thêm</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="probootstrap-section-half d-md-flex">
                        <div class="probootstrap-image probootstrap-animate">
                            <div class="image_1"><img src="<c:url value="/template/web/assets/images/ThapDuongLong.jpg"/>" style="width:100%; border-radius: 5px"></div>
                        </div>
                        <div class="probootstrap-text" style="padding-left: 2%; background-color: #eaf4f6; padding-bottom: 2%">
                            <h1 class="banner_taital">Tháp Dương Long</h1>
                            <p> Ở xã Tây Bình, huyện Tây Sơn, cách TP.Quy Nhơn khoảng 50km, được xây dựng vào cuối thế ki XII, đây là thời kỳ phát triển rực rỡ nhất của nền văn hóa Champa. Cụm tháp này gồm ba tháp: Tháp giữa cao 42m, tháp Nam cao 36m và tháp Bắc cao 34m. Phần thân của các tháp xây bằng gạch, các góc được ghép bởi những tảng đá lớn chạm trổ công phu. </p>
                            <p> Lượt yêu thích: 6</p>
                            <p><a href="#" class="btn btn-primary" style="background-color: #83e2f9; border-color: #83e2f9">Xem thêm</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <a class="carousel-control-prev btn btn-primary" href="#my_slider_hotel" role="button" data-slide="prev" style=" width: 10%; margin-top: 15%; height: 15%; margin-left: 2%; background-color: #5ed7f6; border-color: #5ed7f6"><h4> < Prev </h4></a>
        </div>
        <div>
            <a class="carousel-control-next btn btn-primary" href="#my_slider_hotel" role="button" data-slide="next" style="width: 10%; margin-top: 15%; height: 15%; margin-right: 2%; background-color: #5ed7f6; border-color: #5ed7f6"><h4> Next > </h4> </a>
        </div>
    </div>
</section>
<!-- END section -->

<!-- BEGIN section -->
<section class="probootstrap_section">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Top 5 địa danh được yêu thích nhất:</h2>
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<!-- BEGIN section: TOP 5 LOVED PLACE -->
<c:forEach var="item" items="${lists}" begin="0" end="4">
    <c:url value="/place_detail" var="redirect">
        <c:param name="place_id" value="${item.id}"/>
    </c:url>
    <section class="probootstrap-section-half d-md-flex" id="section-about" style="border: #a9d57c solid 1px">
        <div class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(<c:url value="/template/web/assets/images/${item.thumbnail}"/>)"></div>
        <div class="probootstrap-text">
            <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight">
                <h2 class="heading mb-4">${item.title}</h2>
                <p>${item.shortDescription}</p>
                <c:url value="/place_detail" var="detail1">
                    <c:param name="place_id" value="${item.id}"/>
                </c:url>
                <p>Lượt yêu thích: </p>
                <p><a href="${detail1}" class="btn btn-primary">Xem thêm</a></p>
            </div>
        </div>
        <div>
            <hr class="rule">
        </div>
    </section>
</c:forEach>
<!-- END section: TOP 5 LOVED PLACE -->

<!-- BEGIN section -->
<section class="probootstrap_section" >
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Top 5 sự kiện nổi bật sắp diễn ra:</h2>
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<!-- BEGIN section: TOP 5 NEW EVENT -->
<c:forEach var="item" items="${lists}" begin="0" end="4">
    <c:url value="/place_detail" var="redirect">
        <c:param name="place_id" value="${item.id}"/>
    </c:url>
    <section class="probootstrap-section-half d-md-flex" style="border: #a9d57c solid 1px">
        <div class="probootstrap-image order-2 probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(<c:url value="/template/web/assets/images/${item.thumbnail}"/>)"></div>
        <div class="probootstrap-text order-1">
            <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft">
                <h2 class="heading mb-4">${item.title}</h2>
                <p>${item.shortDescription}</p>
                <c:url value="/place_detail" var="detail">
                    <c:param name="place_id" value="${item.id}"/>
                </c:url>
                <p><a href="${detail}" class="btn btn-primary">Xem thêm</a></p>
            </div>
        </div>
    </section>
</c:forEach>
<!-- END section: TOP 5 NEW EVENT -->

<!--
<section class="probootstrap-section-half d-md-flex">
    <div class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(<c:url value="/template/web/assets/images/${model3.thumbnail}"/>)"></div>
    <div class="probootstrap-text">
        <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight">
            <h2 class="heading mb-4">${model3.title}</h2>
            <p>${model3.shortDescription}</p>
            <c:url value="/place_detail" var="detail3">
                <c:param name="place_id" value="${model3.id}"/>
            </c:url>
            <p><a href="${detail3}" class="btn btn-primary">Xem thêm</a></p>
        </div>
    </div>
</section>
-->
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
