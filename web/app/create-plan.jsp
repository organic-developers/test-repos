<%--
  Created by IntelliJ IDEA.
  User: Saied
  Date: 8/8/2015
  Time: 4:19 PM
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

    <title>سامانه انجمن های علمی</title>

    <!-- Bootstrap Core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Core CSS RTL-->
    <link href="/css/bootstrap-rtl.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/css/sb-admin.css" rel="stylesheet">
    <link href="/css/sb-admin-rtl.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/added.css"/>

    <!-- Morris Charts CSS -->
    <link href="/css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body class="dashboard-background">

<div id="wrapper">

    <!-- Navigation -->
    <%@ include file="menu.jsp" %>

    <div id="page-wrapper">

        <div class="container-fluid">

            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">
                        ایجاد طرح جدید
                    </h1>
                </div>
            </div>
            <!-- /.row -->

            <!-- plan type buttons -->
            <div>
                <div class="row">
                    <div class="col-md-3">
                        <a class="btn btn-type btn-primary" href="/app/create-plan-contest.jsp.jsp"><p>مسابقات علمی</p></a>
                    </div>
                    <div class="col-md-3">
                        <a class="btn btn-type btn-primary" href="/app/create-plan-trip.jsp.jsp"><p>بازدید عملی</p></a>
                    </div>
                    <div class="col-md-3">
                        <a class="btn btn-type btn-primary" href="/app/create-plan-exhibition.jsp"><p>برگزاری نمایشگاه</p></a>
                    </div>
                    <div class="col-md-3">
                        <a class="btn btn-type btn-primary" href="/app/create-plan-conference.jsp"><p>همایش ها و کنفرانس</p></a>
                    </div>
                </div>
                <br/>
                <br/>
                <div class="row">
                    <div class="col-md-3">
                        <a class="btn btn-type btn-primary" href="/app/create-plan-educational.jsp.jsp"><p>کلاس ها و دوره های آموزشی</p></a>
                    </div>
                    <div class="col-md-3">
                        <a class="btn btn-type btn-primary" href="/app/create-plan-magazine.jsp"><p>چاپ نشریه</p></a>
                    </div>
                    <div class="col-md-3">
                        <a class="btn btn-type btn-primary" href="/app/create-plan-else.jsp.jsp"><p>سایر موارد</p></a>
                    </div>
                </div>
            </div>
            <!-- buttons -->

        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="/js/bootstrap.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="/js/plugins/morris/raphael.min.js"></script>
<script src="/js/plugins/morris/morris.min.js"></script>
<script src="/js/plugins/morris/morris-data.js"></script>

</body>
</html>
