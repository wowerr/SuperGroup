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
    <style type="text/css">
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
        /*ul li {*/
            /*line-height: 20px;*/
            /*height: 20px;*/
        /*}*/
        .boxsize{
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
                <li><h3>管理就业信息 </h3></li>
                <li><a href="${ctx}/admin/logout">注销</a></li>
            </ul>
        </div>
    </ul>
</nav>
<div class="kb"></div>
<div class="container">
<h2 class="jumbotron">就业信息</h2>
<a href="${ctx}/student/search">添加就业信息</a>
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
                        <td><a href="${ctx}/work/queryWorkById/${work.id}">修改</a></td>
                        <td><a href="${ctx}/work/removeWork/${work.id}">删除</a></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </li>
    </c:forEach>
</ul>
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

</script>