<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/10/2022
  Time: 3:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<html>
<head>
	<title>Login</title>
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
</nav>
<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('<c:url value="/template/web/assets/images/bg_1.jpg"/>');" data-stellar-background-ratio="0.5" id="section-home">
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
				<c:if test="${param.incorrectAccount != null}">
					<div class="alert alert-danger">
						Username or password incorrect
					</div>
				</c:if>
				<c:if test="${param.accessDenied != null}">
					<div class="alert alert-danger">
						you Not authorize
					</div>
				</c:if>
				<form action="j_spring_security_check" class="probootstrap-form" id="formLogin" method="post">
					<div class="form-group">
						<div class="row mb-3">
							<div class="col-md">
								<div class="form-group">
									<label for="j_username">Tên đăng nhập</label>
									<label for="j_username" style="width: 100%;">
										<input type="text" class="form-control" id="j_username" name="j_username" placeholder="User name">
									</label>
								</div>
							</div>
							<div class="col-md">
								<div class="form-group">
									<label for="j_password">Mật khẩu</label>
									<label for="j_password" style="width: 100%;">
										<input type="password" class="form-control" id="j_password" name="j_password" placeholder="Password">
									</label>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md">
								<button type="submit" class="btn btn-primary btn-block" >Đăng nhập</button>
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
				<h2 class="display-4 border-bottom probootstrap-section-heading">Những địa danh nổi tiếng</h2>
			</div>
		</div>
	</div>
</section>

<section class="probootstrap-section-half d-md-flex" id="section-about">
	<div class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(<c:url value="/template/web/assets/images/img_2.jpg"/>)"></div>
	<div class="probootstrap-text">
		<div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight">
			<h2 class="heading mb-4">Ghềnh Ráng - Tiên Sa</h2>
			<p>Nằm ở phường Ghềnh Ráng, thành phố Quy Nhơn, Ghềnh Ráng – Tiên Sa nằm cách trung tâm thành phố khoảng 3km về phía Đông-Nam. Điểm đặc biệt của nơi đây chính là quần thể những bãi đá nằm liền kề nhau và những bãi đá tập trung theo đường
				cong của eo núi Xuân Vân. Nhờ vào vẻ đẹp độc đáo mà Ghềnh Ráng đã được Bộ Văn hóa – Thông tin xếp hạng là di tích quốc gia.</p>
			<p><a href="#" class="btn btn-primary">Xem thêm</a></p>
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
