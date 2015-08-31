<%-- :)
  Created by IntelliJ IDEA.
  User: Saied
  Date: 8/8/2015
  Time: 4:22 PM
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
                    <h1 class="page-header">
                        ایجاد طرح (بازدید علمی)
                    </h1>
                </div>
            </div>
            <!-- /.row -->


            <!-- /.row -->
            <div class="row">
                <form class="form-horizontal" role="form" action="/Controller/ServletCreatePlanTrip"
                      method="post" enctype="multipart/form-data">
                    <!-- type -->
                    <!-- text -->
                    <div class="form-group" style="display: none;">
                        <label class="control-label col-sm-2">ماهیت:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="text" class="form-control" name="type" value="بازدید علمی">
                        </div>
                    </div>
                    <!-- title -->
                    <!-- text -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">عنوان طرح:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="text" class="form-control" name="title">
                        </div>
                    </div>
                    <!-- place -->
                    <!-- text -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">محل برگزاری:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="text" class="form-control" name="place">
                        </div>
                    </div>
                    <!-- date -->
                    <!-- text -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">تاریخ برگزاری: </label>
                        <!-- beginDate -->
                        <div class="col-sm-3 col-sm-offset-1">
                            <input type="text" class="form-control" placeholder="yyyy/mm/dd" name="beginDate">
                        </div>
                        <label class="control-label col-sm-1">لغایت</label>
                        <!-- endDate -->
                        <div class="col-sm-3">
                            <input type="text" class="form-control" placeholder="yyyy/mm/dd" name="endDate">
                        </div>
                    </div>
                    <!-- time -->
                    <!-- text -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">ساعت برگزاری:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="text" class="form-control" name="time">
                        </div>
                    </div>
                    <!-- requestedItems -->
                    <!-- textarea -->
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="needed">موارد درخواستی:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <textarea class="form-control" rows="3" id="needed" name="requestedItems"></textarea>
                        </div>
                    </div>

                    <!-- personnel -->
                    <!-- modal -->
                    <div class="form-group">
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
                            <input type="file" id="agreement" name="supervisorAgreement">
                        </div>
                    </div>
                    <!-- expenses -->
                    <!-- modal -->
                    <div class="form-group">
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
                                      name="advisorComment"></textarea>
                        </div>
                    </div>
                    <!-- expertComment -->
                    <!-- textarea -->
                    <div class="form-group" style="display: none;">
                        <label class="control-label col-sm-2" for="expertComment">نظرات کارشناس انجمن:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <textarea class="form-control" rows="3" id="expertComment" name="expertComment"></textarea>
                        </div>
                    </div>
                    <!-- bossComment -->
                    <!-- textarea -->
                    <div class="form-group" style="display: none;">
                        <label class="control-label col-sm-2" for="bossComment">نظر نهایی ریاست انجمن های علمی:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <textarea class="form-control" rows="3" id="bossComment" name="bossComment"></textarea>
                        </div>
                    </div>
                    <!-- poster file -->
                    <div class="form-group" style="display: none;">
                        <label class="control-label col-sm-2">پوستر:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="file">
                        </div>
                    </div>
                    <!-- enlisted modal -->
                    <div class="form-group" style="display: none;">
                        <label class="control-label col-sm-2">ثبت نام کنندگان:</label>

                        <div class="col-sm-7 col-sm-offset-1"><a href="#" data-toggle="modal" data-target="#enlisted">
                            <i class="fa fa-table fa-2x"></i></a></div>
                    </div>
                    <!-- studentsMoney number -->
                    <div class="form-group" style="display: none;">
                        <label class="control-label col-sm-2">مبالغ دریافتی از دانشجویان (ریال)</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="number" class="form-control" name="studentMoney">
                        </div>
                    </div>
                    <!-- sponserMoney number-->
                    <div class="form-group" style="display: none;">
                        <label class="control-label col-sm-2">مبالغ دریافتی از اسپانسر(ریال)</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="number" class="form-control" name="sponsorMoney">
                        </div>
                    </div>
                    <!-- submit button -->
                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-10">
                            <button type="submit" class="btn btn-primary" value="submit">اعمال تغییرات</button>
                        </div>
                    </div>
                </form>
            </div>

        </div>
        <!-- /.container-fluid -->


        <!-- expenses -->
        <!-- Modal -->
        <div class="modal fade" id="expenses" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <form action="#">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                    aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">ریز هزینه ها</h4>
                        </div>
                        <div class="modal-body">

                            <table>
                                <tr>
                                    <th>عنوان</th>
                                    <th>هزینه</th>
                                    <th class="big-comment">توضیحات</th>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="عنوان">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="هزینه">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="توضیحات">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="عنوان">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="هزینه">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="توضیحات">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="عنوان">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="هزینه">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="توضیحات">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="عنوان">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="هزینه">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="توضیحات">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="عنوان">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="هزینه">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="توضیحات">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="عنوان">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="هزینه">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="توضیحات">
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-primary">اعمال تغییرات</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </form>
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->


        <!-- enlisted -->
        <!-- Modal -->
        <div class="modal fade" id="enlisted" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <form action="#">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                    aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">تیم داوری</h4>
                        </div>
                        <div class="modal-body">

                            <table>
                                <tr>
                                    <th>نام</th>
                                    <th>نام خانوادگی</th>
                                    <th>شماره دانشجویی</th>
                                    <th>ایمیل</th>
                                    <th>تلفن همراه</th>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="نام">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="نام خانوادگی">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="شماره دانشجویی">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="ایمیل">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="تلفن همراه">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="نام">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="نام خانوادگی">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="شماره دانشجویی">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="ایمیل">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="تلفن همراه">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="نام">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="نام خانوادگی">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="شماره دانشجویی">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="ایمیل">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="تلفن همراه">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="نام">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="نام خانوادگی">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="شماره دانشجویی">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="ایمیل">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="تلفن همراه">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="نام">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="نام خانوادگی">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="شماره دانشجویی">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="ایمیل">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="تلفن همراه">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="نام">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="نام خانوادگی">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="شماره دانشجویی">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="ایمیل">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="تلفن همراه">
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-primary">اعمال تغییرات</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </form>
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->


<%--<!-- jQuery -->--%>
<%--<script src="/js/jquery.js"></script>--%>

<!-- jQuery -->

<!-- Bootstrap Core JavaScript -->
<script src="/js/bootstrap.min.js"></script>

<%--<!-- Morris Charts JavaScript -->--%>
<%--<script src="/js/plugins/morris/raphael.min.js"></script>--%>
<%--<script src="/js/plugins/morris/morris.min.js"></script>--%>
<%--<script src="/js/plugins/morris/morris-data.js"></script>--%>


</body>
</html>
