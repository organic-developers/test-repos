<%--
  Created by IntelliJ IDEA.
  User: Saied
  Date: 8/12/2015
  Time: 3:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>صفحه ورود</title>

    <!-- Bootstrap Core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Core CSS RTL-->
    <link href="/css/bootstrap-rtl.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="/css/added.css"/>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style>
        body {
            padding-top: 0px;
            padding-bottom: 0px;
            background-color: #eee;
        }

        .form-signin {
            max-width: 330px;
            padding: 15px;
            margin: 0 auto;

        }

        .form-signin .form-signin-heading, .form-signin .checkbox {
            margin-bottom: 10px;
        }

        .form-signin input[type="text"] {
            margin-bottom: -1px;
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }

        .form-signin input[type="password"] {
            margin-bottom: 10px;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }

        .form-signin .checkbox {
            font-weight: normal;
        }

        .form-signin .form-control {
            position: relative;
            height: auto;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            padding: 10px;
            font-size: 16px;
        }
    </style>

</head>
<body style="height: 100%;">

<!-- .navbar -->
<div class="navbar navbar-inverse navbar-index" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="/index">سامانه انجمن های علمی<span
                    class="hidden-lg hidden-md  glyphicon glyphicon-phone pull-left"
                    style="padding-right:    17px;"></span></a>
        </div>
    </div>
</div>
<!-- /.navbar -->

<div class="container">
    <form class="form-signin" id="login-form" action="/Controller/ServletLogin" method="post">
        <h2 class="form-signin-heading">اطلاعات خود را وارد کنید</h2>
        <label for="id" class="sr-only">نام کاربری</label>
        <input type="text" name="user_name" id="id" class="form-control" placeholder="نام کاربری" required="required"
               autofocus="autofocus">
        <label for="inputPassword" class="sr-only">رمز عبور</label>
        <input type="password" name="password" id="inputPassword" class="form-control" placeholder="رمز عبور"
               required="required">

        <div class="checkbox">
            <label><input type="checkbox" value="remember-me" style="margin-right: -20px">به خاطر بسپار</label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">ورود</button>
    </form>

</div>
<!-- /container -->


<%--<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->--%>
<%--<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>--%>


</body>
</html>
