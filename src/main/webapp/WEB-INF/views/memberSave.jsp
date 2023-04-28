<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-28
  Time: 오전 8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberSave</title>
</head>
<body>
<div class="section">
    <h2>응애 나 애기 save</h2>
    <form action="/memberSave" method="post" onsubmit="return SaveCheck()">
        <table>
            <tr>
                <th><label for="email">이메일:</label></th>
                <td><input type="text" name="memberEmail" id="email"></td>
            </tr>
            <tr>
                <th><label for="password">비밀번호:</label></th>
                <td><input type="text" name="memberPassword" id="password"></td>
            </tr>
            <tr>
                <th><label for="name">이름:</label></th>
                <td><input type="text" name="memberName" id="name"></td>
            </tr>
            <tr>
                <th><label for="birth">생년월일:</label></th>
                <td><input type="text" name="memberBirth" id="birth"></td>
            </tr>
            <tr>
                <th><label for="mobile">전화번호</label></th>
                <td><input type="text" name="memberMobile" id="mobile"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" style="display: inline" value="등록">
                    <input type="button" style="display: inline" value="취소" onclick="back()">
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
<script>
    const back = () =>{
        location.href = "/";
    }
</script>
</html>
