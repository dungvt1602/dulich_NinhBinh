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
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="for" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/common/taglib.jsp"%>

<html>
<head>
    <title>Trang chủ</title>
    <link href="<c:url value="/template/login/image_user.css"/> " , rel="stylesheet">
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
<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('<c:url value="/template/web/assets/user_profile/images_and_videos/Background_profile.jpg"/>');" data-stellar-background-ratio="0.5" id="section-home">
    <div class="overlay"></div>
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md">
                <h2 class="heading mb-2 display-4 font-light probootstrap-animate">Xin chào <%=SecurityUtils.getPrincipal().getFullName()%></h2>
                <p class="lead mb-5 probootstrap-animate">
                </p>
                <a href="<c:url value="/diadanh"/>" role="button" class="btn btn-primary p-3 mr-3 pl-5 pr-5 text-uppercase d-lg-inline d-md-inline d-sm-block d-block mb-3">Đổi hình nền</a>
                </p>
            </div>

        </div>
    </div>

</section>
<!-- END section -->

<section class="probootstrap_section">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Thông tin cá nhân:</h2>
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<section class="probootstrap-section-half d-md-flex" id="section-about" style="padding-bottom: 10%">
    <div class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(<c:url value="/template/web/assets/user_profile/images_and_videos/avata2.jpg"/>); border-radius: 50%; ">
        <c:url value="/edit_user" var="edit_image"/>
        <form:form action="${edit_image}" role="form"  method="post" enctype="multipart/form-data">
        <div class="custom-file">
            <input type="file" class="custom-file-input" id="customFile" name="files">
            <label class="custom-file-label" for="customFile">Chọn ảnh</label>
        </div>
            <button type="submit" id="buttonFile" hidden>Submit</button>
        </form:form>
    </div>
    <div class="probootstrap-text">
        <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight">
            <h2 class="heading mb-4">Tên: <%=SecurityUtils.getPrincipal().getFullName()%>
                <security:authorize access="isAuthenticated()">
                    authenticated as <security:authentication property="principal.username" />
                </security:authorize>
             </h2>
            <p>Ngày tạo tài khoản: 10 tháng 12 năm 2001</p>
            <p>Địa chỉ emai: abc@gmail.com</p>
            <c:if test="${model.status == 1}">
            <p>Hoạt động: Đang hoạt động</p>
            </c:if>
            <c:if test="${model.status == 0}">
                <p>Hoạt động: Tài khoản đã vô hiệu hóa</p>
            </c:if>
            <p>Số lượng địa điểm đã yêu thích: ${coutLike}</p>
            <p>Số lượng địa điểm đã check-in bình luận: ${coutComment}</p>
            <p> </p>
            <p><a href="<c:url value="/edit_profile"/>" class="btn btn-primary">Sửa thông tin cá nhân</a></p>
            <label class="btn btn-primary" for="buttonFile">Thay đổi ảnh đại diện</label>

        </div>
    </div>
</section>
<!-- END section -->

<section>
    <div class="container-fluid">
        <!-- Comments -->
        <div>
            <h2 class="tm-color-primary tm-post-title">Bình luận của bạn</h2>
            <hr class="tm-hr-primary tm-mb-45">
            <c:forEach var="item" items="${comments}">
            <div class="tm-comment-reply tm-mb-45">
                <h2 class="heading mb-4">${item.placeEntity.title}</h2>
                <div class="tm-comment">
                    <figure class="tm-comment-figure">
                        <img src="<c:url value="/template/web/assets/user_profile/images_and_videos/avata2.jpg"/>" alt="Image" class="mb-2 rounded-circle img-thumbnail" style="width: 100px;height: 100px;">
                        <figcaption class="tm-color-primary text-center">${item.userEntity.fullName}</figcaption>
                    </figure>
                    <p style="font-size: 125%">
                        ${item.content}
                    </p>
                </div>
                <span class="d-block text-right tm-color-primary">${item.createdDate}</span>
            </div>
            </c:forEach>
        </div>
    </div>
</section>
<!-- END section -->

<section class="probootstrap_section bg-light">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Địa danh yêu thích của bạn</h2>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <c:forEach var="item" items="${placesLike}" begin="0" end="1">
                <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                    <div class="probootstrap-media-image" style="background-image: url(<c:url value="/template/web/assets/images/img_1.jpg"/>)">
                    </div>
                    <div class="media-body">
                        <h5 class="mb-3">${item.title}</h5>
                        <p>${item.content}</p>
                        </p>
                            <a href="<c:url value="/diadanh"/>" role="button" class="btn btn-primary p-3 mr-3 pl-5 pr-5 text-uppercase d-lg-inline d-md-inline d-sm-block d-block mb-3">💔 Bỏ yêu thích </a>
                        </p>
                    </div>
                </div>
                </c:forEach>
            </div>
            <div class="col-md-6">
                <c:forEach var="item" items="${placesLike}" begin="2" end="3">
                    <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                        <div class="probootstrap-media-image" style="background-image: url(<c:url value="/template/web/assets/images/img_1.jpg"/>)">
                        </div>
                        <div class="media-body">
                            <h5 class="mb-3">${item.title}</h5>
                            <p>${item.content}</p>
                            </p>
                            <a href="<c:url value="/diadanh"/>" role="button" class="btn btn-primary p-3 mr-3 pl-5 pr-5 text-uppercase d-lg-inline d-md-inline d-sm-block d-block mb-3">💔 Bỏ yêu thích </a>
                            </p>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</section>

<script>
    // Add the following code if you want the name of the file appear on select
    $(".custom-file-input").on("change", function() {
        var fileName = $(this).val().split("\\").pop();
        $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
    });
</script>
</body>
</html>
