<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 3/16/2017
  Time: 9:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Login</title>

</head>

<body>
<c:if test="${not empty msg}">
    <div>${msg}</div>
</c:if>

<form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">

    <c:if test="${not empty error}">
        <div>${error}</div>
    </c:if>

    <div>
        <label for="username">User: </label>
        <input type="text" id="username" name="username"/>
    </div>
    <div>
        <label for="password">Password: </label>
        <input type="password" id="password" name="password" />
    </div>

    <input type="submit" value="Submit"/>

    <input type="hidden" name="${_csrf_parameterName}" value="${_csrf.token}"/>
</form>
</body>
</html>