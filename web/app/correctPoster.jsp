<%--
  Created by IntelliJ IDEA.
  User: Saied
  Date: 9/16/2015
  Time: 11:50 AM
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

    <link rel="stylesheet" href="/css/persianDatepicker-default.css" />
    <script src="/js/persianDatepicker.min.js"></script>

    <script src="/js/added.js"></script>
    <script src="/js/added-datepicker.js"></script>

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
                    <h1 class="page-header">بارگزاری طرح تبلیغاتی اصلاح شده:</h1>
                </div>
            </div>
            <!-- /.row -->

            <br/>
            <br/>

            <!-- /.row -->
            <div class="row">
                <form class="form-horizontal" role="form" action="/Controller/ServletCorrectPoster"
                      method="post" enctype="multipart/form-data">
                    <!-- hidden id -->
                    <input type="text" id="id" name="id" value="${plan.id}" style="display: none;">
                    <!-- title -->
                    <!-- text -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">عنوان طرح:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="text" class="form-control" name="title" value="${plan.title}" disabled>
                        </div>
                    </div>
                    <!-- supervisorAgreement -->
                    <!-- file -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">پوستر:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="file" id="poster" name="poster" required>
                        </div>
                    </div>
                    <!-- bossComment -->
                    <!-- textarea -->
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="bossComment">نظر نهایی ریاست انجمن های علمی:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <textarea class="form-control" rows="3" id="bossComment" name="bossComment" disabled>${plan.bossComment}</textarea>
                        </div>
                    </div>
                    <!-- warning -->
                    <div class="form-group">
                        <label class="control-label col-sm-3"></label>
                        <div class="col-sm-7">
                            <h5 class="text-danger">در طرح تبليغاتي استفاده از لوگوي مديريت انجمن هاي علمي دانشجويي، لوگوي انجمن مربوطه و ذكر مبلغ، مكان، زمان و مهلت ثبت نام ضروري مي باشد. ريز مشخصات بازديد نيز ذكر گردد.</h5>
                        </div>
                    </div>
                    <!-- registration period -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">مهلت ثبت نام:</label>
                        <!-- beginDate -->
                        <div class="col-sm-3 col-sm-offset-1">
                            <input type="text" class="form-control pdp" placeholder="yyyy/mm/dd" name="registrationBeginDate" value="${plan.beginDate}">
                        </div>
                        <label class="control-label col-sm-1">لغایت</label>
                        <!-- endDate -->
                        <div class="col-sm-3">
                            <input type="text" class="form-control pdp" placeholder="yyyy/mm/dd" name="registrationEndDate" value="${plan.endDate}">
                        </div>
                    </div>
                    <!-- advertisement period -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">بازه زمانی نمایش تبلیغات در سایت:</label>
                        <!-- beginDate -->
                        <div class="col-sm-3 col-sm-offset-1">
                            <input type="text" class="form-control pdp" placeholder="yyyy/mm/dd" name="advertisementBeginDate" value="${plan.beginDate}">
                        </div>
                        <label class="control-label col-sm-1">لغایت</label>
                        <!-- endDate -->
                        <div class="col-sm-3">
                            <input type="text" class="form-control pdp" placeholder="yyyy/mm/dd" name="advertisementEndDate" value="${plan.endDate}">
                        </div>
                    </div>
                    <!-- submit button -->
                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-10">
                            <button type="submit" class="btn btn-primary">آپلود</button>
                        </div>
                    </div>
                </form>
            </div>


            <!-- table of changes -->
            <%@ include file="table-of-changes.jsp" %>

        </div>

    </div>

</div>
<!-- /#wrapper -->

<!-- Bootstrap Core JavaScript -->
<script src="../js/bootstrap.min.js"></script>

</body>
</html>
