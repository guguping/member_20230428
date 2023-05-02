<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="nav" id="nav">
    <ul>
        <div id="horizontal-underline"></div>
        <li><a href="/memberSave">회원가입</a></li>
        <li><a href="/memberList">목록출력</a></li>
        <li>
            <c:choose>
                <c:when test="${DTO.memberEmail != null}">
                    <a href="#" onclick="Detail(${DTO.id})">회원 상세 페이지</a>
                </c:when>
            </c:choose>
        </li>
        <c:choose>
            <c:when test="${DTO.memberEmail != null}">
                <li class="login-name">
                    <a href="/logout">logout</a>
                </li>
                <li class="login-name">
                    <a href="/memberMain" style="color: black;">${DTO.memberName}님환영해요</a>
                </li>
            </c:when>
            <c:otherwise>
                <li class="login-name">
                    <a href="/memberLogin">login</a>
                </li>
            </c:otherwise>
        </c:choose>
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

    let horizontalUnderLine = document.getElementById('horizontal-underline');
    let horizontalMenus = document.querySelectorAll("ul:first-child li");
    console.log(horizontalMenus);

    horizontalMenus.forEach((menu) =>
        menu.addEventListener("mousemove", (e) => horizontalIndicator(e))
    );

    function horizontalIndicator(e) {
        horizontalUnderLine.style.left = e.currentTarget.offsetLeft + "px";
        horizontalUnderLine.style.width = e.currentTarget.offsetWidth + "px";
        horizontalUnderLine.style.top =
            (e.currentTarget.offsetTop + e.currentTarget.offsetHeight) - 10 + "px";
    }

    horizontalMenus.forEach((menu) =>
        menu.addEventListener("mouseout", (e) => horizontalIndicator1(e))
    );

    function horizontalIndicator1(e) {
        horizontalUnderLine.style.left = 0 + "px";
        horizontalUnderLine.style.width = 0 + "px";
        horizontalUnderLine.style.top = 0 + "px";
    }

</script>