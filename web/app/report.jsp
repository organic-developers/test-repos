﻿﻿
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<body>

<div id="wrapper">

    <!-- Navigation -->
    <%@ include file="menu.jsp" %>


    <div id="page-wrapper">

        <div class="container-fluid">

            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">
                        گزارش گیری
                        <small></small>
                    </h1>

                </div>
            </div>


            <div class="bs-example bs-example-tabs" data-example-id="togglable-tabs">
                <ul id="myTabs" class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab"
                                                              aria-controls="home" aria-expanded="true">اعضا</a></li>
                    <li class="" role="presentation"><a aria-expanded="false" href="#profile" role="tab"
                                                        id="profile-tab" data-toggle="tab"
                                                        aria-controls="profile">طرح</a></li>

                </ul>
                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade active in" role="tabpanel" id="home" aria-labelledby="home-tab">
                        <div class="row"><br>

                            <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">


                                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                    <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="headingOne">
                                            <h4 class="panel-title">
                                                <a class="" role="button" data-toggle="collapse"
                                                   data-parent="#accordion" href="#collapseOne" aria-expanded="true"
                                                   aria-controls="collapseOne">سمت</a>
                                            </h4>
                                        </div>
                                        <div style="" aria-expanded="true" id="collapseOne"
                                             class="panel-collapse collapse in" role="tabpanel"
                                             aria-labelledby="headingOne">
                                            <div class="panel-body">

                                                <div class="form-group">

                                                    <div class="checkbox">
                                                        <label>
                                                            <input value="" type="checkbox">عضو فعال</label>
                                                    </div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input value="" type="checkbox">دبیر</label>
                                                    </div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input value="" type="checkbox">مشاورعلمی</label>
                                                    </div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input value="" type="checkbox">کارشناس</label>
                                                    </div>


                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                </div>


                            </div>


                            <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">


                                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                    <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="headingTwo">
                                            <h4 class="panel-title">
                                                <a class="" role="button" data-toggle="collapse"
                                                   data-parent="#accordion" href="#collapseTwo" aria-expanded="true"
                                                   aria-controls="collapseTwo">
                                                    انجمن ها
                                                </a>
                                            </h4>
                                        </div>
                                        <div style="" aria-expanded="true" id="collapseTwo"
                                             class="panel-collapse collapse in" role="tabpanel"
                                             aria-labelledby="headingTwo">
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


                            <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12 ">


                                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                    <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="headingTwo">
                                            <h4 class="panel-title">
                                                <a class="collapsed" role="button" data-toggle="collapse"
                                                   data-parent="#accordion" href="#collapseThree" aria-expanded="false"
                                                   aria-controls="collapseThree">تاریخ فعالیت</a>
                                            </h4>
                                        </div>
                                        <div style="height: 0px;" aria-expanded="false" id="collapseThree"
                                             class="panel-collapse collapse" role="tabpanel"
                                             aria-labelledby="headingThree">
                                            <div class="panel-body">


                                                <div style="text-align: center;" class="form-group">
                                                    <label class="control-label">از تاریخ:</label>


                                                    <div class="form-group"><label
                                                            class="control-label col-lg-2">سال:</label>

                                                        <div class="col-lg-10"><input class="form-control"></div>
                                                        <br></div>
                                                    <div class="form-group"><label
                                                            class="control-label col-lg-2">ماه:</label>

                                                        <div class="col-lg-10"><input class="form-control"></div>
                                                        <br></div>
                                                    <div class="form-group"><label
                                                            class="control-label col-lg-2">روز:</label>

                                                        <div class="col-lg-10"><input class="form-control"></div>
                                                    </div>


                                                </div>


                                                <div style="text-align: center; margin-top: 7px; border-top-width: 0px; border-top-style: solid; padding-top: 46px;"
                                                     class="form-group">
                                                    <label class="control-label">تا تاریخ:</label>


                                                    <div class="form-group"><label
                                                            class="control-label col-lg-2">سال:</label>

                                                        <div class="col-lg-10"><input class="form-control"></div>
                                                        <br></div>
                                                    <div class="form-group"><label
                                                            class="control-label col-lg-2">ماه:</label>

                                                        <div class="col-lg-10"><input class="form-control"></div>
                                                        <br></div>
                                                    <div class="form-group"><label
                                                            class="control-label col-lg-2">روز:</label>

                                                        <div class="col-lg-10"><input class="form-control"></div>
                                                    </div>


                                                </div>


                                            </div>
                                        </div>


                                    </div>


                                </div>


                            </div>


                            <div class="col-lg-1 col-lg-offset-2">
                                <button type="button" class="btn btn-info " data-toggle="modal" data-target="#myModal">
                                    نمایش
                                </button>
                            </div>


                        </div>
                        <div class="row">
                            <div class="col-lg-12">

                                <div class="panel panel-info">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">گزارشات</h3>
                                    </div>
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-hover table-striped">
                                                <thead>
                                                <tr>
                                                    <th>شناسه</th>
                                                    <th>نام</th>
                                                    <th>نام خانوادگی</th>
                                                    <th>سمت</th>
                                                    <th>انجمن</th>

                                                </tr>
                                                </thead>
                                                <tbody>
                                                <%--@elvariable id="allUser" type="java.util.List"--%>
                                                <c:forEach items="${allUser}" var="current">
                                                    <tr>
                                                        <td><c:out value="${current.id}"/></td>
                                                        <td><c:out value="${current.fName}"/></td>
                                                        <td><c:out value="${current.lName}"/></td>
                                                        <td><c:out value="${current.positionTitle}"/></td>
                                                        <td><c:out value="${current.associationNumber}"/></td>
                                                            <%--<td>10/21/2013</td>
                                                            <td>3:29 PM</td>
                                                            <td>$321.33</td>--%>
                                                    </tr>
                                                </c:forEach>
                                                <%--<tr>
                                                    <td>3325</td>
                                                    <td>10/21/2013</td>
                                                    <td>3:20 PM</td>

                                                </tr>
                                                <tr>
                                                    <td>3324</td>
                                                    <td>10/21/2013</td>
                                                    <td>3:03 PM</td>

                                                </tr>
                                                <tr>
                                                    <td>3323</td>
                                                    <td>10/21/2013</td>
                                                    <td>3:00 PM</td>

                                                </tr>
                                                <tr>
                                                    <td>3322</td>
                                                    <td>10/21/2013</td>
                                                    <td>2:49 PM</td>

                                                </tr>
                                                <tr>
                                                    <td>3321</td>
                                                    <td>10/21/2013</td>
                                                    <td>2:23 PM</td>

                                                </tr>
                                                <tr>
                                                    <td>3320</td>
                                                    <td>10/21/2013</td>
                                                    <td>2:15 PM</td>

                                                </tr>
                                                <tr>
                                                    <td>3319</td>
                                                    <td>10/21/2013</td>
                                                    <td>2:13 PM</td>

                                                </tr>--%>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
                        <div class="row"><br>

                            <div class="col-lg-2 col-md-12 col-sm-12 col-xs-12">


                                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                    <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="headingOne">
                                            <h4 class="panel-title">
                                                <a aria-controls="collapseOnePlan" href="#collapseOnePlan" class=""
                                                   role="button" data-toggle="collapse" data-parent="#accordion"
                                                   aria-expanded="true">
                                                    ماهیت
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseOnePlan" style="" aria-expanded="true"
                                             class="panel-collapse collapse in" role="tabpanel"
                                             aria-labelledby="headingOne">
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


                            <div class="col-lg-2 col-md-12 col-sm-12 col-xs-12">


                                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                    <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="headingTwo">
                                            <h4 class="panel-title">
                                                <a aria-controls="collapseTwoPlan" href="#collapseTwoPlan" class=""
                                                   role="button" data-toggle="collapse" data-parent="#accordion"
                                                   aria-expanded="true">
                                                    انجمن ها
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseTwoPlan" style="" aria-expanded="true"
                                             class="panel-collapse collapse in" role="tabpanel"
                                             aria-labelledby="headingTwo">
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


                            <div class="col-lg-2 col-md-6 col-sm-12 col-xs-12 ">


                                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                    <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="headingTwo">
                                            <h4 class="panel-title">
                                                <a aria-controls="collapseThreePlan" href="#collapseThreePlan"
                                                   class="collapsed" role="button" data-toggle="collapse"
                                                   data-parent="#accordion" aria-expanded="false">
                                                    ترم
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseThreePlan" style="" aria-expanded="true"
                                             class="panel-collapse collapse in" role="tabpanel"
                                             aria-labelledby="headingThree">
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


                            <div class="col-lg-2 col-md-6 col-sm-12 col-xs-12 ">


                                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                    <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="headingTwo">
                                            <h4 class="panel-title">
                                                <a aria-controls="collapseFourPlan" href="#collapseFourPlan" class=""
                                                   role="button" data-toggle="collapse" data-parent="#accordion"
                                                   aria-expanded="true">
                                                    هزینه
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseFourPlan" style="" aria-expanded="true"
                                             class="panel-collapse collapse in" role="tabpanel"
                                             aria-labelledby="headingFour">
                                            <div class="panel-body">


                                                <div class="form-group">
                                                    <label class="control-label">از: </label>
                                                    <input class="form-control">

                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label">تا: </label>
                                                    <input class="form-control">
                                                </div>
                                                <small>هزینه به تومان است</small>


                                            </div>
                                        </div>


                                    </div>


                                </div>


                            </div>


                            <div class="col-lg-1 col-lg-offset-3">
                                <button type="button" class="btn btn-info " data-toggle="modal" data-target="#myModal">
                                    نمایش
                                </button>
                            </div>


                        </div>
                        <div class="row">
                            <div class="col-lg-12">

                                <div class="panel panel-info">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">گزارشات</h3>
                                    </div>
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-hover table-striped">
                                                <thead>
                                                <tr>
                                                    <th>شماره طرح</th>
                                                    <th>موضوع</th>
                                                    <th>تاریخ برگزاری</th>
                                                    <th>ماهیت</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <%--@elvariable id="allPlan" type="java.util.List"--%>
                                                <c:forEach items="${allPlan}" var="current">
                                                    <tr>
                                                        <td><c:out value="${current.id}"/></td>
                                                        <td><c:out value="${current.title}"/></td>
                                                        <td><c:out value="${current.beginDate}"/></td>
                                                        <td><c:out value="${current.type}"/></td>
                                                            <%--<td>10/21/2013</td>
                                                            <td>3:29 PM</td>
                                                            <td>$321.33</td>--%>
                                                    </tr>
                                                </c:forEach>
                                                <%--<tr>
                                                    <td>3325</td>
                                                    <td>10/21/2013</td>
                                                    <td>3:20 PM</td>
                                                    <td>$234.34</td>
                                                </tr>
                                                <tr>
                                                    <td>3324</td>
                                                    <td>10/21/2013</td>
                                                    <td>3:03 PM</td>
                                                    <td>$724.17</td>
                                                </tr>
                                                <tr>
                                                    <td>3323</td>
                                                    <td>10/21/2013</td>
                                                    <td>3:00 PM</td>
                                                    <td>$23.71</td>
                                                </tr>
                                                <tr>
                                                    <td>3322</td>
                                                    <td>10/21/2013</td>
                                                    <td>2:49 PM</td>
                                                    <td>$8345.23</td>
                                                </tr>
                                                <tr>
                                                    <td>3321</td>
                                                    <td>10/21/2013</td>
                                                    <td>2:23 PM</td>
                                                    <td>$245.12</td>
                                                </tr>
                                                <tr>
                                                    <td>3320</td>
                                                    <td>10/21/2013</td>
                                                    <td>2:15 PM</td>
                                                    <td>$5663.54</td>
                                                </tr>
                                                <tr>
                                                    <td>3319</td>
                                                    <td>10/21/2013</td>
                                                    <td>2:13 PM</td>
                                                    <td>$943.45</td>
                                                </tr>--%>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>


                </div>
            </div>

        </div>
        <!-- /.container-fluid -->

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

