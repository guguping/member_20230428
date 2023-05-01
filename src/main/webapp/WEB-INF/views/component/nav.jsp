<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="nav" id="nav">
    <ul>
        <li><a href="/memberSave">회원가입</a></li>
        <li><a href="/memberList">목록출력</a></li>
        <li>
            <c:choose>
                <c:when test="${DTO.memberEmail != null}">
                    <a href="#" onclick="Detail(${DTO.id})">회원 상세 페이지</a>
                </c:when>
            </c:choose>
        </li>
        <li class="login-name">
            <c:choose>
                <c:when test="${DTO.memberEmail != null}">
                    <a href="/memberMain" style="color: black;">${DTO.memberName}님환영해요</a>
                    <a href="/logout">logout</a>
                </c:when>
                <c:otherwise>
                    <a href="/memberLogin">login</a>
                </c:otherwise>
            </c:choose>
        </li>
    </ul>
</div>
<%--<script>--%>
<%--    const loginArea = document.getElementById("login-area");--%>
<%--    const loginEmail= '${sessionScope.loginEmail}';--%>
<%--    if(loginEmail.length != 0)--%>
<%--        loginArea.innerHTML = "<a href='/mypage' style='color: black;'>"+loginEmail+"님 환영합니다</a>"--%>
<%--        --%>
<%--</script>--%>
<script>
    const Detail = (id) => {
        location.href = "/memberDetail?id=" + id;
    }
</script>