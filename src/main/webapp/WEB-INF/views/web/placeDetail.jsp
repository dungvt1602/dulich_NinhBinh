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
<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('<c:url value="/template/web/assets/video/HonKho.jpg"/>');" data-stellar-background-ratio="0.5" id="section-home">
    <div class="overlay"></div>
    <div class="container">
        <div class="row align-items-center">

        </div>
    </div>

</section>
<!-- END section -->

<section class="probootstrap_section" id="section-feature-testimonial">


    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-12 text-center mb-5 probootstrap-animate">
                <h2 class="display-4 border-bottom probootstrap-section-heading">${model.title}</h2>
                <blockquote class="normal">
                    <p class=" lead mb-4 "><em>${model.shortDescription}</em></p>
                    <p class=" lead mb-4 "><em>${model.content}</em></p>

                    <p class="probootstrap-author">
                        <a href="https://probootstrap.com/" target="_blank">
                            <img src="<c:url value="/template/web/assets/video/angelo.jpg"/> " alt="Free Template by ProBootstrap.com" class="rounded-circle">
                            <span class="probootstrap-name">${model.modifiedBy}</span>
                            <span class="probootstrap-title">${model.modifiedDate}</span>
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
                <h2 class="display-4 border-bottom probootstrap-section-heading">Một số thông tin khác</h2>
            </div>
        </div>
    </div>
</section>
<section class="probootstrap-section-half d-md-flex" style="padding-bottom: 80px">
    <div class="probootstrap-image order-2 probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(<c:url value="/template/web/assets/images/${model.thumbnail}"/>)"></div>
    <div class="probootstrap-text order-1">
        <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft">
            <h2 class="heading mb-4">${model.title}</h2>
            <p>Địa chỉ: TP. Quy Nhơn, tỉnh Bình Định, Việt Nam</p>
            <p>Lượt bình luận: ${cout_comment}</p>
            <p>Lượt yêu thích: ${like}</p>
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
    </div>
</section>

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