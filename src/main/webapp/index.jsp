<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/7
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/inc.jsp" %>
<html>
<head>
    <title>学员信息管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" charset="UTF-8">
    <link href="${ctx}/static/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="${ctx}/static/css/bootstrap.min.css" rel="stylesheet"/>
    <style type="text/css"></style>
    <style>
        body {
            font-size: 18px;
            font-family: "微软雅黑";
            color: #666;
            text-align: center;
            background-color: #6495ed;
        }

        .sys {
            border: 2px solid #6495ed;
            border-radius: 20px 30px;
            margin-left: 120px;
            margin-right: 180px;
            margin-top: 70px;
            padding-bottom: 5ex;
            padding-left: 10ex;
            padding-right: 100px;
            padding-top: 20px;
            background-color: #ddd;
        }

        .xt {

            margin-right: 80px;
            margin-top: 10px;
            padding-bottom: 2ex;
            padding-left: 10ex;
            padding-right: 10px;
            padding-top: 8px;

        }

        .login {
            font-size: 0.5em;
            margin-left: 800px;
            margin-right: 50px;
            margin-top: 10px;
            margin-buttom: 100px;
            padding-top: 10px;
            padding-buttom: 100px;
            padding-left: 10px;
            padding-right: 10px;
        }

        .dl, .foot {

            margin-right: 0px;
            margin-top: 30px;
            margin-buttom: 100px;
            padding-top: 110px;

            padding-left: 200px;
            padding-right: 10px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="login">
        <a href="${ctx}/admin/admin.jsp">
            <button>管理员登陆</button>
        </a>
    </div>

    <div class="sys">



        <h2 class="xt">学员信息管理系统</h2>
        <h3 class="xt">学生登录</h3>
        <form action="/student/login" method="post">
            <div class="form-group">

                <label for="email" class="col-sm-2 control-label">邮箱：</label>
                <div class="col-sm-10">
                    <input type="email" name="email" class="form-control" id="email"
                           placeholder="email" value="test1@qq.com">
                </div>

                <label for="inputPassword" class="col-sm-2 control-label">密码：</label>
                <div class="col-sm-10">
                    <input type="password" name="password" class="form-control" id="inputPassword"
                           placeholder="密码" value="123">
                </div>
            </div>
            <div class="dl">
                <button type="submit" class="btn btn-default">登录</button>
            </div>
        </form>
        ${requestScope.message}
    </div>


</div>

<footer class="foot">

    <p>联系电话：010-8888888</p>
    <p>地址：北京市海淀区清华大学</p>

</footer>


</body>
</html>
