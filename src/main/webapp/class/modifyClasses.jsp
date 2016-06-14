<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/14
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/inc.jsp"%>
<html>
<head>
    <title>更新班级信息</title>
</head>
<body>
<h1>更新班级信息</h1>

<form action="${ctx}/classes/modify" method="post">
    <input type="hidden" name="id" value=${sessionScope.aClasses.id}>
    <input type="text" name="title" placeholder="班级名称" value=${sessionScope.aClasses.title}><br>
    <input type="date" name="startDate" placeholder="开班日期" value=${sessionScope.aClasses.startDate}><br>
    <input type="date" name="finishDate" placeholder="结业日期" value=${sessionScope.aClasses.finishDate}><br>
    <input type="text" name="cost" placeholder="费用" value=${sessionScope.aClasses.cost}><br>
    <input type="text" name="teacher" placeholder="班主任" value=${sessionScope.aClasses.teacher}><br>
    <input type="text" name="classState" placeholder="班级状态" value=${sessionScope.aClasses.classState}><br>
    <input type="submit" value="更新">
</form>
</body>
</html>
