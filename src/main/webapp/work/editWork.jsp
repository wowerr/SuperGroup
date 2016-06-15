<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/inc.jsp" %>
<html>
<head>
    <title>管理就业信息</title>
</head>
<body>
<h1>修改就业信息</h1>
${sessionScope.work}
<hr>
<form action="${ctx}/work/editWork" method="post">
    <%--<input type="text" name="workUnit" value="${sessionScope.work.workUnit}"><br>--%>
    <%--<input type="text" name="studentId" value="${sessionScope.work.student.username}"><br>--%>
    <%--<input type="text" name="position" value="${sessionScope.work.position}"><br>--%>
    <input type="submit" value="提交">
</form>
</body>
</html>
