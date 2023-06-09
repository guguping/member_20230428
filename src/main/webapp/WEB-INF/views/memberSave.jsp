<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-28
  Time: 오전 8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>memberSave</title>
    <link rel="stylesheet" href="/resources/css/style.css">
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</head>
<body>
<%@include file="./component/header.jsp" %>
<%@include file="./component/nav.jsp" %>
<div id="section">
    <form action="/memberSave" method="post" onsubmit="return SaveCheck()" id="contents">
        <table>
            <tr>
                <th><label for="email">이메일:</label></th>
                <td><input type="text" name="memberEmail" id="email" onblur="emailCheck()">
                    <p id="emailResult"></p></td>
            </tr>
            <tr>
                <th><label for="password">비밀번호:</label></th>
                <td><input type="text" name="memberPassword" id="password" onblur="passwordCheck()">
                    <p id="passwordResult" style="display: block"></p></td>
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
                    <c:choose>
                        <c:when test="${DTO.memberEmail != null}">
                            <input type="button" style="display: inline" value="취소" onclick="loginBack()">
                        </c:when>
                        <c:otherwise>
                            <input type="button" style="display: inline" value="취소" onclick="back()">
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </table>
    </form>
</div>
<%@include file="./component/footer.jsp" %>
</body>
<script>
    const back = () => {
        location.href = "/";
    }
    const loginBack = () => {
        location.href = "/memberMain";
    }
    const emailCheck = () => {
        let saveEmail = document.getElementById('email');
        let emailResult = document.getElementById('emailResult');
        $.ajax({
            type: "post",
            url: "/emailCheck",
            async: false,
            data: {
            "saveEmail":saveEmail.value
            },
            success: function (res) {
                emailResult.style.color = "green";
                emailResult.innerHTML = res;
                resResult = true;
            },
            error: function () {
                emailResult.style.color = "red";
                emailResult.innerHTML = "중복된 아이디입니다";
                resResult = false;
            }
        });
        return resResult;
    }
    const passwordCheck = () => {
        const memberPassword = document.getElementById('password');
        const passwordResult = document.getElementById('passwordResult');
        const exp = /^(?=.*[a-z])(?=.*\d)(?=.*[!#$%])[a-z\d!#$%]{8,16}$/;

        if (!(memberPassword.value.match(exp))) {
            passwordResult.innerHTML = "영문소문자, 숫자, 특수문자(!#$%) 하나 이상 입력하고 8~16자"
            return false;
        } else {
            return true;
        }
    }
    const SaveCheck = () => {
        const memberEmail = document.getElementById('email');
        const memberPassword = document.getElementById('password');
        const memberName = document.getElementById('name');
        const memberBirth = document.getElementById('birth');
        const memberMobile = document.getElementById('mobile');
        const exp = /^(?=.*[a-z])(?=.*\d)(?=.*[!#$%])[a-z\d!#$%]{8,16}$/;
        if (memberEmail.value.length == 0) {
            alert("아이디를 입력해주세요");
            memberEmail.focus();
            return false;
        } else if (memberPassword.value.length == 0) {
            alert("비밀번호를 입력해주세요");
            memberPassword.focus();
            return false;
        } else if (!(memberPassword.value.match(exp))) {
            alert("비밀번호 양식을 확인해주세요")
            memberPassword.focus();
            return false;
        } else if (memberName.value.length == 0) {
            alert("이름을 입력해주세요");
            memberName.focus();
            return false;
        } else if (memberBirth.value.length == 0) {
            alert("생일을 입력해주세요");
            memberBirth.focus();
            return false;
        } else if (memberMobile.value.length == 0) {
            alert("전화번호를 입력해주세요");
            memberMobile.focus();
            return false;
        } else if(!(emailCheck())){
            alert("중복된 이메일");
            memberEmail.focus();
            return false;
        } else {
            return true;
        }
    }
</script>
</html>
