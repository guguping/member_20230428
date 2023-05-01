<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-28
  Time: 오전 9:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>memberDetail</title>
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
<%@include file="./component/header.jsp" %>
<%@include file="./component/nav.jsp" %>
<div id="section">
    <div id="contents">
        <table>
            <tr>
                <th>ID</th>
                <th>Email</th>
                <th>Password</th>
                <th>Name</th>
                <th>Birth</th>
                <th>Mobile</th>
                <th>수정</th>
                <th>삭제</th>
            </tr>
            <tr>
            <td>${detailList.id}</td>
            <td>${detailList.memberEmail}</td>
            <td>${detailList.memberPassword}</td>
            <td>${detailList.memberName}</td>
            <td>${detailList.memberBirth}</td>
            <td>${detailList.memberMobile}</td>
            <td>
                <button id="memberUpdate" onclick="memberUpdate(${detailList.id})">수정</button>
            </td>
            <td>
                <button id="memberDelete" onclick="memberDelete(${detailList.id})">삭제</button>
            </td>
            </tr>
        </table>
        <a href="/memberMain">뒤로가기</a>
    </div>
</div>
</body>
<%@include file="./component/footer.jsp" %>
<script>
    const memberDelete = (id) => {
        location.href = "/memberDelete?id=" + id;
    }
    const memberUpdate = (id) => {
        location.href = "/memberUpdate?id=" + id;
    }
</script>
</html>
