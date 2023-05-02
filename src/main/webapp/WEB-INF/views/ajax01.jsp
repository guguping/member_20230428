<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-05-01
  Time: 오후 2:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ajax</title>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
<button onclick="ajax01()">함수호출01</button>
<button onclick="ajax02()" formmethod="post">함수호출02</button>
<button onclick="ajax03()">함수호출03</button>
<button onclick="ajax04()" formmethod="post">함수호출04</button>
<button onclick="ajax05()">함수호출05</button>
<button onclick="ajax06()">함수호출06</button>
<button onclick="ajax07()">함수호출07</button>
<button onclick="ajax08()">함수호출08</button>
<button onclick="ajax09()">함수호출09</button>
<button onclick="ajax10()">함수호출10</button>

<%-- ajax07번 예제 --%>
<div id="result-area">

</div>
</body>
<script>
    const ajax01 = () => {
        $.ajax({
            type: "get", // key값 (전송방식 등)
            url: "/ajax01", // 주소값
            success: function (res) { // 요청이 잘 처리된 경우
                console.log("요청성공", res);
            },
            error: function () { // 요청이 실패한 경우
                console.log("요청 실패");
            }
        });
    }
    const ajax02 = () => {
        $.ajax({
            type: "post", // key값 (전송방식 등)
            url: "/ajax02", // 주소값
            success: function (res) { // 요청이 잘 처리된 경우
                console.log("요청성공", res);
            },
            error: function () { // 요청이 실패한 경우
                console.log("요청 실패");
            }
        });
    }
    const ajax03 = () => {
        const var1 = "hello monday";
        $.ajax({
            type: "get", // key값 (전송방식 등)
            url: "/ajax03", // 주소값
            data: {
                param1: var1,
                param2: "hi hi"
            },
            success: function (res) { // 요청이 잘 처리된 경우
                console.log("요청성공", res);
            },
            error: function () { // 요청이 실패한 경우
                console.log("요청 실패");
            }
        });
    }
    const ajax04 = () => {
        const var1 = "hello monday";
        $.ajax({
            type: "post", // key값 (전송방식 등)
            url: "/ajax04", // 주소값
            data: {
                param1: var1,
                param2: "hi hi",
                qqq: "abcdefg"
            },
            success: function (res) { // 요청이 잘 처리된 경우
                console.log("요청성공", res);
            },
            error: function () { // 요청이 실패한 경우
                console.log("요청 실패");
            }
        });
    }
    const ajax05 = () => {
        const memberEmail = "aa@aa.com";
        const memberPassword = "1q2q3q";
        const memberName = "member1";
        $.ajax({
            type: "get", // key값 (전송방식 등)
            url: "/ajax05", // 주소값
            data: {
                "memberEmail": memberEmail,
                "memberPassword": memberPassword,
                "memberName": memberName
            },
            success: function (res) { // 요청이 잘 처리된 경우
                console.log("요청성공", res);
                console.log(res.memberEmail);
                console.log(res.memberPassword);
                console.log(res.memberName);
            },
            error: function () { // 요청이 실패한 경우
                console.log("요청 실패");
            }
        });
    }
    const ajax06 = () => {
        $.ajax({
            type: "get", // key값 (전송방식 등)
            url: "/ajax06", // 주소값
            success: function (res) { // 요청이 잘 처리된 경우
                console.log("요청성공", res);
                for (let i in res) {
                    console.log(res[i]);
                    console.log(res[i].memberEmail);
                }
            },
            error: function () { // 요청이 실패한 경우
                console.log("요청 실패");
            }
        });
    }
    // 오브젝트넘기기 json 넘기기
    const ajax07 = () => {
        const member = {
            "memberEmail": "aaa@aaa.com",
            "memberPassword": "1q2w3e",
            "memberName": "회원1",
        };
        $.ajax({
            type: "post", // key값 (전송방식 등)
            url: "/ajax07", // 주소값
            data: JSON.stringify(member), // js object를 json으로 변환
            contentType: "application/json", // 서버에게 보내는 데이터 타입을 지정
            success: function (res) { // 요청이 잘 처리된 경우
                console.log("요청성공", res);
            },
            error: function () { // 요청이 실패한 경우
                console.log("요청 실패");
            }
        });
    }
    const ajax08 = () => {
        const member = {
            "memberEmail": "aaa@aaa.com",
            "memberPassword": "1q2w3e",
            "memberName": "회원1",
        };
        $.ajax({
            type: "post", // key값 (전송방식 등)
            url: "/ajax08", // 주소값
            data: JSON.stringify(member), // js object를 json으로 변환
                contentType: "application/json", // 서버에게 보내는 데이터 타입을 지정
            success: function (res) { // 요청이 잘 처리된 경우
                console.log("요청성공", res);
                const resultArea = document.getElementById('result-area');
                let result = "<table>";
                for (let i in res) {
                    result += "<tr>";
                    result += "<td>" + res[i].memberEmail + "</td>";
                    result += "<td>" + res[i].memberPassword + "</td>";
                    result += "<tr>";
                }
                result += "</table>"
                resultArea.innerHTML = result;
            },
            error: function () { // 요청이 실패한 경우
                console.log("요청 실패");
            }
        });
    }
    const ajax09 = () => {
        const memberEmail = "aa@aa.com";
        const memberPassword = "1q2q3q";
        const memberName = "member1";
        $.ajax({
            type: "post", // key값 (전송방식 등)
            url: "/ajax09", // 주소값
            data: {
                "memberEmail": memberEmail,
                "memberPassword": memberPassword,
                "memberName": memberName
            },
            success: function (res) { // 요청이 잘 처리된 경우
                console.log("요청성공", res);
                console.log(res.memberEmail);
                console.log(res.memberPassword);
                console.log(res.memberName);
            },
            error: function () { // 요청이 실패한 경우
                console.log("요청 실패");
            }
        });
    }
    const ajax10 = () => {
        const member = {
            "memberEmail": "aaa@aaa.com",
            "memberPassword": "1q2w3e",
            "memberName": "회원1",
        };
        $.ajax({
            type: "post", // key값 (전송방식 등)
            url: "/ajax10", // 주소값
            data: JSON.stringify(member), // js object를 json으로 변환
            contentType: "application/json", // 서버에게 보내는 데이터 타입을 지정
            success: function (res) { // 요청이 잘 처리된 경우
                console.log("요청성공", res);
                // member에 담긴 이름 접근
                console.log ("name",res.member.memberName);
                for(let i in res.memberList){
                    console.log(res.memberList[i]);
                }

            },
            error: function () { // 요청이 실패한 경우
                console.log("요청 실패");
            }
        });
    }
</script>
</html>
