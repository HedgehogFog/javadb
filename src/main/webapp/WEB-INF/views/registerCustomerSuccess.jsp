<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>

</head>
<body>
<section id="services">
    <div class="container-fluid">
        <div class="col-lg-8 col-lg-offset-2 text-center">
            <h1 class="section-heading">Successfully!</h1>
            <hr class="primary">
            <a href="<c:url value="/product/productList" />" class="btn btn-success btn-lg">Go To Куда-нибудь</a>
        </div>
    </div>
</section>

<script src="<c:url value="../resources/js/controller.js" />"/>
</body>