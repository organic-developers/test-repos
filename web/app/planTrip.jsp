<%--
  Created by IntelliJ IDEA.
  User: Saied
  Date: 9/9/2015
  Time: 12:44 PM
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
                    <h1 class="page-header">مشاهده طرح</h1>
                </div>
            </div>
            <!-- /.row -->


            <!-- /.row -->
            <div class="row">
                <form class="form-horizontal" role="form" action="/Controller/ServletCreatePlanTrip"
                      method="post" enctype="multipart/form-data">
                    <!-- type -->
                    <!-- text -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">ماهیت:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <select name="type" id="type">
                                <option value="trip">بازدید علمی</option>
                                <option value="contest">مسابقات علمی</option>
                                <option value="exhibition">ترگزاری نمایشگاه</option>
                                <option value="educational">کلاس ها و دوره های آموزشی</option>
                                <option value="conference">همایش ها و کنفرانس</option>
                                <option value="magazine">چاپ نشریه</option>
                                <option value="other">سایر موارد</option>
                            </select>
                        </div>
                    </div>
                    <!-- title -->
                    <!-- text -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">عنوان طرح:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="text" class="form-control" name="title" value="${plan.title}" readonly>
                        </div>
                    </div>
                    <!-- place -->
                    <!-- text -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">محل برگزاری:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="text" class="form-control" name="place" value="${plan.place}" readonly>
                        </div>
                    </div>
                    <!-- date -->
                    <!-- text -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">تاریخ برگزاری: </label>
                        <!-- beginDate -->
                        <div class="col-sm-3 col-sm-offset-1">
                            <input type="text" class="form-control" placeholder="yyyy/mm/dd" name="beginDate" value="${plan.beginDate}" readonly>
                        </div>
                        <label class="control-label col-sm-1">لغایت</label>
                        <!-- endDate -->
                        <div class="col-sm-3">
                            <input type="text" class="form-control" placeholder="yyyy/mm/dd" name="endDate" value="${plan.endDate}" readonly>
                        </div>
                    </div>
                    <!-- time -->
                    <!-- text -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">ساعت برگزاری:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="text" class="form-control" name="time" value="${plan.time}" readonly>
                        </div>
                    </div>
                    <!-- requestedItems -->
                    <!-- textarea -->
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="needed">موارد درخواستی:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <textarea class="form-control" rows="3" id="needed" name="requestedItems" value="${plan.requestedItems}" readonly></textarea>
                        </div>
                    </div>
                    <!-- personnel -->
                    <!-- modal -->
                    <div class="form-group readonly">
                        <label class="control-label col-sm-2">پرسنل اجرایی:</label>

                        <div class="col-sm-7 col-sm-offset-1">

                            <div class="line line-top"></div>

                            <div class="row personnel-table">

                                <div class="table-row">
                                    <div class="form-group col-xs-3">
                                        <input type="text" class="form-control" name="personnel-fName-0"
                                               placeholder="نام">
                                    </div>
                                    <div class="form-group col-xs-4">
                                        <input type="text" class="form-control" name="personnel-lName-0"
                                               placeholder="نام خانوادگی">
                                    </div>
                                    <div class="form-group col-xs-4">
                                        <input type="text" class="form-control" name="personnel-phone-0"
                                               placeholder="تلفن">
                                    </div>
                                    <div class="form-group col-xs-1">
                                        <span class="glyphicon glyphicon-remove"></span>
                                    </div>
                                </div>

                                <div class="table-row">
                                    <div class="form-group col-xs-3">
                                        <input type="text" class="form-control" name="personnel-fName-1"
                                               placeholder="نام">
                                    </div>
                                    <div class="form-group col-xs-4">
                                        <input type="text" class="form-control" name="personnel-lName-1"
                                               placeholder="نام خانوادگی">
                                    </div>
                                    <div class="form-group col-xs-4">
                                        <input type="text" class="form-control" name="personnel-phone-1"
                                               placeholder="تلفن">
                                    </div>
                                    <div class="form-group col-xs-1">
                                        <span class="glyphicon glyphicon-remove"></span>
                                    </div>
                                </div>

                                <div class="table-row">
                                    <div class="form-group col-xs-3">
                                        <input type="text" class="form-control" name="personnel-fName-2"
                                               placeholder="نام">
                                    </div>
                                    <div class="form-group col-xs-4">
                                        <input type="text" class="form-control" name="personnel-lName-2"
                                               placeholder="نام خانوادگی">
                                    </div>
                                    <div class="form-group col-xs-4">
                                        <input type="text" class="form-control" name="personnel-phone-2"
                                               placeholder="تلفن">
                                    </div>
                                    <div class="form-group col-xs-1">
                                        <span class="glyphicon glyphicon-remove"></span>
                                    </div>
                                </div>
                            </div>

                            <span class="glyphicon glyphicon-plus" id="personnel-plus"></span>

                            <div class="line line-bottom"></div>
                        </div>
                    </div>
                    <!-- supervisorAgreement -->
                    <!-- file -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">موافقت مسئول یا سرپرست (در صورت نیاز):</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <a href="${plan.supervisorAgreement}" target="_blank"><img src="${plan.supervisorAgreement}" alt="اشکال در فرایند نمایش"
                                                                      style="width: 50%; margin-bottom: 30px;"></a>
                        </div>
                    </div>
                    <!-- expenses -->
                    <!-- modal -->
                    <div class="form-group readonly">
                        <label class="control-label col-sm-2">ریز هزینه ها:</label>

                        <div class="col-sm-7 col-sm-offset-1">

                            <div class="line line-top"></div>

                            <div class="row expenses-table">

                                <div class="table-row">
                                    <div class="form-group col-xs-2">
                                        <input type="text" class="form-control" name="expense-name-0"
                                               placeholder="عنوان">
                                    </div>
                                    <div class="form-group col-xs-2">
                                        <input type="text" class="form-control" name="expense-value-0"
                                               placeholder="هزینه">
                                    </div>
                                    <div class="form-group col-xs-7">
                                        <input type="text" class="form-control" name="expense-comment-0"
                                               placeholder="توضیحات">
                                    </div>
                                    <div class="form-group col-xs-1">
                                        <span class="glyphicon glyphicon-remove"></span>
                                    </div>
                                </div>

                                <div class="table-row">
                                    <div class="form-group col-xs-2">
                                        <input type="text" class="form-control" name="expense-name-1"
                                               placeholder="عنوان">
                                    </div>
                                    <div class="form-group col-xs-2">
                                        <input type="text" class="form-control" name="expense-value-1"
                                               placeholder="هزینه">
                                    </div>
                                    <div class="form-group col-xs-7">
                                        <input type="text" class="form-control" name="expense-comment-1"
                                               placeholder="توضیحات">
                                    </div>
                                    <div class="form-group col-xs-1">
                                        <span class="glyphicon glyphicon-remove"></span>
                                    </div>
                                </div>

                                <div class="table-row">
                                    <div class="form-group col-xs-2">
                                        <input type="text" class="form-control" name="expense-name-2"
                                               placeholder="عنوان">
                                    </div>
                                    <div class="form-group col-xs-2">
                                        <input type="text" class="form-control" name="expense-value-2"
                                               placeholder="هزینه">
                                    </div>
                                    <div class="form-group col-xs-7">
                                        <input type="text" class="form-control" name="expense-comment-2"
                                               placeholder="توضیحات">
                                    </div>
                                    <div class="form-group col-xs-1">
                                        <span class="glyphicon glyphicon-remove"></span>
                                    </div>
                                </div>
                            </div>

                            <span class="glyphicon glyphicon-plus" id="expenses-plus"></span>

                            <div class="line line-bottom"></div>
                        </div>

                    </div>
                    <!-- advisorComment -->
                    <!-- textarea -->
                    <div class="form-group" style="display: none;">
                        <label class="control-label col-sm-2" for="advisorComment">نظرات مشاور انجمن:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <textarea class="form-control" rows="3" id="advisorComment"
                                      name="advisorComment" readonly>${plan.advisorComment}</textarea>
                        </div>
                    </div>
                    <!-- expertComment -->
                    <!-- textarea -->
                    <div class="form-group" style="display: none;">
                        <label class="control-label col-sm-2" for="expertComment">نظرات کارشناس انجمن:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <textarea class="form-control" rows="3" id="expertComment" name="expertComment" readonly>${plan.expertComment}</textarea>
                        </div>
                    </div>
                    <!-- bossComment -->
                    <!-- textarea -->
                    <div class="form-group" style="display: none;">
                        <label class="control-label col-sm-2" for="bossComment">نظر نهایی ریاست انجمن های علمی:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <textarea class="form-control" rows="3" id="bossComment" name="bossComment" readonly>${plan.bossComment}</textarea>
                        </div>
                    </div>
                    <!-- poster -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">موافقت مسئول یا سرپرست (در صورت نیاز):</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <a href="${plan.poster}" target="_blank"><img src="${plan.poster}" alt="اشکال در فرایند نمایش"
                                                                                       style="width: 50%; margin-bottom: 30px;"></a>
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
                        <label class="control-label col-sm-2">مبالغ دریافتی از دانشجویان (ریال)</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="number" class="form-control" name="studentMoney" value="${plan.studentMoney}" readonly>
                        </div>
                    </div>
                    <!-- sponserMoney number-->
                    <div class="form-group">
                        <label class="control-label col-sm-2">مبالغ دریافتی از اسپانسر(ریال)</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="number" class="form-control" name="sponsorMoney" value="${plan.sponsorMoney}" readonly>
                        </div>
                    </div>
                    <br/>
                    <br/>
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
