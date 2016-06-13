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
<h1>学籍管理</h1>
<a href="">注销</a>
<a href="${ctx}/classes/queryClasses">新增学生</a>
<form action="/admin/queryStudent" method="post">
    <select>
        <c:forEach var="aClass" items="${sessionScope.classes}">
            <option value="${aClass.id}">${aClass.title}</option>
        </c:forEach>
    </select>
    <input type="text" name="username" placeholder="用户名">
    <input type="submit" value="查询">
</form>
<table border="1">
    <tr>
        <th>序号</th>
        <th>班级名称</th>
        <th>用户名</th>
        <th>密码</th>
        <th>学号</th>
        <th>性别</th>
        <th>身份证号</th>
        <th>电话</th>
        <th>邮箱</th>
        <th>入训日期</th>
        <th>结业日期</th>
        <th>学生状态</th>
        <th colspan="3">操作</th>
    </tr>
    <c:forEach var="aClass" items="${sessionScope.classes}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td><a href="${ctx}/class/students/${aClass.id}">${aClass.title}</a></td>
            <td>${aClass.student.username}</td>
            <td>${aClass.student.password}</td>
            <td>${aClass.student.number}</td>
            <td>${aClass.student.gender}</td>
            <td>${aClass.student.idNumber}</td>
            <td>${aClass.student.tel}</td>
            <td>${aClass.student.email}</td>
            <td>${aClass.student.startDate}</td>
            <td>${aClass.student.finishDate}</td>
            <td>${aClass.student.studentState}</td>
            <td><a href="${ctx}/student/search/${aClass.student.id}">编辑</a></td>
            <td><a class="remove" href="${ctx}/student/remove/${aClass.student.id}">删除</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
