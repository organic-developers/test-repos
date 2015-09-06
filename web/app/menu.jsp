<%@ page import="Models.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>سامانه انجمن های علمی</title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="./Stylesheet">

    <!-- Bootstrap Core CSS RTL-->
    <link href="../css/bootstrap-rtl.min.css" rel="./Stylesheet">

    <!-- Custom CSS -->
    <link href="../css/sb-admin.css" rel="./Stylesheet">
    <link href="../css/sb-admin-rtl.css" rel="./Stylesheet">

    <!-- Morris Charts CSS -->
    <link href="../css/plugins/morris.css" rel="./Stylesheet">

    <!-- Custom Fonts -->
    <link href="../font-awesome/css/font-awesome.min.css" rel="./Stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>
<body>


<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="./Sr-only">لیست گزینه ها</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="/index.jsp">سامانه انجمن هاي علمي</a>
    </div>

    <!-- Top Menu Items -->
    <ul class="nav navbar-left top-nav">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>
                <%--@elvariable id="user" type=""--%>
                <c:out value="${user.fName}"/>
                <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li>
                    <a href="#"><i class="fa fa-fw fa-gear"></i> تنظيمات</a>
                </li>
                <li class="divider"></li>
                <li>
                    <a href="../Controller/ServletLogout"><i class="fa fa-fw fa-power-off"></i>خروج</a>
                </li>
            </ul>
        </li>
    </ul>

    <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
    <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav side-nav">
            <li>
                <a href="../Controller/ServletDashboardIndex"><i class="fa fa-fw fa-dashboard"></i> خانه</a>
            </li>
            <li>
                <a href="../Controller/ServletReport"><i class="fa fa-fw fa-bar-chart-o"></i> سيستم گزارش گيري</a>
            </li>
            <li>
                <a href="../Controller/ServletMenu"><i class="fa fa-fw fa-users"></i> اعضا</a>
            </li>
            <li>
                <a href="../Controller/ServletEmailing"><i class="fa fa-fw fa-envelope"></i>سیستم اطلاع رسانی </a>
            </li>
            <li class="hide">
                <a href="../Controller/ServletEvaluation"><i class="fa fa-fw  fa-tasks"></i> ارزيابي طرح ها </a>
            </li>
            <li>
                <a href="../Controller/ServletCreateplan"><i class="fa fa-fw fa-file-text"></i> تعريف طرح</a>
            </li>
            <li>
                <a href="Suggested&future-plans.jsp"><i class="fa fa-calendar-o"></i> طرح های آینده و طرح های
                    پیشنهادی</a>
            </li>
            <li>
                <a href="../Controller/ServletAssociationManager"> مدیریت انجمن ها</a>
            </li>
            <li>
                <a href="registeration-verification.jsp"><i class="fa fa-check-square-o"></i> تایید ثبت نام ها</a>
            </li>
            <li>
                <a href="resource-management.jsp"><i class="fa fa-sitemap"></i> مديريت منابع</a>
            </li>
            <li>
                <a href="/app/resource-management2.jsp">test</a>
            </li>
        </ul>
    </div>
    <!-- /.navbar-collapse -->


</nav>
</body>