<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2016-6-16
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Novus Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- chart -->
    <script src="${ctx}/static/js/Chart.js"></script>
    <style type="text/css">
        .pie-grid{
            width: 200px;
            height: 200px;
        }
    </style>
</head>
<body>
<div class="col-md-6 charts chrt-page-grids chrt-right">
    <h4 class="title">Pie Chart</h4>
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
</body>
</html>
