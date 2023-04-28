<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-28
  Time: 오후 3:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>footer</title>
</head>
<body>
<div id="footer">

</div>
</body>
<script>
  const date = new Date();
  console.log(date);
  console.log(date.getFullYear());
  const footer = document.getElementById('footer');
  footer.innerHTML = "<p>&copy"+date.getFullYear() + "&nbsp;HRDKOREA All rights reserved."
</script>
</html>
