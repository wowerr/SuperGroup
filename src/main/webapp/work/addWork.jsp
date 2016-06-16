<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/inc.jsp" %>
<html>
<head>
    <title>管理就业信息</title>
</head>
<body>
<h1>添加就业信息</h1>


<form action="${ctx}/work/create" method="post">
    <input type="text" name="workUnit" placeholder="工作单位"><br>
    <input type="text" name="position" placeholder="职位"><br>
    <select name="studentId">
        <c:forEach var="student" items="${sessionScope.students}">
            <option value="${student.id}">${student.username}</option>
        </c:forEach>
    </select><br>
    <input type="submit" value="提交">
</form>
</body>
</html>
