<%--
  Created by IntelliJ IDEA.
  User: Saied
  Date: 9/8/2015
  Time: 5:01 PM
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
    <link href="/css/added.css" rel="stylesheet"/>

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


    <script src="/js/jquery-1.11.3.min.js"></script>
    <script src="/js/added.js"></script>

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
                    <h1 class="page-header">بررسی طرح تبلیغاتی</h1>
                </div>
            </div>
            <!-- /.row -->



            <div class="row">
                <%--<div class=" col-lg-10 col-lg-offset-2">--%>
                <%--<div class="row">--%>
                <form role="form" action="/Controller/ServletExpertConfirmPoster" method="post">
                    <input type="text" id="id" name="id" value="${plan.id}" style="display: none;">
                    <!-- poster -->
                    <div class="col-lg-offset-2 col-lg-7">
                        <a href="${plan.poster}" target="_blank"><img src="${plan.poster}" alt="اشکال در فرایند نمایش"
                                                                      style="width: 100%; margin-bottom: 30px;"></a>
                    </div>
                    <!-- expertComment -->
                    <!-- textarea -->
                    <div class="form-group col-lg-offset-2 col-lg-7">
                        <label for="expertComment">نظرات کارشناس انجمن:</label>
                        <textarea class="form-control" rows="3" id="expertComment" name="expertComment"></textarea>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <div class="col-lg-offset-2 col-lg-7">
                            <button type="submit" class="btn btn-primary">تایید</button>
                        </div>
                    </div>
                </form>
                <%--</div>--%>
                <%--<div>--%>
                <%--<h5 class="text-danger" style="margin-top: 60px;"></h5>--%>
                <%--</div>--%>
                <%--</div>--%>
            </div>

            <br/>
            <br/>

        </div>

    </div>

</div>
<!-- /#wrapper -->

<!-- Bootstrap Core JavaScript -->
<script src="../js/bootstrap.min.js"></script>
</body>
</html>
