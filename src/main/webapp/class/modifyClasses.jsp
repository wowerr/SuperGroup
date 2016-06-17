<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/inc.jsp" %>
<html>
<head>
    <title>更新班级信息</title>
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
                <li><h4>欢迎 ${sessionScope.admin.username} &nbsp;&nbsp;&nbsp;&nbsp; </h4></li>
                班级管理页面&nbsp;&nbsp;&nbsp;&nbsp;
                <li><h4><a href="${ctx}/admin/logout">注销</a></h4></li>
            </ul>
        </div>
    </ul>
</nav>
<div class="kb"></div>
<div class="container">
    <div class="jumbotron">
        <h1 class="text-center">更新班级信息</h1>
    </div>
    <form class="well form-horizontal" action="${ctx}/classes/modify" method="post">
        <input type="hidden" name="id" value=${sessionScope.aClasses.id}>
        <div class="form-group">
            <label class="control-label col-sm-2" for="title">班级名称</label>
            <div class="col-sm-4">
                <input class="form-control" id="title" type="text" name="title"
                       value=${sessionScope.aClasses.title}><br>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="startDate">开班日期</label>
            <div class="col-sm-4">
                <input class="form-control" id="startDate" type="date" name="startDate"
                       value=${sessionScope.aClasses.startDate}>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="finishDate">结业日期</label>
            <div class="col-sm-4">
                <input class="form-control" id="finishDate" type="date" name="finishDate"
                       value=${sessionScope.aClasses.finishDate}>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="cost">费用</label>
            <div class="col-sm-4">
                <input class="form-control" id="cost" type="text" name="cost" value=${sessionScope.aClasses.cost}><br>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="teacher">班主任</label>
            <div class="col-sm-4">
                <input class="form-control" id="teacher" type="text" name="teacher"
                       value=${sessionScope.aClasses.teacher}><br>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="classState">班级状态</label>
            <div class="col-sm-4">
                <select class="form-control" id="classState" type="text" name="classState"
                        title="${sessionScope.aClasses.classState}">
                    <option name="classState" value="no">未开始</option>
                    <option name="classState" value="start">培训中</option>
                    <option name="classState" value="end">培训结束</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-4">
                <button type="submit" class="btn btn-group-lg btn-success">更新</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
