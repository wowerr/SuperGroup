<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/15
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/inc.jsp" %>
<html>
<head>
    <title>Title</title>
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
    <script>
        $(function () {

            $('a.remove').click(function () {
                return confirm("确认删除？");
            });
        });

    </script>
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
                <li><h3>班级公告管理 </h3></li>
                <li><a href="${ctx}/admin/logout">注销</a></li>
            </ul>
        </div>
    </ul>
</nav>
<div class="kb"></div>
<div style="text-align: center"><h1>修改班级公告</h1>

    <form class="well form-horizontal" action="/notice/modify/${sessionScope.notice.classId}" method="post">
        <div class="form-group">
            <label class="control-label col-sm-2" for="notice">公告内容：</label>
            <div class="col-sm-4">
                    <input type="hidden" name="id" value="${sessionScope.notice.id}">
                    <textarea id="notice" name="notice" cols="30" rows="10" value="">${sessionScope.notice.notice}</textarea><br>
            </div>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-group-lg btn-success">更新</button>
        </div>

    </form>
</div>
</body>
</html>
