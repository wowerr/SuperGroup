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
    <title>修改学生信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${ctx}/static/bootstrap/css/bootstrap.min.css">
    <script src="${ctx}/static/js/jquery-1.12.3.min.js"></script>
    <script src="${ctx}/static/bootstrap/js/bootstrap.min.js"></script>
    <script src="${ctx}/static/bootstrap/js/bootstrap.file-input.js"></script>
    <script>
        $(function () {
            $('input[type=file]').bootstrapFileInput();
        });
    </script>
    <style type="text/css">
        .kb {
            margin-top: 6em;
        }
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
        li>h4>a {
            color: #c7ddef;
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
                <li><h4>欢迎 ${sessionScope.admin.username} &nbsp;&nbsp;&nbsp;&nbsp; </h4></li>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <li><h4><a href="${ctx}/admin/logout">注销</a></h4></li>
            </ul>
        </div>
    </ul>
</nav>
<div class="kb"></div>

<div class="container">
        <h1 class="text-center">修改学生信息</h1>
    <form class="well form-horizontal" action="${ctx}/student/editStudent" method="post">
        <input type="hidden" name="id" value="${sessionScope.studentSelf.id}">
        <div class="form-group">
            <label class="control-label col-sm-2" for="classId">班级</label>
            <div class="col-sm-4">
                <select class="form-control" id="classId" name="classId">
                    <c:forEach var="aClass" items="${sessionScope.classes}">
                        <option value="${aClass.id}">${aClass.title}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="username">用户名</label>
            <div class="col-sm-4">
                <input class="form-control" id="username" type="text" name="username"  value="${sessionScope.studentSelf.username}">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="password">密码</label>
            <div class="col-sm-4">
                <input class="form-control" id="password" type="password" name="password" value="${sessionScope.studentSelf.password}">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="number">学员编号</label>
            <div class="col-sm-4">
                <input class="form-control" id="number" type="text" name="number" value="${sessionScope.studentSelf.number}">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">性别</label>
            <div class="col-sm-4">
                <label class="radio-inline"><input type="radio" name="gender" value="男" checked="checked">男</label>
                <label class="radio-inline"><input type="radio" name="gender" value="女">女</label>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="idNumber">身份证号</label>
            <div class="col-sm-4">
                <input class="form-control" id="idNumber" type="text" name="idNumber" value="${sessionScope.studentSelf.idNumber}">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="tel">联系方式</label>
            <div class="col-sm-4">
                <input class="form-control" id="tel" type="text" name="tel" value="${sessionScope.studentSelf.tel}">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="email">常用邮箱</label>
            <div class="col-sm-4">
                <input class="form-control" id="email" type="text" name="email" value="${sessionScope.studentSelf.email}">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="startDate">入训日期</label>
            <div class="col-sm-4">
                <input class="form-control" id="startDate" type="date" name="startDate" value="${sessionScope.studentSelf.startDate}">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="finishDate">退训日期</label>
            <div class="col-sm-4">
                <input class="form-control" id="finishDate" type="date" name="finishDate" value="${sessionScope.studentSelf.finishDate}">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="studentState">学员状态</label>
            <div class="col-sm-4">
                <select class="form-control" id="studentState" name="studentState">
                    <option name="studentState" value="no">未开始</option>
                    <option name="studentState" value="start">培训中</option>
                    <option name="studentState" value="end">培训结束</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-4">
                <button type="submit" class="btn btn-group-lg btn-success">修改</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
