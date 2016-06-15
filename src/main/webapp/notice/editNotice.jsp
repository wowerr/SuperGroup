<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/15
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/inc.jsp"%>
<html>
<head>
    <title>Title</title>
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
<h1>班级公告管理</h1>
<table border="1">
    <tr>
        <th>班级名称</th>
        <th>公告内容</th>
        <th colspan="2">操作</th>
    </tr>
    <c:forEach var="notice" items="${sessionScope.classes.notices}" varStatus="vs">
        <tr>
            <td>${sessionScope.classes.title}</td>
            <td>${notice.notice}</td>
            <td><a class="remove" href="/notice/remove/${notice.id}&${sessionScope.classes.id}">删除</a></td>
            <td><a href="/notice/searchById/${notice.id}">修改</a></td>
        </tr>

    </c:forEach>
</table>



</body>
</html>
