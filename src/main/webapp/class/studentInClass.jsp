<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/inc.jsp" %>
<html>
<head>
    <title>班级学员管理</title>
    <script type="text/javascript" src="${ctx}/static/js/jquery-1.12.3.min.js"></script>
    <script>
        $(function () {

            $('a.remove').click(function () {
                return confirm("确认删除？");
            });
        });

    </script>
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
        <th>操作</th>
    </tr>
    <c:forEach var="student" items="${sessionScope.classes.students}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td>${sessionScope.classes.id}</td>
            <td>${sessionScope.classes.title}</td>
            <td>${student.id}</td>
            <td>${student.username}</td>
            <td>${student.number}</td>
            <td>${student.startDate}</td>
            <td>${student.finishDate}</td>
            <td>${student.studentState}</td>
            <td><a class="remove" href="${ctx}/classes/removeStudent/${student.id}&${sessionScope.classes.id}">移除学员</a>
            </td>
        </tr>
    </c:forEach>


</table>


</body>
</html>
