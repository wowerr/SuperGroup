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
    </style>


</head>
<body>
<h1>管理就业信息</h1>
<a href="${ctx}/work/addWork.jsp">添加就业信息</a><br>
<hr>
<h2 class="sub-header">就业信息</h2>
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