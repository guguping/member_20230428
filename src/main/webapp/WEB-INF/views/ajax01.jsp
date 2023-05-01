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
</head>
<body>
<button onclick="ajax01()">함수호출01</button>
<button onclick="ajax02()" formmethod="post">함수호출02</button>
<button onclick="ajax03()">함수호출03</button>
<button onclick="ajax04()" formmethod="post">함수호출04</button>
<button onclick="ajax05()">함수호출05</button>
<button onclick="ajax06()">함수호출06</button>
</body>
<script>
    const ajax01 = () => {
        $.ajax({
            type:"get", // key값 (전송방식 등)
            url: "/ajax01", // 주소값
            success: function (res) { // 요청이 잘 처리된 경우
                console.log("요청성공",res);
            },
            error: function (){ // 요청이 실패한 경우
                console.log("요청 실패");
            }
        });
    }
    const ajax02 = () => {
        $.ajax({
            type:"post", // key값 (전송방식 등)
            url: "/ajax02", // 주소값
            success: function (res) { // 요청이 잘 처리된 경우
                console.log("요청성공",res);
            },
            error: function (){ // 요청이 실패한 경우
                console.log("요청 실패");
            }
        });
    }
    const ajax03 = () => {
        const var1 = "hello monday";
        $.ajax({
            type:"get", // key값 (전송방식 등)
            url: "/ajax03", // 주소값
            data: {
                param1: var1,
                param2: "hi hi"
            },
            success: function (res) { // 요청이 잘 처리된 경우
                console.log("요청성공",res);
            },
            error: function (){ // 요청이 실패한 경우
                console.log("요청 실패");
            }
        });
    }
    const ajax04 = () => {
        const var1 = "hello monday";
        $.ajax({
            type:"post", // key값 (전송방식 등)
            url: "/ajax04", // 주소값
            data: {
                param1: var1,
                param2: "hi hi",
                qqq:"abcdefg"
            },
            success: function (res) { // 요청이 잘 처리된 경우
                console.log("요청성공",res);
            },
            error: function (){ // 요청이 실패한 경우
                console.log("요청 실패");
            }
        });
    }
    const ajax05 = () => {
        const memberEmail = "aa@aa.com";
        const memberPassword = "1q2q3q";
        const memberName = "member1";
        $.ajax({
            type:"get", // key값 (전송방식 등)
            url: "/ajax05", // 주소값
            data: {
                "memberEmail" : memberEmail,
                "memberPassword" : memberPassword,
                "memberName" : memberName
            },
            success: function (res) { // 요청이 잘 처리된 경우
                console.log("요청성공",res);
                console.log(res.memberEmail);
                console.log(res.memberPassword);
                console.log(res.memberName);
            },
            error: function (){ // 요청이 실패한 경우
                console.log("요청 실패");
            }
        });
    }
    const ajax06 = () => {
        $.ajax({
            type:"get", // key값 (전송방식 등)
            url: "/ajax06", // 주소값
            success: function (res) { // 요청이 잘 처리된 경우
                console.log("요청성공",res);
                for (let i in res){
                    console.log(res[i]);
                    console.log(res[i].memberEmail);
                }
            },
            error: function (){ // 요청이 실패한 경우
                console.log("요청 실패");
            }
        });
    }
</script>
</html>
