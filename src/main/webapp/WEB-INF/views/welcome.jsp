<%--
  Created by IntelliJ IDEA.
  User: hedgehog
  Date: 23.02.2018
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <form action="<c:url value="/j_spring_security_check" />" method="post">
        <c:if test="${not empty error}">
            <div class="error alert-danger">${error}</div>
        </c:if>

        Username: <input type="text" name="username" />
        Password: <input type="password" name="password" />

        <input type="submit" value="Submit" />'
        <input type="hidden" name="${_csrf_parameterName}" value="${_csrf.token}" />
    </form>
</head>
<body>

</body>
</html>
