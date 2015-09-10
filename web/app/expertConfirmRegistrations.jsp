<%--
  Created by IntelliJ IDEA.
  User: Saied
  Date: 9/9/2015
  Time: 8:37 AM
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
<body>

<div id="wrapper">

    <!-- Navigation -->
    <%@ include file="menu.jsp" %>

    <div id="page-wrapper">

        <div class="container-fluid">

            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">بررسی لیست ثبت نام کنندگان:</h1>
                </div>
            </div>
            <!-- /.row -->

            <!-- .row -->
            <div class="row">
                <form class="form-horizontal" role="form" action="/Controller/ServletExpertConfirmRegistrations"
                      method="post">
                    <!-- hidden id -->
                    <input type="text" id="id" name="id" value="${plan.id}" style="display: none;">
                    <!-- title -->
                    <!-- text -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">عنوان طرح:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="text" class="form-control" name="title" value="${plan.title}" readonly>
                        </div>
                    </div>
                    <!-- enlisted list -->
                    <div class="form-group readonly">
                        <label class="control-label col-sm-2">لیست ثبت نام کنندگان:</label>

                        <div class="col-sm-7 col-sm-offset-1">

                            <div class="line line-top"></div>

                            <div class="row enlisted-table">

                                <%--<c:forEach var="enlisted" items="${plan.enlisted}">--%>
                                    <%--<div class="table-row">--%>
                                        <%--<div class="form-group col-xs-2">--%>
                                            <%--<input type="text" class="form-control" name="enlisted-fName-0"--%>
                                                   <%--placeholder="نام" value="${enlisted.fName}">--%>
                                        <%--</div>--%>
                                        <%--<div class="form-group col-xs-2">--%>
                                            <%--<input type="text" class="form-control" name="enlisted-lName-0"--%>
                                                   <%--placeholder="نام خانوادگی" value="${enlisted.lName}">--%>
                                        <%--</div>--%>
                                        <%--<div class="form-group col-xs-2">--%>
                                            <%--<input type="text" class="form-control" name="enlisted-studentId-0"--%>
                                                   <%--placeholder="شماره دانشجویی" value="${enlisted.studentId}">--%>
                                        <%--</div>--%>
                                        <%--<div class="form-group col-xs-2">--%>
                                            <%--<input type="text" class="form-control" name="enlisted-phone-0"--%>
                                                   <%--placeholder="تلفن همراه" value="${enlisted.phone}">--%>
                                        <%--</div>--%>
                                        <%--<div class="form-group col-xs-3">--%>
                                            <%--<input type="text" class="form-control" name="enlisted-email-0"--%>
                                                   <%--placeholder="ایمیل" value="${enlisted.email}">--%>
                                        <%--</div>--%>
                                        <%--<div class="form-group col-xs-1">--%>
                                            <%--<span class="glyphicon glyphicon-remove"></span>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</c:forEach>--%>
                                <div class="table-row">
                                    <div class="form-group col-xs-2">
                                        <input type="text" class="form-control" name="enlisted-fName-1"
                                               placeholder="نام">
                                    </div>
                                    <div class="form-group col-xs-2">
                                        <input type="text" class="form-control" name="enlisted-lName-1"
                                               placeholder="نام خانوادگی">
                                    </div>
                                    <div class="form-group col-xs-2">
                                        <input type="text" class="form-control" name="enlisted-studentId-1"
                                               placeholder="شماره دانشجویی">
                                    </div>
                                    <div class="form-group col-xs-2">
                                        <input type="text" class="form-control" name="enlisted-phone-1"
                                               placeholder="تلفن همراه">
                                    </div>
                                    <div class="form-group col-xs-3">
                                        <input type="text" class="form-control" name="enlisted-email-1"
                                               placeholder="ایمیل">
                                    </div>
                                    <div class="form-group col-xs-1">
                                        <span class="glyphicon glyphicon-remove"></span>
                                    </div>
                                </div>

                                <div class="table-row">
                                    <div class="form-group col-xs-2">
                                        <input type="text" class="form-control" name="enlisted-fName-2"
                                               placeholder="نام">
                                    </div>
                                    <div class="form-group col-xs-2">
                                        <input type="text" class="form-control" name="enlisted-lName-2"
                                               placeholder="نام خانوادگی">
                                    </div>
                                    <div class="form-group col-xs-2">
                                        <input type="text" class="form-control" name="enlisted-studentId-2"
                                               placeholder="شماره دانشجویی">
                                    </div>
                                    <div class="form-group col-xs-2">
                                        <input type="text" class="form-control" name="enlisted-phone-2"
                                               placeholder="تلفن همراه">
                                    </div>
                                    <div class="form-group col-xs-3">
                                        <input type="text" class="form-control" name="enlisted-email-2"
                                               placeholder="ایمیل">
                                    </div>
                                    <div class="form-group col-xs-1">
                                        <span class="glyphicon glyphicon-remove"></span>
                                    </div>
                                </div>
                            </div>

                            <span class="glyphicon glyphicon-plus" id="enlisted-plus"></span>

                            <div class="line line-bottom"></div>
                        </div>

                    </div>
                    <!-- studentsMoney number -->
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="studentMoney">مبالغ دریافتی از دانشجویان
                            (ریال)</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="number" class="form-control" id="studentMoney" name="studentMoney" value="${plan.studentMoney}" readonly>
                        </div>
                    </div>
                    <!-- sponserMoney number-->
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="sponsorMoney">مبالغ دریافتی از اسپانسر(ریال)</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="number" class="form-control" id="sponsorMoney" name="sponsorMoney" value="${plan.sponsorMoney}" readonly>
                        </div>
                    </div>
                    <!-- expertComment -->
                    <!-- textarea -->
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="expertComment">نظرات کارشناس انجمن:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <textarea class="form-control" rows="3" id="expertComment" name="expertComment"></textarea>
                        </div>
                    </div>
                    <!-- submit button -->
                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-10">
                            <button type="submit" class="btn btn-primary" value="submit">تایید</button>
                        </div>
                    </div>
                </form>
            </div>
            <!-- /.row -->

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
