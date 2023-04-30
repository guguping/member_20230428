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
    <title>memberLogin</title>
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
<%@include file="./component/header.jsp" %>
<%@include file="./component/nav.jsp" %>
<div class="section">
    <table>
        <form action="/memberLogin" method="post" onsubmit="return Logincheck()">
            <tr>
                <th><label>이메일:</label></th>
                <td><input type="text" name="memberEmail"></td>
            </tr>
            <tr>
                <th><label>비밀번호:</label></th>
                <td><input type="text" name="memberPassword"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" style="display:inline;"value="로그인">
                    <input type="button" style="display:inline;"value="취소" onclick="back()">
                </td>
            </tr>
        </form>
    </table>
</div>
<%@include file="./component/footer.jsp"%>
</body>
<script>
    const back = () =>{
        location.href="/";
    }
    const Logincheck = () =>{

    }
</script>
</html>
