<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/10/2022
  Time: 3:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@include file="/common/taglib.jsp"%>

<c:url var="loginURL" value="/dang-nhap"/>
<c:url var="dangkyURL" value="/dang-ky"/>
<c:url var="userAPI" value="/api/web/user"/>

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
			<div class="col-md probootstrap-animate">

				<%--@elvariable id="model" type=""--%>
				<form:form  class="probootstrap-form probootstrap-form-box mb60" role="form" id="formSubmit" modelAttribute="model">
					<div class="form-group">

							<div class="col-md">
								<div class="form-group">
									<label for="userName">Tài khoản</label>
									<label for="userName" style="width: 100%;">
										<form:input  path="userName" class="form-control" placeholder="Nhập tên tài khoản đăng ký"
													 required="required" minlength="3" maxlength="100"/>
									</label>
								</div>
							</div>


						<div class="col-md">
							<div class="form-group">
								<label for="password">Mật khẩu</label>
								<label for="password" style="width: 100%;">
									<form:password path="password" id="password" class="form-control" placeholder="Nhập Password"
												   required="required"
												   pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$"
												   title="Mật khẩu phải có  chữ thường , 1 kí tự chữ hoa và kí tự số"/>
								</label>
							</div>
						</div>

						<div class="col-md">
							<div class="form-group">
								<label for="password2">Nhập lại mật khẩu</label>
								<label for="password2" style="width: 100%;">
									<input type="password" id="password2" class="form-control" name="password2" placeholder="Nhập Password"
												   required
												   pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$"/>
								</label>
							</div>
						</div>

						<div class="col-md">
							<div class="form-group">
								<label for="fullName">Tên người dùng</label>
								<label for="fullName" style="width: 100%;">
									<form:input  path="fullName" class="form-control" placeholder="Nhập tên tài khoản đăng ký"/>
								</label>
							</div>
						</div>


						<div class="row">
							<div class="col-md-6">
								<button type="submit" class="btn btn-primary btn-block" id="btnAddOrUpdateNew" >Đăng ký</button>
							</div>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>

</section>
<!-- END section -->
<script>
	$('#btnAddOrUpdateNew').click(function (e) {
		e.preventDefault();
		var data = {};
		var formData = $('#formSubmit').serializeArray();
		$.each(formData, function (i, v) {
			data[""+v.name+""] = v.value;
		});
		addNew(data)
	});

	function addNew(data) {
		$.ajax({
			url: '${userAPI}',
			type: 'POST',
			contentType: 'application/json',
			data: JSON.stringify(data),
			dataType: 'json',
			success: function (result) {
				window.location.href = "${loginURL}?message=insert_success";
			},
			error: function (error) {
				window.location.href = "${loginURL}?message=error_system";
			}
		});
	}

	<%--function updateNew(data) {--%>
	<%--	$.ajax({--%>
	<%--		url: '${userAPI}',--%>
	<%--		type: 'PUT',--%>
	<%--		contentType: 'application/json',--%>
	<%--		data: JSON.stringify(data),--%>
	<%--		dataType: 'json',--%>
	<%--		success: function (result) {--%>
	<%--			window.location.href = "${editNewURL}?id="+result.id+"&message=update_success";--%>
	<%--		},--%>
	<%--		error: function (error) {--%>
	<%--			window.location.href = "${editNewURL}?id="+result.id+"&message=error_system";--%>
	<%--		}--%>
	<%--	});--%>
	<%--}--%>
</script>


</body>
</html>
