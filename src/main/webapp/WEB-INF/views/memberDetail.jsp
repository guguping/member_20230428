<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-28
  Time: 오전 9:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberDetail</title>
</head>
<body>
<h2>안녕 나는 상세페이지</h2>
<table>
    <tr>
        <th>ID</th>
        <th>Email</th>
        <th>Password</th>
        <th>Name</th>
        <th>Birth</th>
        <th>Mobile</th>
    </tr>
    <tr>
        <td>${detailList.id}</td>
        <td>${detailList.memberEmail}</td>
        <td>${detailList.memberPassword}</td>
        <td>${detailList.memberName}</td>
        <td>${detailList.memberBirth}</td>
        <td>${detailList.memberMobile}</td>
    </tr>
</table>
<a href="#" onclick="back(${detailList.id})">뒤로가기</a>
</body>
<%@include file="./component/footer.jsp"%>
<script>
    const back = (id) =>{
        location.href = "/memberMain";
    }
</script>
</html>
