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
            color: #c4e3f3;
            text-align: center;
            background-color: #6495ed;
            background-image: url("${ctx}/static/image/bg1.png");
        }

        .sys {
            border: 2px solid #6495ed;
            border-radius: 20px 30px;
            margin-left: 200px;
            margin-right: 200px;
            margin-top: 70px;
            padding-left: 10ex;
            padding-right: 50px;
            padding-top: 10px;

        }
h1{

color: #c4e3f3;
}
        .xt {
            margin-right: 80px;
            margin-top: 10px;
            padding-bottom: 2ex;
            padding-left: 10ex;
            padding-right: 10px;
            padding-top: 8px;

        }
img{
    width: 80px;
    height: 80px;
}
img.password{
    width: 30px;
    height: 30px;
}
img.user{
    width: 30px;
    height: 30px;
}
        .login {
            font-size: 0.5em;
            margin-left: 500px;
            margin-right: 50px;
            margin-top: 5px;
            margin-buttom: 100px;
            padding-buttom:50px;
            padding-left: 10px;
            padding-right: 10px;
        }
.loginImage{
    margin-left: 0px;
}
        .dl, .foot {
            margin-right: 0px;
            margin-top: 10px;
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

        <h1 class="xt"><img src="${ctx}/static/image/1.jpg">学员信息管理系统</h1>
    <div class="sys">
        <h3 class="xt">学生登录</h3>
        <form action="/student/login" method="post">
            <div class="form-group">

                <label for="email" class="col-sm-3 control-label"><img class="user" src="${ctx}/static/image/user.png">邮箱：</label>
                <div class="col-sm-6">
                    <input type="email" name="email" class="form-control" id="email"
                           placeholder="email" value="test1@qq.com">
                </div>
<br><br><br>
                <label for="inputPassword" class="col-sm-3 control-label"><img class="password" src="${ctx}/static/image/password.png">密码：</label>
                <div class="col-sm-6">
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
