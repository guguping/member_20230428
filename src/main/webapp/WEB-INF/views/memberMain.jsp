<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-28
  Time: 오전 8:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>memberMain</title>
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
<%@include file="./component/header.jsp" %>
<%@include file="./component/nav.jsp" %>
<div id="section">
    <div id="contents">
    <h2>memberMain</h2>
    <a href="#" onclick="Detail(${DTO.id})">회원 상세 페이지</a>
    </div>
</div>
<%@include file="./component/footer.jsp" %>
</body>
<script>
    const Detail = (id) => {
        location.href = "/memberDetail?id=" + id;
    }
</script>
</html>
