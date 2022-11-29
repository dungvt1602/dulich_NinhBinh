<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/12/2022
  Time: 11:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark probootstrap_navbar" id="probootstrap-navbar">
    <div class="container">
        <a class="navbar-brand" href="/">BINH DINH - VIET NAM</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-menu" aria-controls="probootstrap-menu" aria-expanded="false" aria-label="Toggle navigation">
            <span><i class="ion-navicon"></i></span>
        </button>
        <div class="collapse navbar-collapse" id="probootstrap-menu">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a class="nav-link" href="index.html">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="city-guides.html">Địa danh</a></li>
                <li class="nav-item"><a class="nav-link" href="services.html">Ẩm thực</a></li>
                <li class="nav-item"><a class="nav-link" href="travel.html">Khách sạn</a></li>
                <li class="nav-item"><a class="nav-link" href="contact.html">Thông tin liên hệ</a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- END nav -->


<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5" id="section-home">
    <div class="overlay"></div>
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md">
                <h2 class="heading mb-2 display-4 font-light probootstrap-animate">Bình Định có núi Vọng Phu Có Đầm Thị Nại có Cù Lao xanh.</h2>
                <p class="lead mb-5 probootstrap-animate">
                </p>
                <a href="onepage.html" role="button" class="btn btn-primary p-3 mr-3 pl-5 pr-5 text-uppercase d-lg-inline d-md-inline d-sm-block d-block mb-3">See OnePage Verion</a>
                </p>
            </div>
            <div class="col-md probootstrap-animate">
                <form action="#" class="probootstrap-form">
                    <div class="form-group">
                        <div class="row mb-3">
                            <div class="col-md">
                                <div class="form-group">
                                    <label for="ten_dang_nhap">Tên đăng nhập</label>
                                    <label for="ten_dang_nhap" style="width: 100%;">
                                        <input type="text" class="form-control" id="ten_dang_nhap" placeholder="User name">
                                    </label>
                                </div>
                            </div>
                            <div class="col-md">
                                <div class="form-group">
                                    <label for="mat_khau">Mật khẩu</label>
                                    <label for="mat_khau" style="width: 100%;">
                                        <input type="password" class="form-control" id="mat_khau" placeholder="Password">
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md">
                                <input type="submit" value="Đăng nhập" class="btn btn-primary btn-block">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<!-- END section -->


<section class="probootstrap_section" id="section-feature-testimonial">
    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-12 text-center mb-5 probootstrap-animate">
                <h2 class="display-4 border-bottom probootstrap-section-heading">GHỀNH RÁNG - TIÊN SA</h2>
                <img src="./assets/images/img_2.jpg" alt="" class="img-thumbnail">
                <div class="row mb-4">
                    <div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
                        <a href="#" class="probootstrap-thumbnail">
                            <img src="assets/images/grts1.jpg" class="img-fluid">
                            <div class="probootstrap-text">
                                <h3>GHỀNH RÁNG - TIÊN SA</h3>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
                        <a href="#" class="probootstrap-thumbnail">
                            <img src="assets/images/grts1.jpg" class="img-fluid">
                            <h3>GHỀNH RÁNG - TIÊN SA</h3>
                        </a>
                    </div>
                    <div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
                        <a href="#" class="probootstrap-thumbnail">
                            <img src="assets/images/grts1.jpg" class="img-fluid">
                            <h3>GHỀNH RÁNG - TIÊN SA</h3>
                        </a>
                    </div>
                    <div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
                        <a href="#" class="probootstrap-thumbnail">
                            <img src="assets/images/grts1.jpg" class="img-fluid">
                            <h3>GHỀNH RÁNG - TIÊN SA</h3>
                        </a>
                    </div>
                </div>
                <div>
                    <svg xmlns="http://www.w3.org/2000/svg" version="1.1" class="goo">
                        <defs>
                            <filter id="goo">
                                <feGaussianBlur in="SourceGraphic" stdDeviation="10" result="blur" />
                                <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 19 -9" result="goo" />
                                <feComposite in="SourceGraphic" in2="goo"/>
                            </filter>
                        </defs>
                    </svg>
                    <div class="YT">
                        <div class="button--bubble__container">
                            <button class="button button--bubble" type="button" onclick="alert('Đã thêm vào mục yêu thích')">♥ Yêu thích</button>
                            <span class="button--bubble__effect-container">
                            <span class="circle top-left"></span>
                                <span class="circle top-left"></span>
                                <span class="circle top-left"></span>

                                <span class="button effect-button"></span>

                                <span class="circle bottom-right"></span>
                                <span class="circle bottom-right"></span>
                                <span class="circle bottom-right"></span>
                                </span>
                        </div>
                    </div>
                </div>
                <div>
                    <div>
                        <table style="background-color: #e5f995 ; width: 100%;">
                            <tr style="height: 60px; color: #123429;">
                                <td style="width: 30%; border-right: solid 1px white;">
                                    ĐỊA CHỈ
                                </td>
                                <td style="width: 70%; padding: 5px;">
                                    6 Ngô Gia Tự, Nguyễn Văn Cừ, Thành phố Qui Nhơn, Bình Định
                                </td>
                            </tr>
                            <tr style="height: 60px; color: #123429; border-top: solid 1px white">
                                <td style="width: 30%; border-right: solid 1px white;">
                                    THÔNG TIN
                                </td>
                                <td style="width: 70%; padding: 5px;">
                                    Nằm ở phường Ghềnh Ráng, thành phố Quy Nhơn, Ghềnh Ráng – Tiên Sa nằm cách trung tâm thành phố khoảng 3km về phía Đông-Nam. Điểm đặc biệt của nơi đây chính là quần thể những bãi đá nằm liền kề nhau và những bãi đá tập trung theo đường cong của eo núi
                                    Xuân Vân. Nhờ vào vẻ đẹp độc đáo mà Ghềnh Ráng đã được Bộ Văn hóa – Thông tin xếp hạng là di tích quốc gia.
                                </td>
                            </tr>
                            <tr style="height: 60px; color: #123429; border-top: solid 1px white">
                                <td style="width: 30%; border-right: solid 1px white;">
                                    THỜI ĐIỂM ĐĂNG
                                </td>
                                <td style="width: 70%; padding: 5px;">
                                    31/10/2022
                                </td>
                            </tr>
                            <tr style="height: 60px; color: #123429; border-top: solid 1px white">
                                <td style="width: 30%; border-right: solid 1px white;">
                                    MÔ TẢ CHI TIẾT
                                </td>
                                <td style="width: 70%; padding: 5px;">
                                    Nói tới khu du lịch Ghềnh Ráng Bình Định bạn sẽ biết thêm về một sự tích được lưu truyền cho đến tận bây giờ về địa điểm này. Truyền thuyết kể về một người con gái nổi tiếng vừa đẹp người vừa đẹp nết, xinh xắn lại thùy mị nết na. Nàng đem lòng yêu một
                                    chàng trai trong làng, hai người yêu nhau thắm thiết, cho đến một ngày viên quan huyện nhìn thấy nàng và bị sắc đẹp của nàng mê hoặc, hắn cho người theo dõi và tìm mọi cách để chiếm đoạt được nàng. Nhưng nàng không
                                    hề yêu hắn, để giữ trọn được lòng thủy chung với người mình yêu, nàng khóc lạy cha mẹ và từ giã chàng trai rồi chạy trốn khỏi làng đến Quy Nhơn. Tên quan huyện thấy thế sai quân lính đuổi theo, khi đến Ghềnh Ráng
                                    – tên này do ngư dân đặt vì nơi này có nhiều ghềnh, khi tàu bè qua khu vực này thì thủy thủ phải làm sao cho giảm gió trong buồm đi để thuyền đi chậm lại nếu không dễ bị nước ngập vào tàu, trong nghề đi biển thao
                                    tác ấy gọi là ráng, tên Ghềnh Ráng từ đó mà ra – trời bỗng nổi sấm chớp, dông bão rất lớn làm núi đá bị nứt một khe lớn rồi cô gái biến mất tăm. Khi trời dừng bão và quang đãng trở lại thì khe núi ấy lại biến thành
                                    một dòng suối uốn lượn bên sườn núi.
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div>
                        <table style="border: solid 1px #a21b1e; border-radius: 10px; margin-top: 20px; width: 100%; text-align: left; color: #a21b1e; ">
                            <tr>
                                <td style="padding-left: 2%; ">
                                    <h5 style="color: #a21b1e; padding-top:2%;">Bình luận</h5>
                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left: 7%; padding-bottom: 2%;"><img src="assets/images/user.png" style="height: 40px; width: 40px; padding-right: 1%;"><input type="text" placeholder="Bình luận ..." style="width:80%"></td>
                            </tr>
                            <tr>
                                <td style="padding-left: 7%; font-weight: bold; "><img src="assets/images/user.png" style="height: 40px; width: 40px; padding-right: 1%; font-weight: bold;">Nguyễn Thị A</td>
                            </tr>
                            <tr>
                                <td style=" padding-left: 7%; padding-bottom: 2%; padding-right:5%">Truyền thuyết kể về một người con gái nổi tiếng vừa đẹp người vừa đẹp nết, xinh xắn lại thùy mị nết na. Nàng đem lòng yêu một chàng trai trong làng, hai người yêu nhau thắm thiết, cho đến một ngày viên quan huyện nhìn
                                    thấy nàng và bị sắc đẹp của nàng mê hoặc, hắn cho người theo dõi và tìm mọi cách để chiếm đoạt được nàng. Nhưng nàng không hề yêu hắn, để giữ trọn được lòng thủy chung với người mình yêu, nàng khóc lạy cha mẹ và
                                    từ giã chàng trai rồi chạy trốn khỏi làng đến Quy Nhơn.</td>
                            </tr>
                            <tr>
                                <td style="padding-left: 12%; font-weight: bold; "><img src="assets/images/user.png" style="height: 40px; width: 40px; padding-right: 1%; font-weight: bold;">Trần Văn B</td>
                            </tr>
                            <tr>
                                <td style=" padding-left: 12%; padding-bottom: 2%; padding-right:5%">Truyền thuyết kể về một người con gái nổi tiếng vừa đẹp người vừa đẹp nết, xinh xắn lại thùy mị nết na. Nàng đem lòng yêu một chàng trai trong làng, hai người yêu nhau thắm thiết, cho đến một ngày viên quan huyện nhìn
                                    thấy nàng và bị sắc đẹp của nàng mê hoặc, hắn cho người theo dõi và tìm mọi cách để chiếm đoạt được nàng. Nhưng nàng không hề yêu hắn, để giữ trọn được lòng thủy chung với người mình yêu, nàng khóc lạy cha mẹ và
                                    từ giã chàng trai rồi chạy trốn khỏi làng đến Quy Nhơn.</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>

        </div>
</section>

</body>
</html>
