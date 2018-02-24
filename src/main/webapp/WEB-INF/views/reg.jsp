<%--
  Created by IntelliJ IDEA.
  User: hedgehog
  Date: 24.02.2018
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <h1>Reg</h1>
    <form:form action="${pageContext.request.contextPath}/register" method="post" commandName="customer">>
        <div>
            <label for="username">Username</label><span style="color: red;">${usernameMsg}</span><form:errors path="username" cssStyle="color: red" />
            <form:input path="username" id="username" />
        </div>

        <div class="form-group">
            <label for="password">Password</label><form:errors path="password" cssStyle="color: red" />
            <form:password path="password" id="password" />
        </div><br>


        <div class="col-lg-8 col-lg-offset-2 text-center">
            <input type="submit" value="submit"/>
            <a href="<c:url value="/" />">Cancel</a>
        </div>
    </form:form>
</body>
</html>
