<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="nav" id="nav">
    <ul>
        <li><a href="/memberSave">회원가입</a></li>
        <li><a href="/memberList">목록출력</a></li>
        <li><a href="/memberMain">실험입니다</a></li>
        <li class="login-name">
            <c:choose>
                <c:when test="${DTO.memberEmail != null}">
                    <a href="/memberMain" style="color: black;">${DTO.memberEmail}님환영해요</a>
                    <a href="/logout">logout</a>
                </c:when>
                <c:otherwise>
                    <a href="/memberLogin">login</a>
                </c:otherwise>
            </c:choose>
        </li>
    </ul>
</div>

