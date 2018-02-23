<%--
  Created by IntelliJ IDEA.
  User: hedgehog
  Date: 23.02.2018
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Start Location</title>
</head>
<body>

<c:if test="${pageContext.request.userPrincipal.name != null}">
    <li><a>Hi, Bro ${pageContext.request.userPrincipal.name}</a></li>
    <li><a href="<c:url value="/j_spring_security_logout" />">Logout</a></li>
</c:if>
<c:if test="${pageContext.request.userPrincipal.name == null}">
    <li>
        <a class="page-scroll" href="<c:url value="/login" />#portfolio">Login</a>
    </li>
    <li>
        <a class="page-scroll" href="<c:url value="/register"/>#services">Register</a>
    </li>
</c:if>
</body>
</html>
