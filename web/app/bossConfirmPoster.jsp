<%--
  Created by IntelliJ IDEA.
  User: Saied
  Date: 9/8/2015
  Time: 6:31 PM
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
                    <h1 class="page-header">بررسی طرح تبلیغاتی:</h1>
                </div>
            </div>
            <!-- /.row -->

            <div class="row">
                <form class="form-horizontal" role="form" action="/Controller/ServletBossConfirmPoster" method="post">
                    <input type="text" id="id" name="id" value="${plan.id}" style="display: none;">
                    <!-- poster -->
                    <div class="col-lg-offset-3 col-lg-7">
                        <a href="${plan.poster}" target="_blank"><img src="${plan.poster}" alt="اشکال در فرایند نمایش"
                                                                      style="width: 100%; margin-bottom: 30px;"></a>
                    </div>
                    <div class="clearfix"></div>
                    <!-- registration period -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">مهلت ثبت نام:</label>
                        <!-- beginDate -->
                        <div class="col-sm-3 col-sm-offset-1">
                            <input type="text" class="form-control pdp" placeholder="yyyy/mm/dd"
                                   name="registrationBeginDate" value="${plan.registrationBeginDate}">
                        </div>
                        <label class="control-label col-sm-1">لغایت</label>
                        <!-- endDate -->
                        <div class="col-sm-3">
                            <input type="text" class="form-control pdp" placeholder="yyyy/mm/dd" name="registrationEndDate"
                                   value="${plan.registrationEndDate}">
                        </div>
                    </div>
                    <%--<!-- advertisement period -->--%>
                    <%--<div class="form-group">--%>
                        <%--<label class="control-label col-sm-2">بازه زمانی نمایش تبلیغات در سایت:</label>--%>
                        <%--<!-- beginDate -->--%>
                        <%--<div class="col-sm-3 col-sm-offset-1">--%>
                            <%--<input type="text" class="form-control pdp" placeholder="yyyy/mm/dd"--%>
                                   <%--name="advertisementBeginDate" value="${plan.advertisementBeginDate}">--%>
                        <%--</div>--%>
                        <%--<label class="control-label col-sm-1">لغایت</label>--%>
                        <%--<!-- endDate -->--%>
                        <%--<div class="col-sm-3">--%>
                            <%--<input type="text" class="form-control pdp" placeholder="yyyy/mm/dd" name="advertisementEndDate"--%>
                                   <%--value="${plan.advertisementEndDate}">--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <!-- registration fee -->
                    <!-- number -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">هزینه ثبت نام (ریال):</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="number" class="form-control" name="registrationFee" value="${plan.registrationFee}">
                        </div>
                    </div>
                    <!-- registration place -->
                    <!-- text -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">مکان ثبت نام:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="text" class="form-control" name="registrationPlace" value="${plan.registrationPlace}">
                        </div>
                    </div>
                    <!-- expertComment -->
                    <!-- textarea -->
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="expertComment">نظرات کارشناس انجمن:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <textarea class="form-control" rows="3" id="expertComment" name="expertComment"
                                      disabled>${plan.expertComment}</textarea>
                        </div>
                    </div>
                    <!-- bossComment -->
                    <!-- textarea -->
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="bossComment">نظر نهایی ریاست انجمن های علمی:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <textarea class="form-control" rows="3" id="bossComment" name="bossComment"></textarea>
                        </div>
                    </div>
                    <!-- buttons -->
                    <div class="form-group">
                        <div class="col-lg-offset-3 col-lg-7">
                            <button type="submit" name="submit" value="confirm" class="btn btn-primary">تایید</button>
                            <button type="submit" name="submit" value="correct" class="btn btn-info">ارسال برای اصلاح
                            </button>
                            <button type="submit" name="submit" value="reject" class="btn btn-danger">رد طرح</button>
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
