<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div aria-hidden="false" style="display: block;" class="modal fade in" id="myModal" tabindex="-1" role="dialog"
             aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">×</span></button>
                        <h4 class="modal-title" id="myModalLabel">جزییات طرح پیشنهادی</h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">

                            <div class="col-lg-12">
                                <table class="table table-bordered table-hover table-striped">
                                    <thead>
                                    <tr>
                                        <th>مسابقه اندروید</th>


                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>با توجه به استفاده روز افزون از موبایل و تبلت و همچنین پیشرفت سیستم عامل
                                            اندروید، گذراندن کلاس های آموزشی اندروید برای دانشجویان بسیار مفید خواهد
                                            بود.
                                            اندروید بر پایه زبان جاوا است و دانشجویان در ترم دوم این زبان را یاد
                                            میگیرند.
                                            هم اکنون اندروید معروف ترین سیستم عامل برای موبایل ها و تبلت هاست و حتی در
                                            بعضی از کنسول های بازی و تلویزیون های جدید نیز از این سیستم عامل استفاده شده
                                            است.
                                            دانشجویان با یادگیری این زبان میتوانند برای موبایل، تبلت و ... برنامه
                                            بنویسند
                                        </td>


                                    </tr>


                                    </tbody>
                                </table>

                            </div>

                        </div>


                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">خروج</button>
                        <button type="button" class="btn btn-primary">ارسال ایمیل</button>
                    </div>
                </div>
            </div>
        </div>

    </div>


    <div id="page-wrapper">

        <div class="container-fluid">

            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">طرح های پیشنهادی
                        <small></small>
                    </h1>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-9 col-lg-offset-1">
                    <div class="input-group ">
                        <span id="" class="input-group-addon">انتخاب انجمن</span>

                        <div class="">

                            <select class="form-control sizing-addon1">
                                <option>انجمن کامپیوتر</option>
                                <option>انجمن برق</option>
                                <option>انجمن مکانیک</option>
                                <option>انجمن معماری</option>
                                <option>انجمن معدن و ژئوفیزیک</option>
                                <option>انجمن مدیریت</option>
                                <option>انجمن کشاورزی</option>
                                <option>انجمن عمران</option>
                                <option>انجمن کارآفرینی</option>
                                <option>انجمن فیزیک و نجوم</option>
                                <option>انجمن شیمی</option>
                                <option>انجمن زمین شناسی</option>
                                <option>انجمن زبان</option>
                                <option>انجمن ریاضی</option>
                                <option>انجمن رباتیک</option>
                                <option>انجمن حسابداری</option>
                                <option>انجمن تربیت بدنی</option>
                                <option>انجمن پدافند غیر عامل</option>
                            </select>
                        </div>
                    </div>
                    <br></div>
                <div class="col-lg-2">
                    <button class="btn btn-primary " type="button">مشاهده</button>
                </div>

            </div>

            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa "></i>عنوان طرح های پیشنهادی</h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="list-group">

                                        <a href="#" class="list-group-item" data-toggle="modal" data-target="#myModal">

                                            <p class="list-group-item-text">طرح خوبی بود اما ساعات برگزاری مناسب
                                                نبود</p>
                                        </a>
                                        <a href="#" class="list-group-item">

                                            <p class="list-group-item-text">زمان برگزار طرح نیم ساعت تاخیر داشت این اصلا
                                                خوب نیست</p>
                                        </a>
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

