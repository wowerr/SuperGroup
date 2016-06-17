<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/inc.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>管理员管理学籍信息</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${ctx}/static/bootstrap/css/bootstrap.min.css">
    <script src="${ctx}/static/js/jquery-1.12.3.min.js"></script>
    <script src="${ctx}/static/bootstrap/js/bootstrap.min.js"></script>
    <script src="${ctx}/static/bootstrap/js/bootstrap.file-input.js"></script>
    <script language="javascript" src="${ctx}/static/js/jquery.js"></script>
    <style type="text/css">
        <!--
        * {
            margin: 0px;
            padding: 0px;
        }

        html, body {
            height: 100%;
            overflow: hidden;

        }

        html > body { /*-- for !IE6.0 --*/
            width: auto;
            height: auto;
            position: absolute;
            top: 0px;
            left: 0px;
            right: 0px;
            bottom: 0px;

        }

        body {
            border: 8px solid #ffffff;
            background-color: #ffffff;
            min-width: 230px;
        }

        #mainDiv {
            width: 100%;
            height: 100%;
            padding: 60px 0px 25px 0px;;

        }

        #centerDiv {
            width: 100%;
            height: 100%;
            background-color: #00CCFF;
            padding-left: 158px;
        }

        #mainDiv > #centerDiv { /*-- for !IE6.0 --*/
            width: auto;
            height: auto;
            position: absolute;
            top: 56px;
            left: 0px;
            right: 0px;
            bottom: 20px;

        }

        #left {
            width: 158px;
            height: 100%;
            background: url("${ctx}/static/image/slide.jpg") repeat-y;
            position: absolute;
            left: 0px;
        }

        #lhead {
            background: url("${ctx}/static/image/left-head.jpg") left top no-repeat;
            height: 25px;
            font-size: 14px;
            color: #FF9933;
            text-align: center;
            line-height: 25px;
        }

        #right {
            width: 100%;
            height: 100%;
            background: #ffffff;
            position: absolute;
            overflow-y: auto;
            border: 1px #003366 solid;
            padding: 20px 0 0 10px;
            font-size: 12px;
            font-family: "宋体";
        }

        #centerDiv > #right {
            width: auto;
            height: auto;
            position: absolute;
            top: 0px;
            right: 0px;
            left: 158px;
            bottom: 0px;
        }

        #topDiv {
            width: 100%;
            height: 56px;

            background: url("${ctx}/static/image/head-bg.jpg") repeat-x;
            position: absolute;
            top: 0px;
            overflow: hidden;
        }

        #topDiv ul {
            list-style: none;
            font-size: 12px;

            width: 100%;
            margin: 0;
            padding: 0;
        }

        #topDiv ul li {
            float: left;
            width: 15%
        }

        #topDiv ul li a {
            display: block;
            width: 100%;
            height: 25px;
            line-height: 25px;
            background: url("${ctx}/static/image/menu-bg.jpg") repeat-x;
            color: #FFFFFF;
            direction: none;
            text-align: center;
            border-bottom: 1px #000066 solid;
            border: 1px #06597D solid;
        }

        #tmenu {
            width: 100%;
            position: absolute;
            left: 12%;
            bottom: 0;
            padding-left: 15%;
            margin-left: -15%;
        }

        #current {
            background: #ccc;
            height: 25px;
            line-height: 25px;
            margin: -20px 0 0 -10;
            overflow: hidden;
        }

        #bottomDiv {
            width: 100%;
            height: 20px;
            background: url("${ctx}/static/image/bottom.jpg") repeat-x;
            position: absolute;
            bottom: 0px;
            bottom: -1px; /*-- for IE6.0 --*/
        }

        #left ul {
            list-style: none;
            font-size: 12px;
            margin: 50px 0 0 8px;
        }

        #left ul li a {
            display: block;
            width: 140px;
            height: 25px;
            line-height: 25px;
            background: url("${ctx}/static/image/menu-bg.jpg") repeat-x;
            color: #FFFFFF;
            direction: none;
            text-align: center;
            border-bottom: 1px #000066 solid;
            border: 1px #06597D solid;
        }

        #left ul li a:hover {

            background: url("${ctx}/static/image/menu-bg.jpg") 0px 25px;
            color: #99FFCC;
            direction: none;
            text-align: center;
            border-bottom: 1px #000066 solid;
        }

        fieldset {
            width: 100%;
            margin: 20 auto;
            line-height: 35px;
            padding-left: 20PX;
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

        .kb {
            margin-top: 7em;
        }

        .search-box {
            float: left;
            width: 34%;
            margin: 1.2em 0 0 3em;
            position: relative;
            z-index: 1;
            display: inline-block;
        }

        /*#form {*/
        /*width: 80%;*/
        /*height: 99%;*/
        /*margin: 0 auto;*/
        /*_margin-left: 20%;*/

        /*}*/

        -->
    </style>
</head>
<body>
<c:if test="${sessionScope.admin eq null}">
    <c:redirect url="/admin/admin.jsp"/>
</c:if>
<div id="mainDiv">
    <div id="topDiv">
        <div id="tmenu">
            <ul>
                <li><a href="${ctx}/class/queryAllClasses.jsp">首页</a></li>
                <li><a href="${ctx}/student/addStudent.jsp">新增学生</a></li>
                <li><a href="#">菜单栏</a></li>
                <li><a href="#">菜单栏</a></li>
                <li><a href="${ctx}/admin/logout">注销</a></li>
            </ul>
        </div>
    </div>
    <div id="centerDiv">

        <div id="left">
            <div id="lhead">学籍管理菜单</div>
        </div>
        <div id="right">
            <div id="current">&nbsp;&nbsp;&nbsp;&nbsp;当前位置:学籍管理</div>
            <div id="form">
                <form action="${ctx}/student/searchClassById" method="post" class="search-box">
                    <select id="id" name="id">
                        <c:forEach var="aClass" items="${sessionScope.classes}">
                            <option value="${aClass.id}">${aClass.title}</option>
                        </c:forEach>
                    </select>
                    <input type="submit" value="查询">
                </form>
                <div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"></h3>
                        </div>
                        <div class="panel-body"></div>
                        <p>班级名称：${sessionScope.searchClass.title} </p>
                        <p>开班时间：${sessionScope.searchClass.startDate} </p>
                        <p>结业时间：${sessionScope.searchClass.finishDate}</p>
                        <p>费用：${sessionScope.searchClass.cost}</p>
                        <p>班主任：${sessionScope.searchClass.teacher} </p>
                        <p>班级状态：${sessionScope.searchClass.classState}</p>
                    </div>
                </div>
                <hr>
                <div style="text-align: center">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>序号</th>
                            <th>班级名称</th>
                            <th>开班时间</th>
                            <th>结业时间</th>
                            <th>费用</th>
                            <th>班主任</th>
                            <th>班级状态</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="aclass" items="${sessionScope.classes}" varStatus="vs">
                            <tr>
                                <td>${vs.count}</td>
                                <td><a href="${ctx}/student/searchClassStudent/${aclass.id}">${aclass.title}</a></td>
                                <td>${aclass.startDate}</td>
                                <td>${aclass.finishDate}</td>
                                <td>${aclass.cost}</td>
                                <td>${aclass.teacher}</td>
                                <td>${aclass.classState}</td>
                            </tr>
                        </c:forEach>
                        </tbody>

                    </table>
                </div>
            </div>
        </div>
    </div>
    <div id="bottomDiv"></div>
</div>
<script language="javascript">
    $("#test1").toggle(function () {
        $("#test").slideDown()
    }, function () {
        $("#test").slideUp()
    })

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
    </body>
</html>
