<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" %>
<%@ include file="/common/inc.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<a href="${ctx}/class/classes.jsp">添加班级</a><br>
<table border="1">
    <tr>
        <th>序号</th>
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
            <td>${aclass.title}</td>
            <td>${aclass.startDate}</td>
            <td>${aclass.finishDate}</td>
            <td>${aclass.cost}</td>
            <td>${aclass.teacher}</td>
            <td>${aclass.classState}</td>
            <td><a href="">修改班级信息</a></td>
            <td><a href="">班级学员管理</a></td>
            <td><a href="">班级公告发布</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>