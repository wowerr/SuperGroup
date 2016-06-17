<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/inc.jsp" %>
<html>
<head>
    <title>管理就业信息</title>
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

        li > h4 > a {
            color: #c7ddef;
        }

        .kb {
            margin-top: 3em;
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
                <li><h4>欢迎 admin &nbsp;&nbsp;&nbsp;&nbsp; </h4></li>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <li><h4><a href="${ctx}/admin/logout">注销</a></h4></li>
            </ul>
        </div>
    </ul>
</nav>
<div class="kb"></div>
<div class="container">
    <div class="jumbotron">
        <h1 class="text-center">添加就业信息</h1>
    </div>
    <form class="well form-horizontal" action="${ctx}/work/create" method="post">
        <div class="form-group">
            <label class="control-label col-sm-2" for="studentId">学生姓名:</label>
            <div class="col-sm-4">
                <select class="form-control" id="studentId" name="studentId">
                    <c:forEach var="student" items="${sessionScope.students}">
                        <option value="${student.id}">${student.username}:${student.number}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="workUnit">就业单位:</label>
            <div class="col-sm-4">
                <input class="form-control" type="text" name="workUnit" id="workUnit" placeholder="单位"><br>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="position">所任职位:</label>
            <div class="col-sm-4">
                <input class="form-control" type="text" name="position" id="position" placeholder="职位"><br>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-4">
                <button type="submit" class="btn btn-group-lg btn-success">新增</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
