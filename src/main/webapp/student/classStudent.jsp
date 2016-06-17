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
    <title>班级学生管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${ctx}/static/bootstrap/css/bootstrap.min.css">
    <script src="${ctx}/static/js/jquery-1.12.3.min.js"></script>
    <script src="${ctx}/static/bootstrap/js/bootstrap.min.js"></script>
    <script src="${ctx}/static/bootstrap/js/bootstrap.file-input.js"></script>

    <style type="text/css">
        .boxsize {
            width: 500px;
        }

        #navHeah {
            height: 100px;
            background-image: url("${ctx}/static/image/bg1.png");
        }

        img {
            width: 80px;
            height: 80px;
        }

        h1, h5 {
            color: #c7ddef;
        }
        .kb {
            margin-top: 7em;
        }
    </style>
</head>
<body>
<c:if test="${sessionScope.admin eq null}">
    <c:redirect url="/admin/admin.jsp"/>
</c:if>
<nav id="navHeah" class="navbar navbar-inverse navbar-fixed-top">
    <ul class="container-fluid">
        <div class="navbar-header">
            <ul class=" nav navbar-nav">
                <li>
                    <h1><img src="${ctx}/static/image/1.jpg">学员信息管理系统</h1></li>
            </ul>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><h3>${sessionScope.classesStudents.title}班级学生管理&nbsp;&nbsp;&nbsp; </h3></li>
                <li><a href="${ctx}/class/queryAllClasses.jsp">首页&nbsp;</a></li>
                <li><a href="${ctx}/admin/logout">注销&nbsp;</a></li>
            </ul>
        </div>
    </ul>
</nav>
<div class="kb"></div>
<div style="text-align: center">
    <hr>
    <h2>班主任：${sessionScope.classesStudents.teacher}</h2>
    <h3>${sessionScope.classesStudents.startDate} - ${sessionScope.classesStudents.finishDate}</h3>
</div>
<div style="text-align: center">
    <table class="table">
        <thead>
    <tr>
        <th>序号</th>
        <th>用户名</th>
        <th>学号</th>
        <th>性别</th>
        <th>身份证号</th>
        <th>电话</th>
        <th>邮箱</th>
        <th>入训日期</th>
        <th>结业日期</th>
        <th>学生状态</th>
        <th colspan="2">操作</th>
    </tr>
    </thead>
        <tbody>
    <c:forEach var="classesStudent" items="${sessionScope.classesStudents.students}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td>${classesStudent.username}</td>
            <td>${classesStudent.number}</td>
            <td>${classesStudent.gender}</td>
            <td>${classesStudent.idNumber}</td>
            <td>${classesStudent.tel}</td>
            <td>${classesStudent.email}</td>
            <td>${classesStudent.startDate}</td>
            <td>${classesStudent.finishDate}</td>
            <td>${classesStudent.studentState}</td>
            <td><a href="${ctx}/student/queryById/${classesStudent.id}">编辑</a></td>
            <td><a class="remove" href="${ctx}/student/removeStudent/${classesStudent.id}">删除</a></td>
        </tr>
    </c:forEach>
        </tbody>
</table>
    </div>
</body>
</html>
<script>
    $(document).ready(function(){
        SetTableRowColor();
    });
    //用CSS控制奇偶行的颜色
    function SetTableRowColor()
    {
        $("Table tr:odd").css("background-color", "#e6e6fa");
        $("Table tr:even").css("background-color", "#c7ddef");
    }
</script>

