<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <c:set var="root" value="${pageContext.request.contextPath}" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>سامانه انجمن های علمی</title>

    <!-- Bootstrap Core CSS -->
    <link href="${root}/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Core CSS RTL-->
    <link href="${root}/css/bootstrap-rtl.min.css" rel="stylesheet">

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


</head>


<body>


<div id="wrapper">

    <!-- Navigation -->
    <%@ include file="menu.jsp" %>

    <div id="page-wrapper">

        <div class="container-fluid">

            <br/>
            <br/>

            <div class="row">
                <div class="row col-lg-10 col-lg-offset-1">
                    <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">


                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingOne">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse"
                                           data-parent="#accordion"
                                           href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                                            ماهیت
                                        </a>
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
                    <div class="col-lg-1 col-lg-offset-2">
                        <button type="button" class="btn btn-info " data-toggle="modal" data-target="#myModal">نمایش
                        </button>
                    </div>
                </div>
            </div>


        </div>

        <div class="row">
            <div class="col-lg-2 col-lg-offset-1 col-md-6 col-xs-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="row">

                            <div class="col-xs-12 text-right">
                                <div class="row">
                                    <div class="huge">
                                        <div class="row">
                                            <div class="col-lg-1 col-lg-offset-3"
                                                 style="padding-top: 15px; padding-bottom: 15px; padding-right: 24px;">
                                                25
                                            </div>
                                            <div class="col-lg-8 col-lg-offset-1">


                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div style="font-size: 13px; padding-top: 5px; text-align: center; border-top-width: 1px; border-top-style: solid; margin-top: 11px;">
                                    طرح های تصویب شده
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="active"><a data-toggle="pill" href="#menu1">
                        <div class="panel-footer">
                            <span class="pull-right">نمایش جزییات</span>
                            <span class="pull-left"><i class="fa fa-arrow-circle-left"></i></span>

                            <div class="clearfix"></div>
                        </div>
                    </a></div>
                </div>
            </div>

            <div class="col-lg-2 col-md-6 col-xs-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="row">

                            <div class="col-xs-12 text-right">
                                <div class="row">
                                    <div class="huge">
                                        <div class="row">
                                            <div class="col-lg-1 col-lg-offset-1" style="padding-top: 15px;">12
                                            </div>
                                            <div class="col-lg-8 col-lg-offset-1"><a href="#"><span class="badge "
                                                                                                    style="margin-right: 0px; padding-right: 4px; padding-left: 4px; color: rgb(255, 255, 255); background-color: rgb(201, 48, 44);">3 بررسی نشده</span></a>
                                                <a href="#"><span class="badge "
                                                                  style="margin-right: 0px; padding-right: 4px; padding-left: 4px; color: rgb(255, 255, 255); background-color: rgb(201, 48, 44);">3 رد شده</span></a>

                                            </div>
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
                            <span class="pull-left"><i class="fa fa-arrow-circle-left"></i></span>

                            <div class="clearfix"></div>
                        </div>
                    </a></div>
                </div>
            </div>
            <div class="col-lg-2 col-md-6 col-xs-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="row">

                            <div class="col-xs-12 text-right">
                                <div class="row">
                                    <div class="huge">
                                        <div class="row">
                                            <div class="col-lg-1 col-lg-offset-1" style="padding-top: 15px;">12
                                            </div>
                                            <div class="col-lg-8 col-lg-offset-1"><a href="#"><span class="badge "
                                                                                                    style="margin-right: 0px; padding-right: 4px; padding-left: 4px; color: rgb(255, 255, 255); background-color: rgb(201, 48, 44);">3 بررسی نشده</span></a>

                                                <a href="#"><span
                                                        style="margin-right: 0px; margin-bottom: 0px; color: rgb(255, 255, 255); background-color: rgb(51, 122, 183);"
                                                        class="badge ">7 بررسی شده</span></a></div>
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
                            <span class="pull-left"><i class="fa fa-arrow-circle-left"></i></span>

                            <div class="clearfix"></div>
                        </div>
                    </a></div>
                </div>
            </div>
            <div class="col-lg-2 col-md-6 col-xs-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="row">

                            <div class="col-xs-12 text-right">
                                <div class="row">
                                    <div class="huge">
                                        <div class="row">
                                            <div class="col-lg-1 col-lg-offset-1" style="padding-top: 15px;">6</div>
                                            <div class="col-lg-8 col-lg-offset-1"><a href="#"><span class="badge "
                                                                                                    style="margin-right: 0px; padding-right: 4px; padding-left: 4px; color: rgb(255, 255, 255); border-color: rgb(238, 162, 54); background-color: rgb(201, 48, 44);">3 بررسی نشده</span></a>


                                                <a href="#"> <span
                                                        style="margin-right: 0px; margin-bottom: 0px; color: rgb(255, 255, 255); background-color: rgb(201, 48, 44);"
                                                        class="badge ">3 رد شده</span></a></div>
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
                            <span class="pull-left"><i class="fa fa-arrow-circle-left"></i></span>

                            <div class="clearfix"></div>
                        </div>
                    </a></div>
                </div>
            </div>
            <div class="col-lg-2 col-md-6 col-xs-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="row">

                            <div class="col-xs-12 text-right">
                                <div class="row">
                                    <div class="huge">
                                        <div class="row">
                                            <div class="col-lg-1 col-lg-offset-1"
                                                 style="padding-top: 15px; padding-bottom: 15px;">6
                                            </div>
                                            <div style="margin-top: 12px; padding-right: 10px;"
                                                 class="col-lg-8 col-lg-offset-1"><a
                                                    style="border-top-width: 0px; border-top-style: solid; margin-top: 0px; padding-bottom: 0px;"
                                                    href="#"><span class="badge "
                                                                   style="margin-right: 0px; padding-right: 4px; padding-left: 4px; color: rgb(255, 255, 255); border-color: rgb(238, 162, 54); background-color: rgb(201, 48, 44);">3 بررسی نشده</span></a>


                                            </div>
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
                            <span class="pull-left"><i class="fa fa-arrow-circle-left"></i></span>

                            <div class="clearfix"></div>
                        </div>
                    </a></div>
                </div>
            </div>
        </div>

        <div class="tab-content ">

            <div id="menu1" class="tab-pane fade  in active">
                <h3 class="page-header">محتویات صندوق طرح های تصویب شده</h3>

                <div class="well well-lg" >
                    <div style="direction: rtl">
                        <div class="row">
                            <div class="col-lg-8">
                                <h5 class="page-header">جلسه معارفه ورودی های 93 / انجمن علمی کامپیوتر و آی تی</h5>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <button type="button" class="btn btn-info" data-toggle="modal"
                                                data-target="#">ویرایش
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="well well-lg" >
                    <div style="direction: rtl">
                        <div class="row">
                            <div class="col-lg-8">
                                <h5 class="page-header">جلسه معارفه ورودی های 93 / انجمن علمی کامپیوتر و آی تی</h5>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <button type="button" class="btn btn-info" data-toggle="modal"
                                                data-target="#">ویرایش
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="well well-lg" >
                    <div style="direction: rtl">
                        <div class="row">
                            <div class="col-lg-8">
                                <h5 class="page-header">جلسه معارفه ورودی های 93 / انجمن علمی کامپیوتر و آی تی</h5>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <button type="button" class="btn btn-info" data-toggle="modal"
                                                data-target="#">ویرایش
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="well well-lg" >
                    <div style="direction: rtl">
                        <div class="row">
                            <div class="col-lg-8">
                                <h5 class="page-header">جلسه معارفه ورودی های 93 / انجمن علمی کامپیوتر و آی تی</h5>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <button type="button" class="btn btn-info" data-toggle="modal"
                                                data-target="#">ویرایش
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="well well-lg" style="border: 2px solid #337AB7;min-height:140px">
                    <div class="row">
                        <div style="direction: rtl;" class="col-lg-8">

                            <h5 style="margin-top: 0px; font-size: 17px;" class="page-header" data-toggle="modal"
                                data-target="#myModal">عنوان: دوره آموزشی حفاظت</h5>

                            ماهیت: دوره آموزشی
                            / محل برگزاری: تالار شقایق
                            / تاریخ برگزاری: 1394/3/3

                            <div class="row">
                                <div class="col-lg-12"><br>

                                    <button type="button" class="btn btn-info " data-toggle="modal"
                                            data-target="#myModal">جزییات
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-lg-offset-0"><img style="width: 50%; float: left; margin-top: 7px;"
                                                                   src="image/pic1.jpg" class=""
                                                                   alt="Generic placeholder image"></div>

                    </div>
                </div>


            </div>
            <div id="menu2" class="tab-pane fade">
                <h3 class="page-header">محتویات صندوق ریاست انجمن ها</h3>

                <div class="well well-lg" style="border: 2px solid #F0AD4E;min-height:140px">
                    Look, I'm in a large well!
                </div>
                <div class="well well-lg" style="border: 2px solid #F0AD4E;min-height:140px">
                    Look, I'm in a large well!
                </div>
                <div class="well well-lg" style="border: 2px solid #F0AD4E;min-height:140px">
                    Look, I'm in a large well!
                </div>
                <div class="well well-lg" style="border: 2px solid #F0AD4E;min-height:140px">
                    Look, I'm in a large well!
                </div>
                <div class="well well-lg" style="border: 2px solid #F0AD4E;min-height:140px">
                    Look, I'm in a large well!
                </div>
            </div>
            <div id="menu3" class="tab-pane fade">
                <h3 class="page-header"> محتویات صندوق کارشناس انجمن ها</h3>

                <div class="well well-lg" style="border: 2px solid #D9534F;min-height:140px">
                    Look, I'm in a large well!
                </div>
                <div class="well well-lg" style="border: 2px solid #D9534F;min-height:140px">
                    Look, I'm in a large well!
                </div>
                <div class="well well-lg" style="border: 2px solid #D9534F;min-height:140px">
                    Look, I'm in a large well!
                </div>
                <div class="well well-lg" style="border: 2px solid #D9534F;min-height:140px">
                    Look, I'm in a large well!
                </div>
                <div class="well well-lg" style="border: 2px solid #D9534F;min-height:140px">
                    Look, I'm in a large well!
                </div>
            </div>
            <div id="menu4" class="tab-pane fade">
                <h3 class="page-header">محتویات صندوق مشاور علمی</h3>

                <div class="well well-lg" style="border: 2px solid #D9534F;min-height:140px">
                    Look, I'm in a large well!
                </div>
                <div class="well well-lg" style="border: 2px solid #D9534F;min-height:140px">
                    Look, I'm in a large well!
                </div>
                <div class="well well-lg" style="border: 2px solid #D9534F;min-height:140px">
                    Look, I'm in a large well!
                </div>
                <div class="well well-lg" style="border: 2px solid #D9534F;min-height:140px">
                    Look, I'm in a large well!
                </div>
                <div class="well well-lg" style="border: 2px solid #D9534F;min-height:140px">
                    Look, I'm in a large well!
                </div>
            </div>
            <div id="menu5" class="tab-pane fade">
                <h3 class="page-header">محتویات صندوق دبیر</h3>

                <div class="well well-lg" style="border: 2px solid #D9534F;min-height:140px">
                    Look, I'm in a large well!
                </div>
                <div class="well well-lg" style="border: 2px solid #D9534F;min-height:140px">
                    Look, I'm in a large well!
                </div>
                <div class="well well-lg" style="border: 2px solid #D9534F;min-height:140px">
                    Look, I'm in a large well!
                </div>
                <div class="well well-lg" style="border: 2px solid #D9534F;min-height:140px">
                    Look, I'm in a large well!
                </div>
                <div class="well well-lg" style="border: 2px solid #D9534F;min-height:140px">
                    Look, I'm in a large well!
                </div>
            </div>
        </div>


    </div>
    <!-- /.container-fluid -->


    <!-- Modal -->
    <div id="myModal" class="modal fade hide" role="dialog">
        <div class="modal-dialog modal-lg">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Modal Header</h4>
                </div>
                <div class="modal-body">
                    <p>Some text in the modal.</p>

                    <p>Some text in the modal.</p>

                    <p>Some text in the modal.</p>

                    <p>Some text in the modal.</p>

                    <p>Some text in the modal.</p>

                    <p>Some text in the modal.</p>

                    <p>Some text in the modal.</p>

                    <p>Some text in the modal.</p>

                    <p>Some text in the modal.</p>

                    <p>Some text in the modal.</p>

                    <p>Some text in the modal.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>


    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" id="details-plan-table" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">جزییات طرح</h4>
                </div>
                <div class="modal-body">

                    <div class="row"><br>

                        <div
                                class="col-lg-12">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover table-striped">
                                    <thead>
                                    <tr>
                                        <th>عنوان</th>
                                        <th>دبیر</th>
                                        <th>ویرایش شده توسط کارشناس</th>
                                        <th>ویرایش شده توسط مدیر</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>نام طرح</td>
                                        <td>جسله معارف ورودی های 93 دانشکده کامپیوتر</td>
                                        <td>جسله معارف ورودی های 93 دانشکده کامپیوتر</td>
                                        <td>جسله معارف ورودی های 93 دانشکده کامپیوتر</td>
                                    </tr>
                                    <tr>
                                        <td>محل برگزاری</td>
                                        <td>تالار شقایق</td>
                                        <td>تالار شقایق</td>
                                        <td>تالار شقایق</td>
                                    </tr>
                                    <tr>
                                        <td>ماهیت طرح</td>
                                        <td>دوره آموزشی</td>
                                        <td>دوره آموزشی</td>
                                        <td>دوره آموزشی</td>
                                    </tr>
                                    <tr>
                                        <td>تاریخ برگزاری</td>
                                        <td>1394/4/5</td>
                                        <td>1394/4/5</td>
                                        <td>1394/4/5</td>
                                    </tr>
                                    <tr>
                                        <td>تاریخ پایان برگزاری</td>
                                        <td>1394/4/5</td>
                                        <td>1394/4/5</td>
                                        <td>1394/4/5</td>
                                    </tr>
                                    <tr>
                                        <td>ساعت برگزاری</td>
                                        <td>13:30</td>
                                        <td>13:30</td>
                                        <td>13:30</td>
                                    </tr>
                                    <tr>
                                        <td>موارد درخواستی از گروه انجمن های علمی دانشجویی</td>
                                        <td>--</td>
                                        <td>--</td>
                                        <td>--</td>
                                    </tr>
                                    <tr>
                                        <td>پرسنل اجرایی(تعداد و نام + شماره تماس دو مسئول اصلی)</td>
                                        <td>مدیریت انجمن ها(دکتر برادران)،رئیس دانشکده کامپیوتر(دکتر حسن پور)،معاونت
                                            پزوهشی دانشگاه(دکتر پویان)
                                        </td>
                                        <td>مدیریت انجمن ها(دکتر برادران)،رئیس دانشکده کامپیوتر(دکتر حسن پور)،معاونت
                                            پزوهشی دانشگاه(دکتر پویان)
                                        </td>
                                        <td>مدیریت انجمن ها(دکتر برادران)،رئیس دانشکده کامپیوتر(دکتر حسن پور)،معاونت
                                            پزوهشی دانشگاه(دکتر پویان)
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>زیر هزینه ها</td>


                                    </tr>
                                    <tr>
                                        <td>هزینه استاد</td>
                                        <td>۲۲۰ هزار تومان</td>

                                        <td>
                                            200 هزار تومان
                                        </td>
                                        <td>100 هزار تومان</td>
                                    </tr>
                                    <tr>
                                        <td>هزینه تبلیغات</td>
                                        <td>۲۲۰ هزار تومان</td>

                                        <td>
                                            200 هزار تومان
                                        </td>
                                        <td>100 هزار تومان</td>
                                    </tr>
                                    <tr>
                                        <td>هزینه کتاب</td>
                                        <td>۲۲۰ هزار تومان</td>

                                        <td>
                                            200 هزار تومان
                                        </td>
                                        <td>100 هزار تومان</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h3 class="panel-title">نظر مشاورعلمی</h3>
                                </div>
                                <div class="panel-body">طرح خوبیه فقط زمانش بیشتر بشه بهتره</div>
                            </div>
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h3 class="panel-title">نظر کارشناس</h3>
                                </div>
                                <div class="panel-body">مدرس باید تغییر پیدا کنه</div>
                            </div>
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h3 class="panel-title">نظر مدیر</h3>
                                </div>
                                <div class="panel-body"> مدرس به آقای دکتر بابایی تغییر پیدا کردن و طرح تصویب شد.</div>
                            </div>

                        </div>


                    </div>

                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-success">تایید طرح</button>
                    <button class="btn btn-warning" type="submit">برگشت برای بازبینی</button>
                    <button class="btn btn-danger" type="submit">رد طرح</button>

                </div>
            </div>
        </div>
    </div>



</div>
<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->


<!-- jQuery -->
<script src="js/jquery.js"></script>


<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="js/plugins/morris/raphael.min.js"></script>
<script src="js/plugins/morris/morris.min.js"></script>
<script src="js/plugins/morris/morris-data.js"></script>

</body>

</html>
