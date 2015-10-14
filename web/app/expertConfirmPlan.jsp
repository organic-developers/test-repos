<%--
  Created by IntelliJ IDEA.
  User: Saied
  Date: 9/7/2015
  Time: 11:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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

    <link rel="stylesheet" href="/css/persianDatepicker-default.css"/>
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
                    <h1 class="page-header">بررسی طرح:</h1>
                </div>
            </div>
            <!-- /.row -->

            <!-- .row -->
            <div class="row">
                <form class="form-horizontal" role="form" action="/Controller/ServletExpertConfirmPlan"
                      method="post">
                    <!-- hidden id -->
                    <input type="text" id="id" name="id" value="${plan.id}" style="display: none;">
                    <!-- type -->
                    <!-- text -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">ماهیت:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="text" class="form-control" name="type" value="${plan.workflow.name}" disabled>
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
                            <input type="text" class="form-control pdp" placeholder="yyyy/mm/dd" name="beginDate"
                                   value="${plan.beginDate}">
                        </div>
                        <label class="control-label col-sm-1">لغایت</label>
                        <!-- endDate -->
                        <div class="col-sm-3">
                            <input type="text" class="form-control pdp" placeholder="yyyy/mm/dd" name="endDate"
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
                                      name="requestedItems">${plan.requestedItems}</textarea>
                        </div>
                    </div>
                    <!-- alowed number -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">تعداد نفرات شرکت کننده:</label>
                        <!-- minimum -->
                        <label class="control-label col-sm-1 col-sm-offset-1">حد اقل</label>

                        <div class="col-sm-2">
                            <input type="number" class="form-control" name="registrationMin"
                                   value="${plan.registrationMin}">
                        </div>
                        <!-- maximum -->
                        <label class="control-label col-sm-1 col-sm-offset-1">حد اکثر</label>

                        <div class="col-sm-2">
                            <input type="number" class="form-control" name="registrationMax"
                                   value="${plan.registrationMax}">
                        </div>
                    </div>
                    <!-- personnel -->
                    <div class="form-group">
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
                    <!-- supervisor -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">استاد یا کارشناس مربوطه جهت حضور در بازدید:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <div class="row pure-table">
                                <div class="form-group col-sm-3">
                                    <input type="text" class="form-control" id="supervisorFName" name="supervisorFName"
                                           placeholder="نام" value="${plan.supervisorFName}">
                                </div>
                                <div class="form-group col-sm-3">
                                    <input type="text" class="form-control" id="supervisorLName" name="supervisorLName"
                                           placeholder="نام خانوادگی" value="${plan.supervisorLName}">
                                </div>
                                <div class="form-group col-sm-3">
                                    <input type="text" class="form-control" id="supervisorPosition"
                                           name="supervisorPosition"
                                           placeholder="سمت" value="${plan.supervisorPosition}">
                                </div>
                                <div class="form-group col-sm-3">
                                    <input type="number" class="form-control" id="supervisorPhone"
                                           name="supervisorPhone"
                                           placeholder="شماره تماس" value="${plan.supervisorPhone}">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- expenses -->
                    <div class="form-group">
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
                    <!-- studentsMoney number -->
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="studentMoney">مبالغ دریافتی از دانشجویان
                            (ریال)</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="number" class="form-control" id="studentMoney" name="studentMoney"
                                   value="${plan.studentMoney}">
                        </div>
                    </div>
                    <!-- sponserMoney number-->
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="sponsorMoney">مبالغ دریافتی از اسپانسر(ریال)</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="number" class="form-control" id="sponsorMoney" name="sponsorMoney"
                                   value="${plan.sponsorMoney}">
                        </div>
                    </div>
                    <!-- otherIncome number-->
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="otherIncome">سایر درآمدها (ریال):</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="number" class="form-control" id="otherIncome" name="otherIncome"
                                   value="${plan.otherIncome}">
                        </div>
                    </div>
                    <!-- expenseSum number-->
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="expenseSum">جمع هزینه ها (ریال):</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="number" class="form-control" id="expenseSum" name="expenseSum"
                                   value="${plan.expenseSum}" disabled>
                        </div>
                    </div>
                    <!-- incomeSum number-->
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="incomeSum">جمع درآمدها (ریال):</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="number" class="form-control" id="incomeSum" name="incomeSum"
                                   value="${plan.incomeSum}" disabled>
                        </div>
                    </div>
                    <!-- moneySum number-->
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="moneySum">مبلغ پرداختی (ریال)</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="number" class="form-control" id="moneySum" name="moneySum"
                                   value="${plan.moneySum}" disabled>
                        </div>
                    </div>
                    <!-- attachment file-->
                    <c:if test="${plan.attachment != null}">
                        <div class="form-group">
                            <label class="control-label col-sm-2">پیوست:</label>

                            <div class="col-sm-7 col-sm-offset-1">
                                <a href="${plan.attachment}" target="_blank">فایل پیوست</a>
                            </div>
                        </div>
                    </c:if>
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
                            <textarea class="form-control" rows="3" id="expertComment" name="expertComment"></textarea>
                        </div>
                    </div>
                    <!-- submit button -->
                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-10">
                            <button type="submit" class="btn btn-primary" name="submit" value="confirm">ارسال</button>
                        </div>
                    </div>
                </form>
            </div>
            <!-- /.row -->

            <!-- .row -->
            <div class="row planStateHistories">
                <div class="col-sm-10 col-sm-offset-1">
                    <!-- .panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-calendar"></i> رویداد ها</h3>
                        </div>
                        <div class="panel-body">
                            <!-- .table -->
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover table-striped">
                                    <thead>
                                    <tr>
                                        <th>تاریخ</th>
                                        <th>کاربر</th>
                                        <th>رویداد</th>
                                        <th>تغییرات</th>
                                        <%--<th style="display: none;">id</th>--%>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="planStateHistory" items="${plan.planStateHistories}">
                                        <tr>
                                            <td>${planStateHistory.timestamp}</td>
                                            <td>${planStateHistory.user.position.name}</td>
                                            <c:choose>
                                                <c:when test="${planStateHistory.name != null}">
                                                    <td>${planStateHistory.name}</td>
                                                    <td></td>
                                                </c:when>
                                                <c:when test="${planStateHistory.name == null}">
                                                    <td>${planStateHistory.workflowState.name}</td>
                                                    <td>
                                                        <button class="btn btn-primary btn-planStateHistories"
                                                                id="${planStateHistory.id}"
                                                                data-toggle="modal" data-target="#changesModal">مشاهده
                                                        </button>
                                                    </td>
                                                </c:when>
                                            </c:choose>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table -->
                        </div>
                    </div>
                    <!-- /.panel -->
                </div>
            </div>
            <!-- /.row -->

            <!-- Modal - changes -->
            <div class="modal fade" id="changesModal" role="dialog">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title"></h4>
                            <br/>
                        </div>
                        <div class="modal-body">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><i class="fa fa-calendar"></i> تغییرات</h3>
                                </div>
                                <div class="panel-body">
                                    <!-- .table -->
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover table-striped">
                                            <thead>
                                            <tr>
                                                <th>نام فیلد</th>
                                                <th>از</th>
                                                <th>به</th>
                                            </tr>
                                            </thead>
                                            <tbody id="changes">
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- /.table -->
                                </div>
                            </div>
                            <!-- /.panel -->
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.Modal -->


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
