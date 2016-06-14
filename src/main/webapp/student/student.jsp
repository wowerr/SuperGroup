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
  <h1>welcome....${sessionScope.student.username}</h1>
<a href="">个人首页</a>
<a href="">注销</a>
  <hr>
  <a href="${ctx}/student/queryById/${sessionScope.student.id}">个人首页</a><br>
  <a href="">班级信息</a><br>
  <a href="">班级动态</a><br>
  <a href="">学院动态</a><br>
  <a href="">班级邮件</a><br>
  <a href="">就业信息</a>
  <hr>
  <h4>学生动态</h4>
  ${sessionScope.works}
  </body>
</html>
