<%--
  Created by IntelliJ IDEA.
  User: Saied
  Date: 9/9/2015
  Time: 7:21 AM
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

    <!-- Custom Fonts -->
    <link href="/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="/css/jquery-confirm.min.css"/>


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


    <script src="/js/jquery-1.11.3.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/added.js"></script>
    <script src="/js/jquery-confirm.min.js"></script>

    <script>
        $(document).ready(function(){
            $("#send1").on('click', function(){
                var x = $(".checki:checked").length;
                alert($(".checki:checked").length);
                if( x > ${plan.registrationMax}){
                    $.confirm({
                        title: 'هشدار!',
                        content: 'تعداد افراد تایید شده از حداکثر مجاز بیشتر می باشد!' +
                        'در صورت تایید مسئولیت های ایجاد شده بر عهده کاربر می باشد!',
                        confirm: function(){
                            $("#send").click();
                        },
                        cancel: function(){
                        }
                    });
                }else if( x < ${plan.registrationMin}){
                    $.confirm({
                        title: 'هشدار!',
                        content: 'تعداد افراد تایید شده از حداقل مجاز کمتر می باشد! ' +
                        'در صورت تایید مسئولیت های ایجاد شده بر عهده کاربر می باشد!',
                        confirm: function(){
                            $("#send").click();
                        },
                        cancel: function(){
                        }
                    });
                }else {
                    $("#send").click();
                }
            });
        });
    </script>

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
                    <h1 class="page-header">ثبت لیست ثبت نام کنندگان:</h1>
                </div>
            </div>
            <!-- /.row -->

            <!-- .row -->
            <div class="row">
                <form class="form-horizontal" role="form" action="/Controller/ServletEnterRegistrations"
                      method="post" id="registration-form">
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
                    <!-- enlisted list -->
                    <div class="form-group">
                        <label class="control-label col-sm-2">لیست ثبت نام کنندگان:</label>

                        <div class="col-sm-7 col-sm-offset-1">

                            <div class="line line-top"></div>

                            <div class="row plan-table enlisted-table">
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
                                        <div class="form-group col-xs-2">
                                            <input type="text" class="form-control" name="enlisted-phone-"
                                                   placeholder="تلفن همراه" value="${enlisted.phone}">
                                        </div>
                                        <div class="form-group col-xs-2">
                                            <input type="text" class="form-control" name="enlisted-email-"
                                                   placeholder="ایمیل" value="${enlisted.email}">
                                        </div>
                                        <div class="form-group col-xs-1">
                                            <input type="checkbox" class="form-control checki" name="confirmed-"
                                                   value="true"
                                                   <c:if test="${enlisted.confirmed == 'true'}">checked</c:if>>
                                        </div>
                                        <div class="form-group col-xs-1">
                                            <span class="glyphicon glyphicon-remove"></span>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                            <span class="glyphicon glyphicon-plus" id="enlisted-plus-plus"></span>

                            <div class="line line-bottom"></div>
                        </div>

                    </div>
                    <!-- submit button -->
                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-10">
                            <button type="submit" class="btn btn-primary" name="submit" id="send" value="send" style="display: none;">ارسال</button>
                            <button type="button" class="btn btn-primary" name="submit" id="send1" value="send">ارسال</button>
                            <button type="submit" class="btn btn-info" name="submit" id="tentative" value="tentative">ثبت موقت</button>
                        </div>
                    </div>
                </form>
            </div>
            <!-- /.row -->


            <!-- table of changes -->
            <%@ include file="table-of-changes.jsp" %>

        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->


</body>
</html>
