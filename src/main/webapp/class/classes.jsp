<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/13
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>班级首页</title>
</head>
<body>
<h1>班级管理页面</h1>
<hr>
<h2>新增班级</h2>
<form action="" method="post">
    <input type="text" name="title" placeholder="班级名称"><br>
    <input type="date" name="startDate" placeholder="开班日期"><br>
    <input type="date" name="finishDate" placeholder="结业日期"><br>
    <input type="text" name="cost" placeholder="费用"><br>
    <input type="text" name="teacher" placeholder="班主任"><br>
    <input type="text" name="classState" placeholder="班级状态"><br>
    <input type="submit" value="提交">
</form>


</body>
</html>
