<%--
  Created by IntelliJ IDEA.
  User: Saied
  Date: 9/11/2015
  Time: 12:19 PM
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
                    <h1 class="page-header">بررسی طرح:</h1>
                </div>
            </div>
            <!-- /.row -->

            <!-- /.row -->
            <div class="row">
                <div style="text-align: center;">
                    <img src="${association.logo}" alt="لوگوی انجمن" width="125" height="125" id="image">
                </div>
                <form class="form-horizontal" role="form" action="/Controller/ServletCreateAssociation"
                      method="post" enctype="multipart/form-data">
                    <!-- id -->
                    <input type="text" id="id" name="id" value="${association.id}" style="display: none;">
                    <!-- name -->
                    <!-- text -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">نام انجمن:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="text" class="form-control" name="name" value="${association.name}" required>
                        </div>
                    </div>
                    <!-- logo -->
                    <!-- file -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">لوگوی انجمن:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="file" id="logo" name="logo" value="${association.logo}" required>
                        </div>
                    </div>
                    <!-- submit buttons -->
                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-10">
                            <button type="submit" class="btn btn-primary" name="submit">اعمال تغییرات</button>
                        </div>
                    </div>
                </form>
            </div>

        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->


<!-- Bootstrap Core JavaScript -->
<script src="/js/bootstrap.min.js"></script>

</body>
</html>
