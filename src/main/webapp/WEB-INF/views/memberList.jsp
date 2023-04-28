<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-28
  Time: 오전 8:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberList</title>
</head>
<body>
<h2>응애 나 애기 list</h2>
<table>
    <tr>
        <th>ID</th>
        <th>Email</th>
        <th>Password</th>
        <th>Name</th>
        <th>Birth</th>
        <th>Mobile</th>
    </tr>
    <c:forEach items="${mList}" var="s">
        <tr>
            <td>${s.id}</td>
            <td>${s.memberEmail}</td>
            <td>${s.memberPassword}</td>
            <td>${s.memberName}</td>
            <td>${s.memberBirth}</td>
            <td>${s.memberMobile}</td>
        </tr>
    </c:forEach>
</table>
<a href="/">뒤로가기</a>
</body>
</html>
