<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/15
  Time: 13:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/inc.jsp" %>
<html>
<head>
    <title>班级公告管理</title>
</head>
<body>
<h1>班级公告管理</h1>

<form action="/notice/create/" method="post">
    <select name="classId">
        <c:forEach var="aclass" items="${sessionScope.classes}">
            <option value="${aclass.id}">${aclass.title}</option>
        </c:forEach>
    </select><br>
    <textarea name="notice" cols="30" rows="10" placeholder="班级公告"></textarea>
    <input type="submit" value="提交">
</form>


</body>
</html>
