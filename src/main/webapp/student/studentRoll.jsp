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
<script>
    console.log(${sessionScope.students})
</script>
<body>
<h1>学籍管理</h1>
<a href="">注销</a>
<a href="${ctx}/student/addStudent.jsp">新增学生</a>
<form action="${ctx}/student/queryClassesStudents" method="post">
    <select>
        <c:forEach var="aClass" items="${sessionScope.classes}">
            <option name="id" value="${aClass.id}">${aClass.title}</option>
        </c:forEach>
    </select>
    <%--<input type="text" name="username" placeholder="用户名">--%>
    <input type="submit" value="查询">
</form>
<hr>
<div style="text-align: center">
    ${sessionScope.classes}
    <%--<p><a href="${ctx}/classes/searchClassStudent/${sessionScope.classes.id}">${sessionScope.classes.title}</a></p>--%>
    <%--<p>${sessionScope.aClass.startDate} - ${sessionScope.aClass.finishDate}</p>--%>
</div>
<table border="1">
    <tr>
        <th>序号</th>
        <th>班级名</th>
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
    <c:forEach var="classStudent" items="${sessionScope.classStudents}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>

            <td>${classStudent.username}</td>
            <td>${classStudent.number}</td>
            <td>${classStudent.gender}</td>
            <td>${classStudent.idNumber}</td>
            <td>${classStudent.tel}</td>
            <td>${classStudent.email}</td>
            <td>${classStudent.startDate}</td>
            <td>${classStudent.finishDate}</td>
            <td>${classStudent.studentState}</td>
            <td><a href="${ctx}/student/queryById/${classStudent.id}">编辑</a></td>
            <td><a class="remove" href="${ctx}/student/removeStudent/${classStudent.id}">删除</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
