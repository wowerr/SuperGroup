<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/inc.jsp" %>
<html>
<head>
    <title>学生登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${ctx}/static/bootstrap/css/bootstrap.min.css">
    <script src="${ctx}/static/js/jquery-1.12.3.min.js"></script>
    <script src="${ctx}/static/bootstrap/js/bootstrap.min.js"></script>
    <script src="${ctx}/static/bootstrap/js/bootstrap.file-input.js"></script>
    <script src="${ctx}/static/css/style.css"></script>

    <style type="text/css">
        img {
            width: 60px;
            height: 60px;
        }

        h1, h5 {
            color: #c7ddef;
        }

        ul, li {
            margin: 0;
            padding: 0;
            font-size: 12px;
            color: #999;
        }

        ul {
            height: 250px;
            overflow: hidden;
        }

        .boxsize {
            width: 500px;
        }

        #navHeah {
            height: 80px;
            background-image: url("${ctx}/static/image/bg1.png");
        }

        h1,a {
            color: #c7ddef;
        }

        .kb {
            margin-top: 7em;
        }
        #selfHome {
            background-color: #07689d;
            height: 1000px;
        }
        .jiuye{
            width: 280px;
            height: 250px;
        }
        .nav>li {
            position: relative;
            /*display: block;*/
        }
        .fieldset{
            color: #3e8f3e;
        }
    </style>
</head>
<body>
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
                <li><h4>欢迎 ${sessionScope.student.username}  </h4></li>
                <li><a href="${ctx}/student/queryByIdStudent/${sessionScope.student.id}">个人首页</a></li>
                <li><a href="${ctx}/student/logout">注销</a></li>
            </ul>
        </div>
        </div>
    </ul>
</nav>
<div class="kb"></div>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-2 col-sm-3 col-md-2 sidebar" id="selfHome">
            <ul class="nav nav-sidebar">
                <li>导航栏</li>
            </ul>
            <ul class="nav nav-sidebar">
                <li><a href="${ctx}/student/queryByIdStudent/${sessionScope.student.id}">个人首页</a></li>
                <li><a href="#">班级信息</a></li>
                <li><a href="#">就业信息</a></li>
            </ul>
        </div>
        <div class="col-lg-2">就业统计图表
        <div><img class="jiuye" src="${ctx}/static/image/jiuye.jpg"></div>
        </div>
        <div class="col-lg-8">
            <div class="col-sm-2 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-3 col-md-5 sidebar">
                            <fieldset>
                                <legend class="fieldset"><h2 class="sub-header">就业信息</h2></legend>
                                <div class="boxsize">
                                    <ul id="list">
                                        <c:forEach var="work" items="${sessionScope.works}" varStatus="vs">
                                            <li>
                                                <div class="table-responsive">
                                                    <table class="table table-striped">
                                                        <tbody>
                                                        <tr>
                                                            <td>${vs.count}</td>
                                                            <td>${work.student.username}</td>
                                                            <td>${work.workUnit}</td>
                                                            <td>${work.position}</td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                </div>
<br><br><br>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-3 col-md-5 sidebar">
                            <fieldset>
                                <legend class="fieldset"><h2 class="sub-header">班级公告</h2></legend>
                                <div class="boxsize">
                                    <ul id="list1">
                                        <c:forEach var="work" items="${sessionScope.works}" varStatus="vs">
                                            <li>
                                                <div class="table-responsive">
                                                    <table class="table table-striped">
                                                        <tbody>
                                                        <tr>
                                                            <td>${vs.count}</td>
                                                            <td>${work.student.username}</td>
                                                            <td>${work.workUnit}</td>
                                                            <td>${work.position}</td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
<script type="text/javascript">
    function scroll(element, delay, speed, lineHeight) {
        var numpergroup = 1;
        var slideBox = (typeof element == 'string') ? document.getElementById(element) : element;
        var delay = delay || 1000;
        var speed = speed || 20;
        var lineHeight = lineHeight || 20;
        var tid = null, pause = false;
        var liLength = slideBox.getElementsByTagName('li').length;
        var lack = numpergroup - liLength % numpergroup;
        for (i = 0; i < lack; i++) {
            slideBox.appendChild(document.createElement("li"));
        }
        var start = function () {
            tid = setInterval(slide, speed);
        }
        var slide = function () {
            if (pause) return;
            slideBox.scrollTop += 2;
            if (slideBox.scrollTop % lineHeight == 0) {
                clearInterval(tid);
                for (i = 0; i < numpergroup; i++) {
                    slideBox.appendChild(slideBox.getElementsByTagName('li')[0]);
                }
                slideBox.scrollTop = 0;
                setTimeout(start, delay);
            }
        }
        slideBox.onmouseover = function () {
            pause = true;
        }
        slideBox.onmouseout = function () {
            pause = false;
        }
        setTimeout(start, delay);
    }
    scroll('list', 1000, 1, 20);//停留时间，相对速度（越小越快）,每次滚动多少，最好和Li的Line-height一致。
    scroll('list1', 1000, 1, 20);//停留时间，相对速度（越小越快）,每次滚动多少，最好和Li的Line-height一致。

</script>