<%@ page import="Models.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

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
    <link rel="stylesheet" href="/css/added.css"/>

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

    <!-- jQuery -->
    <script src="/js/jquery-1.11.3.min.js"></script>

    <script>
        $(document).ready(function () {
            var num = $("#menu1").children(".well").length;
            $("#confirmed-box").html(num);
            var num = $("#menu2").children(".well").length;
            $("#boss-box").html(num);
            var num = $("#menu3").children(".well").length;
            $("#expert-box").html(num);
            var num = $("#menu4").children(".well").length;
            $("#advisor-box").html(num);
            var num = $("#menu5").children(".well").length;
            $("#clerk-box").html(num);
        })
    </script>

    <script>
        $(document).ready(function () {
            var num = $("#menu1").children(".well[rejected='rejected']").length;
            $("#confirmed-num").html(num);
            var num = $("#menu1").children(".well[rejected!='rejected']").length;
            $("#rejected-num").html(num);
            var num = $("#menu2").children(".well[seen='seen']").length;
            $("#boss-box-seen").html(num);
            var num = $("#menu2").children(".well[seen!='seen']").length;
            $("#boss-box-not-seen").html(num);
            var num = $("#menu3").children(".well[seen='seen']").length;
            $("#expert-box-seen").html(num);
            var num = $("#menu3").children(".well[seen!='seen']").length;
            $("#expert-box-not-seen").html(num);
            var num = $("#menu4").children(".well[seen='seen']").length;
            $("#advisor-box-seen").html(num);
            var num = $("#menu4").children(".well[seen!='seen']").length;
            $("#advisor-box-not-seen").html(num);
            var num = $("#menu5").children(".well[seen='seen']").length;
            $("#clerk-box-seen").html(num);
            var num = $("#menu5").children(".well[seen!='seen']").length;
            $("#clerk-box-not-seen").html(num);
        })
    </script>

</head>
<body>

<div id="wrapper">

    <!-- Navigation -->
    <%@ include file="menu.jsp" %>
    <% int positionId = ((User) request.getSession().getAttribute("currentUser")).getPosition().getId(); %>
    <div id="page-wrapper">

        <div class="container-fluid">

            <br/>
            <br/>

            <!-- Filters Section -->
            <div class="row">
                <div class="row col-lg-10 col-lg-offset-1">

                    <!-- type filter -->
                    <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingOne">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse"
                                           data-parent="#accordion"
                                           href="#collapseOne" aria-expanded="false"
                                           aria-controls="collapseOne">ماهیت</a>
                                    </h4>
                                </div>
                                <div style="height: 0px;" aria-expanded="false" id="collapseOne"
                                     class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                                    <div class="panel-body">

                                        <div class="form-group">

                                            <div class="checkbox">
                                                <label>
                                                    <input value="" type="checkbox">بازدید عملی
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input value="" type="checkbox">کلاس ها و دوره های آموزشی
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input value="" type="checkbox">مسابقات عملی
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input value="" type="checkbox">نمایشگاه
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input value="" type="checkbox">همایش هاو کنفرانس ها
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input value="" type="checkbox">چاپ نشریه
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>
                    <!-- /type filter -->

                    <!-- association filter -->
                    <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingTwo">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse"
                                           data-parent="#accordion"
                                           href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                            انجمن ها
                                        </a>
                                    </h4>
                                </div>
                                <div style="height: 0px;" aria-expanded="false" id="collapseTwo"
                                     class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                    <div class="panel-body">

                                        <div class="form-group">

                                            <div class="checkbox">
                                                <label>
                                                    <input value="" type="checkbox">انجمن کامپیوتر
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input value="" type="checkbox">انجمن برق
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input value="" type="checkbox">انجمن مکانیک
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input value="" type="checkbox">انجمن معماری
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input value="" type="checkbox">انجمن معدن و ژئوفیزیک
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input value="" type="checkbox">انجمن مدیریت
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input value="" type="checkbox">انجمن کشاورزی
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input value="" type="checkbox">انجمن عمران
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input value="" type="checkbox">انجمن کارآفرینی
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input value="" type="checkbox">انجمن فیزیک و نجوم
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input value="" type="checkbox">انجمن شیمی
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input value="" type="checkbox">انجمن زمین شناسی
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input value="" type="checkbox">انجمن زبان
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input value="" type="checkbox">انجمن ریاضی
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input value="" type="checkbox">انجمن رباتیک
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input value="" type="checkbox">انجمن حسابداری
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input value="" type="checkbox">انجمن تربیت بدنی
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input value="" type="checkbox">انجمن پدافند غیر عامل
                                                </label>
                                            </div>
                                        </div>


                                    </div>
                                </div>


                            </div>


                        </div>
                    </div>
                    <!-- /association filter -->

                    <!-- date filter -->
                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12 ">
                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="accordion">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse"
                                           data-parent="#accordion"
                                           href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                            ترم
                                        </a>
                                    </h4>
                                </div>
                                <div style="height: 0px;" aria-expanded="false" id="collapseThree"
                                     class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                    <div class="panel-body">


                                        <div class="form-group">
                                            <label>از نیمسال </label>
                                            <select class="form-control">
                                                <option>اول 93</option>
                                                <option>دوم 93</option>
                                                <option>اول 94</option>
                                                <option>دوم 94</option>
                                                <option>اول 95</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>تا نیمسال</label>
                                            <select class="form-control">
                                                <option>اول 93</option>
                                                <option>دوم 93</option>
                                                <option>اول 94</option>
                                                <option>دوم 94</option>
                                                <option>اول 95</option>
                                            </select>
                                        </div>


                                    </div>
                                </div>


                            </div>


                        </div>
                    </div>
                    <!-- /date filter -->

                    <!-- filter button -->
                    <div class="col-lg-1 col-lg-offset-2">
                        <button type="button" class="btn btn-info " data-toggle="modal" data-target="#myModal">نمایش
                        </button>
                    </div>
                    <!-- /filter button -->

                </div>
            </div>
            <!-- /Filters Section -->
        </div>

        <!-- box section -->
        <div class="row">

            <!-- confirmed plans box -->
            <div class="col-lg-2 col-lg-offset-1 col-md-6 col-xs-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="row">

                            <div class="col-xs-12 text-right">
                                <div class="row">
                                    <div class="huge">
                                        <div class="row">
                                            <div class="col-lg-1 col-lg-offset-3 box-number" id="confirmed-box"></div>
                                            <div class="col-lg-7 col-lg-offset-2 each-number">تصویب شده: <span
                                                    id="confirmed-num"></span></div>
                                            <div class="col-lg-7 col-lg-offset-2 each-number">رد شده: <span
                                                    id="rejected-num"></span></div>
                                        </div>
                                    </div>
                                </div>
                                <div style="font-size: 13px; padding-top: 5px; text-align: center; border-top-width: 1px; border-top-style: solid; margin-top: 11px;">
                                    طرح های تصویب/رد شده
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="active"><a data-toggle="pill" href="#menu1">
                        <div class="panel-footer">
                            <span class="pull-right">نمایش جزییات</span>

                            <div class="clearfix"></div>
                        </div>
                    </a></div>
                </div>
            </div>
            <!-- /confirmed plans box -->

            <!-- boss box -->
            <div class="col-lg-2 col-md-6 col-xs-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="row">

                            <div class="col-xs-12 text-right">
                                <div class="row">
                                    <div class="huge">
                                        <div class="row">
                                            <div class="col-lg-1 col-lg-offset-3 box-number" id="boss-box"></div>
                                            <div class="col-lg-8 col-lg-offset-2 each-number">بررسی شده: <span
                                                    id="boss-box-seen"></span></div>
                                            <div class="col-lg-8 col-lg-offset-2 each-number">بررسی نشده: <span
                                                    id="boss-box-not-seen"></span></div>
                                        </div>
                                    </div>
                                </div>
                                <div style="font-size: 13px; padding-top: 5px; text-align: center; border-top-width: 1px; border-top-style: solid; margin-top: 11px;">
                                    صندوق ریاست
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="active"><a data-toggle="pill" href="#menu2">
                        <div class="panel-footer">
                            <span class="pull-right">نمایش جزییات</span>

                            <div class="clearfix"></div>
                        </div>
                    </a></div>
                </div>
            </div>
            <!-- /boss box -->

            <!-- expert box -->
            <div class="col-lg-2 col-md-6 col-xs-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="row">

                            <div class="col-xs-12 text-right">
                                <div class="row">
                                    <div class="huge">
                                        <div class="row">
                                            <div class="col-lg-1 col-lg-offset-3 box-number" id="expert-box"></div>
                                            <div class="col-lg-8 col-lg-offset-2 each-number">بررسی شده: <span
                                                    id="expert-box-seen"></span></div>
                                            <div class="col-lg-8 col-lg-offset-2 each-number">بررسی نشده: <span
                                                    id="expert-box-not-seen"></span></div>
                                        </div>
                                    </div>
                                </div>
                                <div style="font-size: 13px; padding-top: 5px; text-align: center; border-top-width: 1px; border-top-style: solid; margin-top: 11px;">
                                    صندوق کارشناس
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="active"><a data-toggle="pill" href="#menu3">
                        <div class="panel-footer">
                            <span class="pull-right">نمایش جزییات</span>

                            <div class="clearfix"></div>
                        </div>
                    </a></div>
                </div>
            </div>
            <!-- /expert box -->

            <!-- advisor box -->
            <div class="col-lg-2 col-md-6 col-xs-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="row">

                            <div class="col-xs-12 text-right">
                                <div class="row">
                                    <div class="huge">
                                        <div class="row">
                                            <div class="col-lg-1 col-lg-offset-3 box-number" id="advisor-box"></div>
                                            <div class="col-lg-8 col-lg-offset-2 each-number">بررسی شده: <span
                                                    id="advisor-box-seen"></span></div>
                                            <div class="col-lg-8 col-lg-offset-2 each-number">بررسی نشده: <span
                                                    id="advisor-box-not-seen"></span></div>
                                        </div>
                                    </div>
                                </div>
                                <div style="font-size: 13px; padding-top: 5px; text-align: center; border-top-width: 1px; border-top-style: solid; margin-top: 11px;">
                                    صندوق مشاورعلمی
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="active"><a data-toggle="pill" href="#menu4">
                        <div class="panel-footer">
                            <span class="pull-right">نمایش جزییات</span>

                            <div class="clearfix"></div>
                        </div>
                    </a></div>
                </div>
            </div>
            <!-- /advisor box -->

            <!-- clerk box -->
            <div class="col-lg-2 col-md-6 col-xs-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="row">

                            <div class="col-xs-12 text-right">
                                <div class="row">
                                    <div class="huge">
                                        <div class="row">
                                            <div class="col-lg-1 col-lg-offset-3 box-number" id="clerk-box"></div>
                                            <div class="col-lg-8 col-lg-offset-2 each-number">بررسی شده: <span
                                                    id="clerk-box-seen"></span></div>
                                            <div class="col-lg-8 col-lg-offset-2 each-number">بررسی نشده: <span
                                                    id="clerk-box-not-seen"></span></div>
                                        </div>
                                    </div>
                                </div>
                                <div style="font-size: 13px; padding-top: 5px; text-align: center; border-top-width: 1px; border-top-style: solid; margin-top: 11px;">
                                    صندوق دبیر
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="active"><a data-toggle="pill" href="#menu5">
                        <div class="panel-footer">
                            <span class="pull-right">نمایش جزییات</span>

                            <div class="clearfix"></div>
                        </div>
                    </a></div>
                </div>
            </div>
            <!-- /clerk box -->

        </div>
        <!-- /box section -->

        <!-- color guide -->
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1">
                <div class="col-sm-2"><span class="color-block" style="background-color: #CBD3F7"></span><span>بررسی نشده</span></div>
                <div class="col-sm-2"><span class="color-block" style="background-color: #B2EAB1"></span><span>بررسی شده</span></div>
                <div class="col-sm-2"><span class="color-block" style="background-color: #f5f5f5"></span><span>تصویب شده</span></div>
                <div class="col-sm-2"><span class="color-block" style="background-color: #A9A9A9"></span><span>رد شده</span></div>
            </div>
        </div>
        <!-- /color guide -->

        <!-- tab pane -->
        <div class="tab-content ">

            <!-- confirmed plans box contents -->
            <div id="menu1" class="tab-pane fade">
                <h3 class="page-header">محتویات صندوق طرح های تصویب شده</h3>

                <c:forEach var="plan" items="${plans}">
                    <c:if test="${plan.workflowState.box == 5 }">
                        <div class="well well-lg back-white"
                             <c:if test="${plan.workflowState.id == 14}">style="background: #A9A9A9"
                             rejected="rejected"</c:if>>
                            <div class="row">
                                <div class="col-lg-8">
                                    <h5 class="page-header">${plan.title}/${plan.association.name}</h5>

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <form action="/Controller/ServletDashboardSwitch" method="post">
                                                <input type="text" value="${plan.id}" name="id" style="display: none;"/>
                                                <button type="submit" class="btn btn-info">جزییات</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>

            </div>
            <!-- /confirmed plans box contents -->

            <!-- boss box contents -->
            <div id="menu2" class="tab-pane fade <%if (positionId == 1) {%>in active<%}%>">
                <h3 class="page-header">محتویات صندوق ریاست انجمن ها</h3>

                <c:forEach var="plan" items="${plans}">
                    <c:if test="${plan.workflowState.box == 4}">
                        <div class="well well-lg"
                             <c:if test="${plan.seen == 'true'}">style="background: #B2EAB1" seen="seen"</c:if> >
                            <div class="row">
                                <div class="col-lg-8">
                                    <h5 class="page-header">${plan.title}/${plan.association.name}</h5>

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <form action="/Controller/ServletDashboardSwitch" method="post">
                                                <input type="text" value="${plan.id}" name="id" style="display: none;"/>
                                                <%if (positionId == 1) {%>
                                                <button type="submit" class="btn btn-info">بررسی</button>
                                                <%}%>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>

            </div>
            <!-- /boss box contents -->

            <!-- expert box contents -->
            <div id="menu3" class="tab-pane fade <%if (positionId == 2) {%>in active<%}%>">
                <h3 class="page-header"> محتویات صندوق کارشناس انجمن ها</h3>

                <c:forEach var="plan" items="${plans}">
                    <c:if test="${plan.workflowState.box == 3}">
                        <div class="well well-lg"
                             <c:if test="${plan.seen == 'true'}">style="background: #B2EAB1" seen="seen"</c:if>>
                            <div class="row">
                                <div class="col-lg-8">
                                    <h5 class="page-header">${plan.title}/${plan.association.name}</h5>

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <form action="/Controller/ServletDashboardSwitch" method="post">
                                                <input type="text" value="${plan.id}" name="id" style="display: none;"/>
                                                <% if (positionId == 1 || positionId == 2) {%>
                                                <button type="submit" class="btn btn-info">بررسی</button>
                                                <%} %>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>

            </div>
            <!-- /expert box contents -->

            <!-- advisor box contents -->
            <div id="menu4" class="tab-pane fade <%if (positionId == 3) {%>in active<%}%>">
                <h3 class="page-header">محتویات صندوق مشاور علمی</h3>

                <c:forEach var="plan" items="${plans}">
                    <c:if test="${plan.workflowState.box == 2}">
                        <div class="well well-lg"
                             <c:if test="${plan.seen == 'true'}">style="background: #B2EAB1" seen="seen"</c:if>>
                            <div class="row">
                                <div class="col-lg-8">
                                    <h5 class="page-header">${plan.title}/${plan.association.name}</h5>

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <form action="/Controller/ServletDashboardSwitch" method="post">
                                                <input type="text" value="${plan.id}" name="id" style="display: none;"/>
                                                <% if (positionId == 1 || positionId == 3) {%>
                                                <button type="submit" class="btn btn-info">بررسی</button>
                                                <%} %>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>

            </div>
            <!-- /advisor box contents -->

            <!-- clerk box contents -->
            <div id="menu5" class="tab-pane fade <%if (positionId == 4) {%>in active<%}%>">
                <h3 class="page-header">محتویات صندوق دبیر</h3>

                <c:forEach var="plan" items="${plans}">
                    <c:if test="${plan.workflowState.box == 1}">
                        <div class="well well-lg"
                             <c:if test="${plan.seen == 'true'}">style="background: #B2EAB1" seen="seen"</c:if>>
                            <div class="row">
                                <div class="col-lg-8">
                                    <h5 class="page-header">${plan.title}/${plan.association.name}</h5>

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <form action="/Controller/ServletDashboardSwitch" method="post">
                                                <input type="text" value="${plan.id}" name="id" style="display: none;"/>
                                                <% if (positionId == 1 || positionId == 4) {%>
                                                <button type="submit" class="btn btn-info">بررسی</button>
                                                <%} %>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>

            </div>
            <!-- /clerk box contents -->

        </div>
        <!-- /tab pane -->


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
