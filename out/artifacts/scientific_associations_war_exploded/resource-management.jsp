<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Bootstrap Admin Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">
    <link href="css/sb-admin-rtl.css" rel="stylesheet">
    <link rel="stylesheet" href="css/added.css"/>

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<div id="wrapper">

    <!-- Navigation -->
    <%@ include file="menu.jsp" %>

    <div id="page-wrapper">

        <div class="container-fluid">

            <div class="col-lg-12">
                <h3 class="page-header">
                    مدیریت منابع
                </h3>
            </div>

            <br/>

            <div class="row">
                <div class=" col-lg-10 col-lg-offset-1">
                    <div class="row">
                        <form role="form">
                            <div class="form-group col-lg-8" style="padding-top: 10px">
                                <input type="text" class="form-control" id="exampleInputPassword1"
                                       placeholder="عنوان منبع">
                            </div>
                            <div class="form-group col-lg-4">
                                <label for="exampleInputFile">انتخاب فایل مورد نظر </label>
                                <input type="file" id="exampleInputFile">
                            </div>
                        </form>
                    </div>
                    <div class="clearfix"></div>
                    <button type="button" class="btn btn-primary" style=""> تایید</button>
                </div>
            </div>

            <br/>
            <br/>

            <div class="row">
                <div class="col-lg-10 col-lg-offset-1">
                    <h4><span class="glyphicon glyphicon-remove text-danger"></span><a> فایل راهنمای استفاده از
                        سیستم</a></h4>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1">
                    <h4><span class="glyphicon glyphicon-remove text-danger"></span> فایل راهنمای استفاده از
                        سیستم</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1">
                    <h4><span class="glyphicon glyphicon-remove text-danger"></span> فایل راهنمای استفاده از
                        سیستم</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1">
                    <h4><span class="glyphicon glyphicon-remove text-danger"></span> فایل راهنمای استفاده از
                        سیستم</h4>
                </div>
            </div>

        </div>

    </div>

</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

</body>

</html>
