<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/7
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/inc.jsp"%>
<html>
  <head>
    <title>学生登录</title>
  </head>
  <body>
<form action="/student/login" method="post">
  <input type="text" name="email" value="test1@qq.com"><br>
  <input type="password" name="password" value="123"><br>
  <input type="submit" value="登陆">
</form>
${requestScope.message}
  </body>
</html>
