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
<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('<c:url value="/template/web/assets/images/FleurDeLys_nen.png"/>');" data-stellar-background-ratio="0.5" id="section-home">
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
        <h2 class="display-4 border-bottom probootstrap-section-heading">FLEUR DE LYS HOTEL</h2>
      </div>
    </div>
  </div>
</section>
<!-- END section -->

<!-- BEGIN section Introduce -->
<section class="probootstrap-section-half d-md-flex" style="padding-bottom: 80px">
  <div class="probootstrap-image order-2 probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(<c:url value="/template/web/assets/images/FleurDeLys.png"/>)"></div>
  <div class="probootstrap-text order-1">
    <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft">
      <h2 class="heading mb-4">FLEUR DE LYS HOTEL</h2>
      <p>Fleur de Lys Hospitality là đơn vị quản lý vận hành theo tiêu chuẩn 4 sao quốc tế sở hữu danh mục gồm nhiều nhà hàng, khách sạn, khu nghỉ dưỡng cao cấp khắp cả nước. Với hình ảnh hoa lys quý phái, biểu tượng cho sự thanh cao, tinh khiết và tràn đầy sức sống, cũng là triết lý của chúng tôi về những giá trị dịch vụ tiện nghi tinh tế gần gũi nhất dành riêng cho Quý Khách hàng.</p>
      <p>Địa chỉ: Số 16 Nguyễn Huệ, Phường Lê Lợi, Thành phố Quy Nhơn, tỉnh Bình Định</p>
      <p>Tiêu chuẩn: 4 sao</p>
      <p>Dịch vụ: Bể bơi, Bữa sáng miễn phí, Spa, Nhà hàng.</p>
      <p><a href="<c:url value="/thanhToan"/>" class="btn btn-primary">Đặt phòng</a></p>
      <hr class="rule">
    </div>
  </div>
</section>
<!-- END section -->

<!-- BEGIN section Service01 -->
<section class="probootstrap-section-half d-md-flex" id="section-about">
  <div class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(<c:url value="/template/web/assets/images/FleurDeLys_Pool.png"/>)"></div>
  <div class="probootstrap-text">
    <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight">
      <h2>Bể bơi</h2>
      <p>Hồ bơi ngoài trời với độ sâu 1,5m. </p>
      <p>Mở cửa từ 9 giờ sáng, đóng cửa vào lúc 22 giờ.</p>
      <p>Bên cạnh bể bơi có quầy bar phục vụ đồ uống</p>
      <hr class="rule">
    </div>
  </div>
</section>
<!-- END section -->

<!-- BEGIN section Service02 -->
<section class="probootstrap-section-half d-md-flex">
  <div class="probootstrap-image order-2 probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(<c:url value="/template/web/assets/images/FleurDeLys.png"/>)"></div>
  <div class="probootstrap-text order-1">
    <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft">
      <h2>Spa</h2>
      <p>Hệ thống liệu trình thư giãn tại spa của resort được thiết kế công phu và đa dạng với nhiều liệu trình từ nhẹ nhàng thư giãn đến vận động cơ bắp để du khách lựa chọn. Với những kỹ thuật viên nhiều năm kinh nghiệm, những lọ tinh dầu cao cấp phối hợp với nền nhạc du dương êm dịu, mọi mệt mỏi của bạn sẽ tan biến trong chốc lát.</p>
      <p>Mở cửa từ 9 giờ sáng, đóng cửa vào lúc 22 giờ.</p>
    </div>
  </div>
</section>
<!-- END section -->

<!-- BEGIN section Service03 -->
<section class="probootstrap-section-half d-md-flex" style="padding-bottom: 80px">
  <div class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(<c:url value="/template/web/assets/images/FleurDeLys_Pool.png"/>)"></div>
  <div class="probootstrap-text">
    <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight">
      <h2>Nhà hàng</h2>
      <p>Tại nhà hàng La Maison (La Maison Restaurant) của Khách sạn Fleur De Lys Quy Nhơn, bạn sẽ được trải nghiệm những món ngon đậm chất địa phương, những bữa tiệc hải sản tươi xanh màu biển hay những tinh hoa ẩm thực quốc tế trong khung cảnh vừa hiện đại vừa ấm cúng.</p>
      <p>Mở cửa từ 9 giờ sáng, đóng cửa vào lúc 22 giờ.</p>
    </div>
  </div>
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