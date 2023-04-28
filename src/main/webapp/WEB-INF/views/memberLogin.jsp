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
    <title>memberLogin</title>
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
<div class="section">
    <h2>응애 나 애기 login</h2>
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
</body>
<script>
    const back = () =>{
        location.href="/";
    }
</script>
</html>
