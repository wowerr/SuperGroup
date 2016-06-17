<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/inc.jsp" %>
<html>
<head>
    <title>学生首页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${ctx}/static/bootstrap/css/bootstrap.min.css">
    <script src="${ctx}/static/js/jquery-1.12.3.min.js"></script>
    <script src="${ctx}/static/bootstrap/js/bootstrap.min.js"></script>
    <script src="${ctx}/static/bootstrap/js/bootstrap.file-input.js"></script>
    <script src="${ctx}/static/css/style.css"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Novus Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- chart -->
    <script src="${ctx}/static/js/Chart.js"></script>
    <style type="text/css">
        .pie-grid{
            width: 230px;
            height: 230px;
        }
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
            height: 2000px;
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
<c:if test="${sessionScope.student eq null}">
    <c:redirect url="/index.jsp"/>
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
                <li><h4>欢迎 ${sessionScope.student.username}  </h4></li>
                <li><a href="${ctx}/student/queryByIdStudent/${sessionScope.student.id}">个人首页</a></li>
                <li><a href="${ctx}/student/logout">注销</a></li>
            </ul>
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
                <li><h4><a href="${ctx}/student/queryByIdStudent/${sessionScope.student.id}">个人首页</a></h4></li>
                <li><h4><a href="${ctx}/student/queryByClassId/${sessionScope.student.classId}">班级公告</a></h4></li>
                <li><h4><a href="#">就业信息</a></h4></li>
            </ul>
        </div>
        <div class="col-lg-2">
            <fieldset>
            <legend class="fieldset"><h2 class="sub-header">就业统计图表</h2></legend></fieldset>
                <h4 class="title">red:就业${sessionScope.totalWork}</h4>
                <h4 class="title">blue:未就业</h4>
            <div class="col-md-6 charts chrt-page-grids chrt-right">
                <div class="pie-grid">
                    <canvas id="pie" height="50" width="50" style="width: 50px; height: 50px;"></canvas>
                </div>
            </div>
            <div class="clearfix"> </div>
            <script>
                var doughnutData = [
                    {
                        value: 30,
                        color:"#4F52BA"
                    },
                    {
                        value : 50,
                        color : "#F2B33F"
                    },
                    {
                        value : 100,
                        color : "#585858"
                    },
                    {
                        value : 40,
                        color : "#e94e02"
                    },
                    {
                        value : 120,
                        color : "#9358ac"
                    }

                ];
                var lineChartData = {
                    labels : ["Sun","Mon","Tue","Wed","Thr","Fri","Sat"],
                    datasets : [
                        {
                            fillColor : "rgba(51, 51, 51, 0)",
                            strokeColor : "#4F52BA",
                            pointColor : "#4F52BA",
                            pointStrokeColor : "#fff",
                            data : [50,65,68,71,67,70,65]
                        },
                        {
                            fillColor : "rgba(51, 51, 51, 0)",
                            strokeColor : "#F2B33F",
                            pointColor : "#F2B33F",
                            pointStrokeColor : "#fff",
                            data : [55,60,54,58,62,55,58]
                        },
                        {
                            fillColor : "rgba(51, 51, 51, 0)",
                            strokeColor : "#e94e02",
                            pointColor : "#e94e02",
                            pointStrokeColor : "#fff",
                            data : [50,55,52,45,46,49,52]
                        }
                    ]

                };
                var pieData = [
                    {
                        value: 30,
                        color:"#4F52BA"
                    },
                    {
                        value : 50,
                        color : "#585858"
                    },
                    {
                        value : 100,
                        color : "#e94e02"
                    }

                ];
                var barChartData = {
                    labels : ["January","February","March","April","May","June","July"],
                    datasets : [
                        {
                            fillColor : "rgba(233, 78, 2, 0.83)",
                            strokeColor : "#ef553a",
                            highlightFill: "#ef553a",
                            data : [65,59,90,81,56,55,40]
                        },
                        {
                            fillColor : "rgba(79, 82, 186, 0.83)",
                            strokeColor : "#4F52BA",
                            highlightFill: "#4F52BA",
                            data : [50,65,60,50,70,70,80]
                        },
                        {
                            fillColor : "rgba(88, 88, 88, 0.83)",
                            strokeColor : "#585858",
                            highlightFill: "#585858",
                            data : [28,48,40,19,96,27,100]
                        }
                    ]

                };
                var chartData = [
                    {
                        value : Math.random(),
                        color: "rgba(239, 85, 58, 0.87)"
                    },
                    {
                        value : Math.random(),
                        color: "rgba(242, 179, 63, 0.87)"
                    },
                    {
                        value : Math.random(),
                        color: "rgba(88, 88, 88, 0.87)"
                    },
                    {
                        value : Math.random(),
                        color: "rgba(147, 88, 172, 0.87)"
                    },
                    {
                        value : Math.random(),
                        color: "rgba(79, 82, 186, 0.87)"
                    },
                ];
                var radarChartData = {
                    labels : ["Sun","Mon","Tue","Wed","Thr","Fri","Sat"],
                    datasets : [
                        {
                            fillColor : "rgba(239, 85, 58, 0.87)",
                            strokeColor : "#e94e02",
                            pointColor : "#e94e02",
                            pointStrokeColor : "#fff",
                            data : [65,59,90,81,56,55,40]
                        },
                        {
                            fillColor : "rgba(79, 82, 186, 0.87)",
                            strokeColor : "#4F52BA",
                            pointColor : "#4F52BA",
                            pointStrokeColor : "#fff",
                            data : [28,48,40,19,96,27,100]
                        }
                    ]

                };
                new Chart(document.getElementById("pie").getContext("2d")).Pie(pieData);
            </script>
            <!-- Classie -->
            <%--<script src="${ctx}/static/js/classie.js"></script>--%>
            <script>
                var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
                        showLeftPush = document.getElementById( 'showLeftPush' ),
                        body = document.body;

                showLeftPush.onclick = function() {
                    classie.toggle( this, 'active' );
                    classie.toggle( body, 'cbp-spmenu-push-toright' );
                    classie.toggle( menuLeft, 'cbp-spmenu-open' );
                    disableOther( 'showLeftPush' );
                };

                function disableOther( button ) {
                    if( button !== 'showLeftPush' ) {
                        classie.toggle( showLeftPush, 'disabled' );
                    }
                }
            </script>
            <!--scrolling js-->
            <script src="${ctx}/static/js/jquery.nicescroll.js"></script>
            <script src="${ctx}/static/js/scripts.js"></script>
            <!--//scrolling js-->
            <!-- Bootstrap Core JavaScript -->
            <script src="js/bootstrap.js"> </script>
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
<br>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-3 col-md-5 sidebar">
                            <fieldset>
                                <legend class="fieldset"><h2 class="sub-header"><a href="${ctx}/student/queryByClassId/${sessionScope.student.classId}">班级公告</a></h2></legend>
                                <div class="boxsize">
                                    <ul id="list1">
                                        <c:forEach var="notices" items="${sessionScope.classNotices.notices}" varStatus="vs">
                                            <li>
                                                <div class="table-responsive">
                                                    <table class="table table-striped">
                                                        <tbody>
                                                        <tr>
                                                            <td>${vs.count}</td>
                                                            <td>${notices.notice}</td>
                                                            <td>${notices.classId}</td>
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