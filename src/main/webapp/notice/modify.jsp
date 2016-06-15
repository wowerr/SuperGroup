<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/15
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/notice/modify/${sessionScope.notice.classId}" method="post">
    <input type="hidden" value="${sessionScope.notice.id}">
    <textarea name="notice" cols="30" rows="10" value="">${sessionScope.notice.notice}</textarea><br>
    <input type="submit" value="更新">
</form>

</body>
</html>
