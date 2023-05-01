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
    <title>memberUpdate</title>
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
<%@include file="./component/header.jsp" %>
<%@include file="./component/nav.jsp" %>
<div id="section">
    <form action="/memberUpdate" method="post" id="updateForm">
        <table>
            <tr style="display: none">
                <th><label for="id">아이디:</label></th>
                <td><input type="text" name="id" id="id" value="${memberList.id}"></td>
            </tr>
            <tr style="display: none">
                <th><label for="Email">이메일:</label></th>
                <td><input type="text" name="memberEmail" id="Email" value="${memberList.memberEmail}"></td>
            </tr>
            <tr>
                <th><label for="password">비밀번호:</label></th>
                <td><input type="text" name="memberPassword" id="password" onblur="passwordCheck()">
                    <p id="passwordResult" style="display: block"></p></td>
            </tr>
            <tr>
                <th><label for="name">이름:</label></th>
                <td><input type="text" name="memberName" value="${memberList.memberName}" id="name"></td>
            </tr>
            <tr>
                <th><label for="birth">생년월일:</label></th>
                <td><input type="text" name="memberBirth" value="${memberList.memberBirth}" id="birth"></td>
            </tr>
            <tr>
                <th><label for="mobile">전화번호</label></th>
                <td><input type="text" name="memberMobile" value="${memberList.memberMobile}" id="mobile"></td>
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
<%@include file="./component/footer.jsp" %>
</body>
<script>
    const back = () =>{
        location.href = "/memberMain"
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
    };

    const updateForm = document.getElementById('updateForm');
    updateForm.addEventListener("submit", function (e) {
        e.preventDefault();
        let promptResult = prompt("기존 비밀번호 확인", "입력바랍니다");
        const memberName = document.getElementById('name');
        const memberBirth = document.getElementById('birth');
        const memberMobile = document.getElementById('mobile');
        const memberPassword = document.getElementById('password');
        const exp = /^(?=.*[a-z])(?=.*\d)(?=.*[!#$%])[a-z\d!#$%]{8,16}$/;

        if (memberPassword.value.length == "") {
            alert("비밀번호는 필수입니다");
            memberPassword.focus();
        } else if(!(memberPassword.value.match(exp))){
            alert("비밀번호 양식을 확인해주세요");
            memberPassword.focus();
        } else if (memberName.value.length == "") {
            alert("이름은 입력입니다.");
            memberName.focus();
        } else if (memberBirth.value.length == "") {
            alert("생일은 입력입니다.");
            memberBirth.focus();
        } else if (memberMobile.value.length == "") {
            alert("전화번호는 입력입니다.");
            memberMobile.focus();
        } else if (promptResult != '${memberList.memberPassword}') {
            alert("비밀번호가 틀립니다");
        } else {
            alert("수정 완료!")
            updateForm.submit();
        }
    });
</script>
</html>
