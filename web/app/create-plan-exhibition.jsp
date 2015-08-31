<%--
  Created by IntelliJ IDEA.
  User: Saied
  Date: 8/8/2015
  Time: 4:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>سامانه انجمن های علمی</title>

<!-- Bootstrap Core CSS -->
<link href="../css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Core CSS RTL-->
<link href="../css/bootstrap-rtl.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../css/sb-admin.css" rel="stylesheet">
<link href="../css/sb-admin-rtl.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="../css/plugins/morris.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

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
                        ایجاد طرح جدید
                        <small></small>
                    </h1>

                </div>
            </div>
            <!-- /.row -->


            <!-- /.row -->
            <div class="row">
                <!-- form -->
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="control-label col-sm-2">انجمن علمی دانشجویی:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">عنوان طرح:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">محل برگزاری:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">تاریخ برگزاری: </label>

                        <div class="col-sm-3 col-sm-offset-1">
                            <input type="text" class="form-control" placeholder="yyyy/mm/dd">
                        </div>

                        <label class="control-label col-sm-1">لغایت</label>

                        <div class="col-sm-3">
                            <input type="text" class="form-control" placeholder="yyyy/mm/dd">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">ساعت برگزاری:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="needed">موارد درخواستی:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <textarea class="form-control" rows="3" id="needed"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">پرسنل اجرایی:</label>

                        <div class="col-sm-7 col-sm-offset-1"><a href="#" data-toggle="modal"
                                                                 data-target="#personnel"><i
                                class="fa fa-table fa-2x"></i></a></div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">موافقت مسئول یا سرپرست (در صورت نیاز):</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="file">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">ریز هزینه ها:</label>

                        <div class="col-sm-7 col-sm-offset-1"><a href="#" data-toggle="modal" data-target="#expenses"><i
                                class="fa fa-table fa-2x"></i></a></div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">تیم داوری:</label>

                        <div class="col-sm-7 col-sm-offset-1"><a href="#" data-toggle="modal" data-target="#jury"><i
                                class="fa fa-table fa-2x"></i></a></div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">آیین نامه برگزاری مسابقات:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="file">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">رزومه کامل مدرس:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="file">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="sidePrograms">برنامه های جانبی (شامل پذيرايي ويژه،
                            پخش موسيقي، دعوت از سخنرانان و ...)</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <textarea class="form-control" rows="3" id="sidePrograms"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">لیست کامل مهمانان:</label>

                        <div class="col-sm-7 col-sm-offset-1"><a href="#" data-toggle="modal" data-target="#guests"><i
                                class="fa fa-table fa-2x"></i></a></div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">پوستر:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="file">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">ثبت نام کنندگان:</label>

                        <div class="col-sm-7 col-sm-offset-1"><a href="#" data-toggle="modal" data-target="#enlisted">
                            <i class="fa fa-table fa-2x"></i></a></div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">مبالغ دریافتی از دانشجویان (ریال)</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="number" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">مبالغ دریافتی از اسپانسر(ریال)</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <input type="number" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="needed">نظرات مشاور انجمن:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <textarea class="form-control" rows="3" id="needed"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="needed">نظرات کارشناس انجمن:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <textarea class="form-control" rows="3" id="needed"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="needed">نظر نهایی ریاست انجمن های علمی:</label>

                        <div class="col-sm-7 col-sm-offset-1">
                            <textarea class="form-control" rows="3" id="needed"></textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-10">
                            <button type="submit" class="btn btn-primary">اعمال تغییرات</button>
                        </div>
                    </div>
                </form>
                <!-- /.form -->
            </div>
            <!-- /.row -->


        </div>
        <!-- /.container-fluid -->


        <!-- Models.Personnel -->
        <!-- Modal -->
        <div class="modal fade" id="personnel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <form action="#">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                    aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">پرسنل</h4>
                        </div>
                        <div class="modal-body">

                            <table>
                                <tr>
                                    <th>نام</th>
                                    <th>نام خانوادگی</th>
                                    <th>شماره تلفن</th>
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
                                                   placeholder="تلفن">
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
                                                   placeholder="تلفن">
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
                                                   placeholder="تلفن">
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
                                                   placeholder="تلفن">
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
                                                   placeholder="تلفن">
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
                                                   placeholder="تلفن">
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


        <!-- jury -->
        <!-- Modal -->
        <div class="modal fade" id="jury" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
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
                                    <th>گرایش تحصیلی</th>
                                    <th>مدرک تحصیلی</th>
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
                                                   placeholder="گرایش تحصیلی">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="مدرک تحصیلی">
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
                                                   placeholder="گرایش تحصیلی">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="مدرک تحصیلی">
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
                                                   placeholder="گرایش تحصیلی">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="مدرک تحصیلی">
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
                                                   placeholder="گرایش تحصیلی">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="مدرک تحصیلی">
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
                                                   placeholder="گرایش تحصیلی">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="مدرک تحصیلی">
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
                                                   placeholder="گرایش تحصیلی">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="مدرک تحصیلی">
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
                                                   placeholder="گرایش تحصیلی">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="#"
                                                   placeholder="مدرک تحصیلی">
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


        <!-- guests -->
        <!-- Modal -->
        <div class="modal fade" id="guests" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <form action="#">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                    aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">مهمانان</h4>
                        </div>
                        <div class="modal-body">

                            <table>
                                <tr>
                                    <th>نام</th>
                                    <th>نام خانوادگی</th>
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

<!-- jQuery -->
<script src="../js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../js/bootstrap.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="../js/plugins/morris/raphael.min.js"></script>
<script src="../js/plugins/morris/morris.min.js"></script>
<script src="../js/plugins/morris/morris-data.js"></script>

</body>
</html>
