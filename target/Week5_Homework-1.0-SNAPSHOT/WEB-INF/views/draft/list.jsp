<%--
  Created by IntelliJ IDEA.
  User: milena
  Date: 26.07.18
  Time: 20:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p><a href="${pageContext.request.contextPath}/draft/form" >Add draft</a></p>
<ul>
    <c:forEach items="${article}" var="art">
        <li>${art.title} ${art.author.lastName} <p><a href="${pageContext.request.contextPath}/draft/form${art.id}" >Delete draft</a></p>
            <p><a href="${pageContext.request.contextPath}/draft/form/${art.id}" >Edit draft</a></p>
        </li>
    </c:forEach>
</ul>
</body>
</html>