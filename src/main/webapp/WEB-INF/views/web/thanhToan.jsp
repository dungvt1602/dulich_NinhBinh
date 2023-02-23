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
<%@ taglib prefix="for" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import= "com.laptrinhjavaweb.util.SecurityUtils" %>
<%@include file="/common/taglib.jsp"%>



<html>
<head>
    <title>Title</title>
</head>
<body>
<style>
    .normal { font-style: normal; }
    .italic { font-style: italic;}
    .oblique { font-style: oblique;}
</style>
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
<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('<c:url value="/template/web/assets/images/${model.video}"/>');" data-stellar-background-ratio="0.5" id="section-home">
    <div class="overlay"></div>
    <div class="container">
        <div class="row align-items-center">

        </div>
    </div>

</section>
<!-- END section -->

<!-- BEGIN section -->
<section class="probootstrap_section">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Thanh toán</h2>
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<!-- BEGIN section -->
<section class="probootstrap-text" >
    <div class="probootstrap-inner" style="padding-left: 10%">

        <!-- Custom name -->
        <h5>Tên khách hàng: </h5>
        <p style=" border: white ; width: 80%; padding-left: 2%; margin-left: 2%; height: 30px;"> Nguyễn Văn A</p>

        <!-- Custom gender -->
        <h5>Giới tính: </h5>
        <p style=" border: white ; width: 80%; padding-left: 2%; margin-left: 2%; height: 30px;"> Nam</p>

        <!-- Custom gender -->
        <h5>Giới tính: </h5>
        <p style=" border: white ; width: 80%; padding-left: 2%; margin-left: 2%; height: 30px;"> Nam</p>

        <p>Địa chỉ: Số 16 Nguyễn Huệ, Phường Lê Lợi, Thành phố Quy Nhơn, tỉnh Bình Định</p>
        <p>Tiêu chuẩn: 3 sao</p>
        <p>Dịch vụ: Bể bơi, Bữa sáng miễn phí, Spa, Nhà hàng.</p>

            <hr class="rule">
            <p>Số phòng đơn còn: 3</p>
            <p>Giá phòng: 1 000 000 VND / phòng</p>

            <hr class="rule">

            <p>Số phòng đôi còn: 3</p>
            <p>Giá phòng: 1 000 000 VND / phòng</p>

            <hr class="rule">

            <p><a href="<c:url value="#"/>" class="btn btn-primary">Đặt phòng</a></p>
            <securtity:authorize access="isAnonymous()">

            </securtity:authorize>
            <securtity:authorize access="isAuthenticated()">
                <c:url value="/place_detail" var="redirect">
                    <c:param name="place_id" value="${model.id}"/>
                    <c:param name="yeu_thich" value="like"/>
                </c:url>
                <c:if test="${check_like == 1}">
                    <p><a href="${redirect}" class="btn btn-primary"> ♥ Bỏ yêu thích</a></p>
                </c:if>
                <c:if test="${check_like == 0}">
                    <p><a href="${redirect}" class="btn btn-primary"> ♥ Yêu thích</a></p>
                </c:if>
            </securtity:authorize>
        </div>
    </section>
</section>
<!-- END section -->

<section >
    <div class="container-fluid">
        <!-- Comments -->
        <div>
            <h2 class="tm-color-primary tm-post-title">Comments</h2>
            <for:forEach var="item" items="${comments}">
                <hr class="tm-hr-primary tm-mb-45">
                <div class="tm-comment-reply tm-mb-45">
                    <div class="tm-comment">
                        <figure class="tm-comment-figure">
                            <img src="<c:url value="/template/web/assets/user_profile/images_and_videos/avata2.jpg"/>" alt="Image" class="mb-2 rounded-circle img-thumbnail" style="width: 100px;height: 100px;">
                            <figcaption class="tm-color-primary text-center">${item.userName}</figcaption>
                        </figure>
                        <p>
                                ${item.content}
                        </p>
                    </div>
                    <span class="d-block text-right tm-color-primary">${item.createDate}</span>
                </div>
            </for:forEach>
            <securtity:authorize access="isAnonymous()">
                <h2 class="tm-color-primary tm-post-title mb-4">Bạn cần đăng nhập để bình luận</h2>
            </securtity:authorize>
            <securtity:authorize access="isAuthenticated()">
                <c:url value="/place_detail" var="post"/>
                <form:form action="${post}" class="mb-5" modelAttribute="comment" method="POST">
                    <h2 class="tm-color-primary tm-post-title mb-4">Your comment</h2>
                    <div class="mb-4">
                        <form:textarea path="content" class="form-control"  rows="6"/>
                    </div>
                    <input type="hidden" id="placeid" name="placeid" value="${model.id}">
                    <div class="text-right">
                        <button class="tm-btn tm-btn-primary tm-btn-small">Bình luận</button>
                    </div>
                </form:form>
            </securtity:authorize>
        </div>
    </div>
</section>

<section class="probootstrap_section bg-light">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Một số khách sạn khác</h2>
            </div>
        </div>
        <div class="row">
            <c:forEach var="item" items="${lists}" begin="0" end="1">
                <div class="col-md-6">
                    <c:url value="/place_detail" var="redirect">
                        <c:param name="place_id" value="${item.id}"/>
                    </c:url>
                    <a href="${redirect}" class="probootstrap-thumbnail">
                        <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                            <div class="probootstrap-media-image" style="background-image: url(<c:url value="/template/web/assets/images/${item.thumbnail}"/>)">
                            </div>
                            <div class="media-body">
                                <h5 class="mb-3">${item.title}</h5>
                                <p>${item.shortDescription}</p>
                            </div>
                        </div>
                    </a>
                </div>
            </c:forEach>
        </div>
        <div class="row">
            <c:forEach var="item" items="${lists}" begin="2" end="3">
                <div class="col-md-6">
                    <c:url value="/place_detail" var="redirect">
                        <c:param name="place_id" value="${item.id}"/>
                    </c:url>
                    <a href="${redirect}" class="probootstrap-thumbnail">
                        <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                            <div class="probootstrap-media-image" style="background-image: url(<c:url value="/template/web/assets/images/${item.thumbnail}"/>)">
                            </div>
                            <div class="media-body">
                                <h5 class="mb-3">${item.title}</h5>
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