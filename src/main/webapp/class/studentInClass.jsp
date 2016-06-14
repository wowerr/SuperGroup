<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" %>
<%@ include file="/common/inc.jsp" %>
<html>
<head>
    <title>班级学员管理</title>
</head>
<body>
<h1>班级学员管理</h1>

<table border="1">
    <tr>
        <th>序号</th>
        <th>班级ID</th>
        <th>班级名称</th>
        <th>学生ID</th>
        <th>学生姓名</th>
        <th>学号</th>
        <th>入训时间</th>
        <th>结业时间</th>
        <th>学生状态</th>
        <th colspan="2">操作</th>
    </tr>
    ${sessionScope.classToStudents}
    <%--<c:forEach var="classes" items="${sessionScope.classes}" varStatus="vs">--%>
        <%--<tr>--%>
            <%--<td>${vs.count}</td>--%>
            <%--<td>${sessionScope.classes.id}</td>--%>
            <%--<td>${sessionScope.classes.title}</td>--%>
            <%--<td>${classes.students.id}</td>--%>
            <%--<td>${classes.students.username}</td>--%>
            <%--<td>${classes.students.number}</td>--%>
            <%--<td>${classes.students.startDate}</td>--%>
            <%--<td>${classes.students.finishDate}</td>--%>
            <%--<td>${classes.students.studentState}</td>--%>
            <%--<td><a href="">移除学员</a></td>--%>
            <%--<td><a href="">加入班级</a></td>--%>
        <%--</tr>--%>
    <%--</c:forEach>--%>



</table>


</body>
</html>
