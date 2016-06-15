<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/13
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/inc.jsp" %>
<html>
<head>
    <title>admin index</title>
</head>
<body>
<h1>${sessionScope.classesStudents.title}班级学生管理</h1>
<a href="${ctx}/admin/logout">注销</a>
<div style="text-align: center">
    <hr>
    <h2>${sessionScope.classesStudents.teacher}</h2>
    <h3>${sessionScope.classesStudents.startDate} - ${sessionScope.classesStudents.finishDate}</h3>
</div>
<table border="1">
    <tr>
        <th>序号</th>
        <th>用户名</th>
        <th>学号</th>
        <th>性别</th>
        <th>身份证号</th>
        <th>电话</th>
        <th>邮箱</th>
        <th>入训日期</th>
        <th>结业日期</th>
        <th>学生状态</th>
        <th colspan="2">操作</th>
    </tr>
    <c:forEach var="classesStudent" items="${sessionScope.classesStudents.students}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td>${classesStudent.username}</td>
            <td>${classesStudent.number}</td>
            <td>${classesStudent.gender}</td>
            <td>${classesStudent.idNumber}</td>
            <td>${classesStudent.tel}</td>
            <td>${classesStudent.email}</td>
            <td>${classesStudent.startDate}</td>
            <td>${classesStudent.finishDate}</td>
            <td>${classesStudent.studentState}</td>
            <td><a href="${ctx}/student/queryById/${classesStudent.id}">编辑</a></td>
            <td><a class="remove" href="${ctx}/student/removeStudent/${classesStudent.id}">删除</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
