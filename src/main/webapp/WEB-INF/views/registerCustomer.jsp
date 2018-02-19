<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 3/28/2017
  Time: 8:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>

</head>

<body>
<section id="services">
    <div class="container-fluid">
        <div class="col-lg-8 col-lg-offset-2 text-center">
            <h1 class="section-heading">Register</h1>
        </div>
    </div>
    <div class="container col-md-6 col-md-offset-3">
        <form:form action="${pageContext.request.contextPath}/register" method="post"
                   commandName="customer">
            <div class="form-group">
                <label for="username">Username</label><span style="color: red;">${usernameMsg}</span><form:errors path="username" cssStyle="color: red" />
                <form:input path="username" id="username" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="password">Password</label><form:errors path="password" cssStyle="color: red" />
                <form:password path="password" id="password" cssClass="form-control" />
            </div><br>


            <div class="col-lg-8 col-lg-offset-2 text-center">
                <input type="submit" value="submit" class="btn btn-success" />
                <a href="<c:url value="/" />" class="btn btn-primary">Cancel</a>
            </div>
        </form:form>
    </div>

</section>
<div style="padding-bottom: 5%" />
<div class="clearfix"/></div>

</body>
