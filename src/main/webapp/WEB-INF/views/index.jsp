<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-28
  Time: 오전 9:11
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index</title>
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
<div class="header">
<h2>응애 나 애기 index</h2>
</div>
<div class="nav">
<ul>
    <li><a href="/memberSave">회원가입</a></li>
    <li><a href="/memberList">목록출력</a></li>
    <li><a href="/memberMain">실험입니다</a></li>
    <li class="login-name">
        <c:choose>
            <c:when test="${sessionScope.loginEmail != null}">
                <a href="/memberMain" style="color: black;">${sessionScope.loginEmail}님환영해요</a>
                <a href="/logout">logout</a>
            </c:when>
            <c:otherwise>
                <a href="/memberLogin">login</a>
            </c:otherwise>
        </c:choose>
    </li>
</ul>
</div>
<%@include file="./component/footer.jsp"%>
</body>
</html>
