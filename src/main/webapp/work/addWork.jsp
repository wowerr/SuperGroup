
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/inc.jsp"%>
<html>
<head>
    <title>管理就业信息</title>
</head>
<body>
<h1>添加就业信息</h1>
<form action="${ctx}/work/create" method="post">
    id=1, workUnit=aaaa, position=beijing, studentId=1
    <input type="text" name="workUnit" placeholder="工作单位"><br>
    <input type="date" name="position" placeholder="职位"><br>
    <input type="date" name="studentId" placeholder="学员"><br>
    <input type="submit" value="提交">
</form>
</body>
</html>
