<%--
  Created by IntelliJ IDEA.
  User: Saied
  Date: 9/8/2015
  Time: 7:55 AM
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
                    <h1 class="page-header">بررسی طرح:</h1>
                </div>
            </div>
            <!-- /.row -->

            <!-- /.row -->
            <div class="row">
                <form class="form-horizontal" role="form" action="/Controller/ServletBossConfirmPlan"
                      method="post">
                    <!-- id -->
                    <input type="text" id="id" name="id" value="${plan.id}" style="display: none;">
                    <!-- type -->
                    <!-- text -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">ماهیت:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="text" class="form-control" name="type" value=${plan.workflow.name} disabled>
                        </div>
                    </div>
                    <!-- title -->
                    <!-- text -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">عنوان طرح:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="text" class="form-control" name="title" value="${plan.title}">
                        </div>
                    </div>
                    <!-- place -->
                    <!-- text -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">محل برگزاری:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="text" class="form-control" name="place" value="${plan.place}">
                        </div>
                    </div>
                    <!-- date -->
                    <!-- text -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">تاریخ برگزاری: </label>
                        <!-- beginDate -->
                        <div class="col-sm-3 col-sm-offset-1">
                            <input type="text" class="form-control" placeholder="yyyy/mm/dd" name="beginDate"
                                   value="${plan.beginDate}">
                        </div>
                        <label class="control-label col-sm-1">لغایت</label>
                        <!-- endDate -->
                        <div class="col-sm-3">
                            <input type="text" class="form-control" placeholder="yyyy/mm/dd" name="endDate"
                                   value="${plan.endDate}">
                        </div>
                    </div>
                    <!-- time -->
                    <!-- text -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">ساعت برگزاری:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="text" class="form-control" name="time" value="${plan.time}">
                        </div>
                    </div>
                    <!-- requestedItems -->
                    <!-- textarea -->
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="needed">موارد درخواستی:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <textarea class="form-control" rows="3" id="needed"
                                      name="requestedItems">${plan.requestedItems}"</textarea>
                        </div>
                    </div>
                    <!-- personnel -->
                    <!-- modal -->
                    <div class="form-group ">
                        <label class="control-label col-sm-2">پرسنل اجرایی:</label>

                        <div class="col-sm-7 col-sm-offset-1">

                            <div class="line line-top"></div>

                            <div class="row plan-table personnel-table">

                                <c:forEach var="personnel" items="${plan.personnel}">
                                    <div class="table-row">
                                        <div class="form-group col-xs-3">
                                            <input type="text" class="form-control" name="personnel-fName-"
                                                   placeholder="نام" value="${personnel.fName}">
                                        </div>
                                        <div class="form-group col-xs-4">
                                            <input type="text" class="form-control" name="personnel-lName-"
                                                   placeholder="نام خانوادگی" value="${personnel.lName}">
                                        </div>
                                        <div class="form-group col-xs-4">
                                            <input type="text" class="form-control" name="personnel-phone-"
                                                   placeholder="تلفن" value="${personnel.phone}">
                                        </div>
                                        <div class="form-group col-xs-1">
                                            <span class="glyphicon glyphicon-remove"></span>
                                        </div>
                                    </div>
                                </c:forEach>

                            </div>

                            <span class="glyphicon glyphicon-plus" id="personnel-plus"></span>

                            <div class="line line-bottom"></div>
                        </div>
                    </div>
                    <%--<!-- supervisorAgreement -->--%>
                    <%--<!-- file -->--%>
                    <%--<div class="form-group">--%>
                        <%--<label class="control-label col-sm-2">موافقت مسئول یا سرپرست (در صورت نیاز):</label>--%>

                        <%--<div class="col-sm-7 col-sm-offset-1">--%>
                            <%--<a href="${plan.supervisorAgreement}" target="_blank">موافقت نامه مسئول یا سرپرست</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <!-- expenses -->
                    <!-- modal -->
                    <div class="form-group ">
                        <label class="control-label col-sm-2">ریز هزینه ها:</label>

                        <div class="col-sm-7 col-sm-offset-1">

                            <div class="line line-top"></div>

                            <div class="row plan-table expenses-table">

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
                                        <div class="form-group col-xs-7">
                                            <input type="text" class="form-control" name="expense-comment-"
                                                   placeholder="توضیحات" value="${expense.comment}">
                                        </div>
                                        <div class="form-group col-xs-1">
                                            <span class="glyphicon glyphicon-remove"></span>
                                        </div>
                                    </div>
                                </c:forEach>

                            </div>

                            <span class="glyphicon glyphicon-plus" id="expenses-plus"></span>

                            <div class="line line-bottom"></div>
                        </div>

                    </div>
                    <!-- advisorComment -->
                    <!-- textarea -->
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="advisorComment">نظرات مشاور انجمن:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <textarea class="form-control" rows="3" id="advisorComment"
                                      name="advisorComment" disabled>${plan.advisorComment}</textarea>
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
                    <!-- submit buttons -->
                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-10">
                            <button type="submit" class="btn btn-primary" name="submit" value="confirm">تایید طرح
                            </button>
                            <button type="submit" class="btn btn-info" name="submit" value="correct">ارسال برای اصلاح
                            </button>
                            <button type="submit" class="btn btn-danger" name="submit" value="reject">رد طرح</button>
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
