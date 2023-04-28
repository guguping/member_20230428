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
    <title>memberMain</title>
</head>
<body>
<h2>memberMain</h2>
<a href="#" onclick="Detail(${DTO.id})">회원 상세 페이지</a><br>
<p>${DTO.memberName}님 환영합니다</p>
<a href="/logout">logout</a>
<%@include file="./component/footer.jsp"%>
</body>
<script>
    const Detail = (id) =>{
        location.href = "/memberDetail?id="+id;
    }
</script>
</html>
