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
                            <input type="text" class="form-control" value="${plan.workflow.name}"/>
                        </div>
                    </div>
                    <!-- title -->
                    <!-- text -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">عنوان طرح:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="text" class="form-control" name="title" value="${plan.title}" disabled>
                        </div>
                    </div>
                    <!-- place -->
                    <!-- text -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">محل برگزاری:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="text" class="form-control" name="place" value="${plan.place}" disabled>
                        </div>
                    </div>
                    <!-- date -->
                    <!-- text -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">تاریخ برگزاری: </label>
                        <!-- beginDate -->
                        <div class="col-sm-3 col-sm-offset-1">
                            <input type="text" class="form-control" placeholder="yyyy/mm/dd" name="beginDate" value="${plan.beginDate}" disabled>
                        </div>
                        <label class="control-label col-sm-1">لغایت</label>
                        <!-- endDate -->
                        <div class="col-sm-3">
                            <input type="text" class="form-control" placeholder="yyyy/mm/dd" name="endDate" value="${plan.endDate}" disabled>
                        </div>
                    </div>
                    <!-- time -->
                    <!-- text -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">ساعت برگزاری:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="text" class="form-control" name="time" value="${plan.time}" disabled>
                        </div>
                    </div>
                    <!-- requestedItems -->
                    <!-- textarea -->
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="needed">موارد درخواستی:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <textarea class="form-control" rows="3" id="needed" name="requestedItems" value="${plan.requestedItems}" disabled></textarea>
                        </div>
                    </div>
                    <!-- personnel -->
                    <!-- modal -->
                    <div class="form-group disabled">
                        <label class="control-label col-sm-2">پرسنل اجرایی:</label>

                        <div class="col-sm-7 col-sm-offset-1">

                            <div class="line line-top"></div>

                            <div class="row plan-table personnel-table pure-table">
                                <c:forEach var="personnel" items="${plan.personnel}">
                                    <div class="table-row">
                                        <div class="form-group col-xs-4">
                                            <input type="text" class="form-control" name="personnel-fName-0"
                                                   placeholder="نام" value="${personnel.fName}">
                                        </div>
                                        <div class="form-group col-xs-4">
                                            <input type="text" class="form-control" name="personnel-lName-0"
                                                   placeholder="نام خانوادگی" value="${personnel.lName}">
                                        </div>
                                        <div class="form-group col-xs-4">
                                            <input type="text" class="form-control" name="personnel-phone-0"
                                                   placeholder="تلفن" value="${personnel.phone}">
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>

                            <div class="line line-bottom"></div>
                        </div>
                    </div>
                    <!-- expenses -->
                    <!-- modal -->
                    <div class="form-group disabled">
                        <label class="control-label col-sm-2">ریز هزینه ها:</label>

                        <div class="col-sm-7 col-sm-offset-1">

                            <div class="line line-top"></div>

                            <div class="row plan-table expenses-table pure-table">
                                <c:forEach var="expense" items="${plan.expenses}">
                                    <div class="table-row">
                                        <div class="form-group col-xs-2">
                                            <input type="text" class="form-control" name="expense-name-"
                                                   placeholder="عنوان" value="${expense.name}">
                                        </div>
                                        <div class="form-group col-xs-2">
                                            <input type="text" class="form-control" name="expense-value-"
                                                   placeholder="هزینه" value="${expense.value}">
                                        </div>
                                        <div class="form-group col-xs-8">
                                            <input type="text" class="form-control" name="expense-comment-"
                                                   placeholder="توضیحات" value="${expense.comment}">
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>

                            <div class="line line-bottom"></div>
                        </div>

                    </div>
                    <!-- advisorComment -->
                    <!-- textarea -->
                    <div class="form-group" style="display: none;">
                        <label class="control-label col-sm-2" for="advisorComment">نظرات مشاور انجمن:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <textarea class="form-control" rows="3" id="advisorComment"
                                      name="advisorComment" disabled>${plan.advisorComment}</textarea>
                        </div>
                    </div>
                    <!-- expertComment -->
                    <!-- textarea -->
                    <div class="form-group" style="display: none;">
                        <label class="control-label col-sm-2" for="expertComment">نظرات کارشناس انجمن:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <textarea class="form-control" rows="3" id="expertComment" name="expertComment" disabled>${plan.expertComment}</textarea>
                        </div>
                    </div>
                    <!-- bossComment -->
                    <!-- textarea -->
                    <div class="form-group" style="display: none;">
                        <label class="control-label col-sm-2" for="bossComment">نظر نهایی ریاست انجمن های علمی:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <textarea class="form-control" rows="3" id="bossComment" name="bossComment" disabled>${plan.bossComment}</textarea>
                        </div>
                    </div>
                    <!-- supervisorAgreement -->
                    <!-- file -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">موافقت مسئول یا سرپرست:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <a href="${plan.supervisorAgreement}" target="_blank"><img src="${plan.supervisorAgreement}" alt="اشکال در فرایند نمایش"
                                                                                       style="width: 50%; margin-bottom: 30px;"></a>
                        </div>
                    </div>
                    <!-- poster -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">پوستر:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <a href="${plan.poster}" target="_blank"><img src="${plan.poster}" alt="اشکال در فرایند نمایش"
                                                                                       style="width: 50%; margin-bottom: 30px;"></a>
                        </div>
                    </div>
                    <!-- enlisted list -->
                    <div class="form-group disabled">
                        <label class="control-label col-sm-2">لیست ثبت نام کنندگان:</label>

                        <div class="col-sm-7 col-sm-offset-1">

                            <div class="line line-top"></div>

                            <div class="row plan-table enlisted-table pure-table">
                                <c:forEach var="enlisted" items="${plan.enlisted}">
                                    <div class="table-row">
                                        <div class="form-group col-xs-2">
                                            <input type="text" class="form-control" name="enlisted-fName-"
                                                   placeholder="نام" value="${enlisted.fName}">
                                        </div>
                                        <div class="form-group col-xs-2">
                                            <input type="text" class="form-control" name="enlisted-lName-"
                                                   placeholder="نام خانوادگی" value="${enlisted.lName}">
                                        </div>
                                        <div class="form-group col-xs-2">
                                            <input type="text" class="form-control" name="enlisted-studentId-"
                                                   placeholder="شماره دانشجویی" value="${enlisted.studentId}">
                                        </div>
                                        <div class="form-group col-xs-3">
                                            <input type="text" class="form-control" name="enlisted-phone-"
                                                   placeholder="تلفن همراه" value="${enlisted.phone}">
                                        </div>
                                        <div class="form-group col-xs-3">
                                            <input type="text" class="form-control" name="enlisted-email-"
                                                   placeholder="ایمیل" value="${enlisted.email}">
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>

                            <div class="line line-bottom"></div>
                        </div>

                    </div>
                    <!-- studentsMoney number -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">مبالغ دریافتی از دانشجویان (ریال)</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="number" class="form-control" name="studentMoney" value="${plan.studentMoney}" disabled>
                        </div>
                    </div>
                    <!-- sponserMoney number-->
                    <div class="form-group">
                        <label class="control-label col-sm-2">مبالغ دریافتی از اسپانسر(ریال)</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="number" class="form-control" name="sponsorMoney" value="${plan.sponsorMoney}" disabled>
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
