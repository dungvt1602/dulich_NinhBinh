<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/10/2022
  Time: 4:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="securtity" uri="http://www.springframework.org/security/tags" %>
<%@ page import= "com.laptrinhjavaweb.util.SecurityUtils" %>

<!DOCTYPE html>
<head>


    <link href="<c:url value="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700"/> " , rel="stylesheet">


    <link href="<c:url value="/template/web/assets/css/bootstrap/bootstrap.css"/> " , rel="stylesheet">



    <link href="<c:url value="/template/web/assets/css/animate.css"/> " , rel="stylesheet">


    <link href="<c:url value="/template/web/assets/fonts/ionicons/css/ionicons.min.css"/> " , rel="stylesheet">


    <link href="<c:url value="/template/web/assets/css/owl.carousel.min.css"/> " , rel="stylesheet">


    <link href="<c:url value="/template/web/assets/fonts/flaticon/font/flaticon.css"/> " , rel="stylesheet">



    <link href="<c:url value="/template/web/assets/fonts/fontawesome/css/font-awesome.min.css"/> " , rel="stylesheet">


    <link href="<c:url value="/template/web/assets/css/bootstrap-datepicker.css"/> " , rel="stylesheet">


    <link href="<c:url value="/template/web/assets/css/select2.css"/> " , rel="stylesheet">




    <link href="<c:url value="/template/web/assets/css/helpers.css"/> " , rel="stylesheet">


    <link href="<c:url value="/template/web/assets/css/style.css"/> " , rel="stylesheet">

    <script src="<c:url value='/template/admin/assets/js/ace-extra.min.js' />"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type='text/javascript' src='<c:url value="/template/admin/js/jquery-2.2.3.min.js" />'></script>
    <script src="<c:url value='/template/admin/assets/js/jquery.2.1.1.min.js' />"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</head>
<body>


<!-- END nav -->

<dec:body/>

<%@include file="/common/web/footer.jsp"%>
<script src="<c:url value="/template/web/assets/js/jquery.min.js"/>" ></script>

<script src="<c:url value="/template/web/assets/js/popper.min.js"/>" ></script>


<script src="<c:url value="/template/web/assets/js/bootstrap.min.js"/>" ></script>



<script src="<c:url value="/template/web/assets/js/owl.carousel.min.js"/>" ></script>


<script src="<c:url value="/template/web/assets/js/bootstrap-datepicker.js"/>" ></script>


<script src="<c:url value="/template/web/assets/js/jquery.waypoints.min.js"/>" ></script>


<script src="<c:url value="/template/web/assets/js/jquery.easing.1.3.js"/>" ></script>


<script src="<c:url value="/template/web/assets/js/select2.min.js"/>" ></script>


<script src="<c:url value="/template/web/assets/js/main.js"/>" ></script>

<script src="<c:url value='/template/admin/assets/js/jquery-ui.min.js'/>"></script>

</body>
</html>

