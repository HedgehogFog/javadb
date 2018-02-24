<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 3/16/2017
  Time: 9:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<c:if test="${not empty msg}">
    <div class="msg alert-success">${msg}</div>
</c:if>

<form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">

    <c:if test="${not empty error}">
        <div class="error alert-danger">${error}</div>
    </c:if>

    <div class="form-group">
        <label for="username">User: </label>
        <input type="text" id="username" name="username" class="form-control"/>
    </div>
    <div class="form-group">
        <label for="password">Password: </label>
        <input type="password" id="password" name="password" class="form-control"/>
    </div>

    <input type="submit" value="Submit" class="btn btn-success"/>

    <input type="hidden" name="${_csrf_parameterName}" value="${_csrf.token}"/>
</form>
</body>