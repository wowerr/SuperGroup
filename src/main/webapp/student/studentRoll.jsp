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
<a href="${ctx}/student/addStudent.jsp">新增学生</a>
<form action="${ctx}/student/searchClassById" method="post">
    <select id="id" name="id">
        <c:forEach var="aClass" items="${sessionScope.classes}">
            <option value="${aClass.id}">${aClass.title}</option>
        </c:forEach>
    </select>
    <input type="submit" value="查询">
</form>
${sessionScope.searchClass}
<hr>
<div style="text-align: center">

<table border="1">
    <tr>
        <th>序号</th>
        <th>班级名称</th>
        <th>开班时间</th>
        <th>结业时间</th>
        <th>费用</th>
        <th>班主任</th>
        <th>班级状态</th>
    </tr>
    <c:forEach var="aclass" items="${sessionScope.classes}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td> <a href="${ctx}/student/searchClassStudent/${aclass.id}">${aclass.title}</a></td>
            <td>${aclass.startDate}</td>
            <td>${aclass.finishDate}</td>
            <td>${aclass.cost}</td>
            <td>${aclass.teacher}</td>
            <td>${aclass.classState}</td>
        </tr>
    </c:forEach>
</table>
    </div>
</body>
</html>
