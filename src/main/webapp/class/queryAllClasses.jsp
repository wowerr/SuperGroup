<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" %>
<%@ include file="/common/inc.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<a href="${ctx}/student/queryAll">学籍管理</a><br>
<a href="${ctx}/work/queryAllWork">学生就业信息管理</a><br>
<a href="${ctx}/class/classes.jsp">添加班级</a><br>
<a href="${ctx}/classes/query">发布公告</a>
<table border="1">
    <tr>
        <th>序号</th>
        <th>ID</th>
        <th>班级名称</th>
        <th>开班时间</th>
        <th>结业时间</th>
        <th>费用</th>
        <th>班主任</th>
        <th>班级状态</th>
        <th colspan="3">操作</th>
    </tr>
    <c:forEach var="aclass" items="${sessionScope.classes}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td>${aclass.id}</td>
            <td>${aclass.title}</td>
            <td>${aclass.startDate}</td>
            <td>${aclass.finishDate}</td>
            <td>${aclass.cost}</td>
            <td>${aclass.teacher}</td>
            <td>${aclass.classState}</td>
            <td><a href="${ctx}/classes/searchById/${aclass.id}">修改班级信息</a></td>
            <td><a href="${ctx}/classes/searchClassStudent/${aclass.id}">班级学员管理</a></td>
            <td><a href="${ctx}/notice/queryByClassId/${aclass.id}">公告管理</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
