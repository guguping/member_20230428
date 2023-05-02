<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-28
  Time: 오전 8:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>memberList</title>
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
<%--                <th>Password</th>--%>
<%--                <th>Name</th>--%>
<%--                <th>Birth</th>--%>
<%--                <th>Mobile</th>--%>
            </tr>
            <c:forEach items="${mList}" var="s">
                <tr>
                    <td><a href="#" onformdata="post" style="text-decoration: none; color: black;" onclick="detailList(${s.id})">${s.id}</a></td>
                    <td>${s.memberEmail}</td>
<%--                    <td>${s.memberPassword}</td>--%>
<%--                    <td>${s.memberName}</td>--%>
<%--                    <td>${s.memberBirth}</td>--%>
<%--                    <td>${s.memberMobile}</td>--%>
                </tr>
            </c:forEach>
        </table>
        <div id="resultArea">

        </div>
        <c:choose>
            <c:when test="${DTO.memberEmail != null}">
                <a href="/memberMain">뒤로가기</a>
            </c:when>
            <c:otherwise>
                <a href="/">뒤로가기</a>
            </c:otherwise>
        </c:choose>
    </div>
</div>
<%@include file="./component/footer.jsp" %>
</body>
<script>
    const detailList = (id) => {
        const memberid = {
            "id": id
        }
        $.ajax({
            type: "post",
            url: "/detail-ajax",
            data: JSON.stringify(memberid),
            contentType: "application/json",
            success: function (res) {
                const resultArea = document.getElementById('resultArea');
                let result = "<table>";
                result += "<tr>";
                result += "<th>ID</th>";
                result += "<th>Email</th>";
                result += "<th>Password</th>";
                result += "<th>Name</th>";
                result += "<th>Birth</th>";
                result += "<th>Mobile</th>";
                result += "</tr>";
                result += "<tr>";
                result += "<td>" + res.id + "</td>"
                result += "<td>" + res.memberEmail + "</td>";
                result += "<td>" + res.memberPassword + "</td>";
                result += "<td>" + res.memberName + "</td>";
                result += "<td>" + res.memberBirth + "</td>";
                result += "<td>" + res.memberMobile + "</td>";
                result += "</tr>";
                result += "</table>";
                resultArea.innerHTML = result;
            },
            error: function () {
                console.log("실패");
            }
        });
    }
</script>
</html>
