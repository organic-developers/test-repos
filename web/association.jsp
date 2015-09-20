<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" style="position: relative; min-height: 100%;">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>سامانه انجمن های علمی</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Core CSS RTL-->
    <link href="css/bootstrap-rtl.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/css/added.css" rel="stylesheet"/>

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <script src="js\jquery.js"></script>
    <script src="js\bootstrap.min.js"></script>

</head>


<body id="index" style="background: url('image/bg1.png') repeat fixed center transparent; margin-bottom: 60px;">

<!-- .navbar -->
<div class="navbar navbar-inverse navbar-index" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="/index">سامانه انجمن های علمی<span
                    class="hidden-lg hidden-md  glyphicon glyphicon-phone pull-left"
                    style="padding-right: 17px;"></span></a>
        </div>
    </div>
</div>
<!-- /.navbar -->


<!-- Modal - details -->
<div id="details" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">جزییات طرح</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" action="#">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">عنوان طرح:</label>

                        <div class="col-sm-10">
                            <p class="form-control-static">مسابقات ACM</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">محل برکزاری:</label>

                        <div class="col-sm-10">
                            <p class="form-control-static">سایت مرکزی دانشگاه</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">تاریخ برگزاری:</label>

                        <div class="col-sm-10">
                            <p class="form-control-static">93/9/20</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">ساعت برگزاری:</label>

                        <div class="col-sm-10">
                            <p class="form-control-static">8 صبح</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">هزینه ثبت نام</label>

                        <div class="col-sm-10">
                            <p class="form-control-static">12 هزار تومان</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">مهلت ثبت نام</label>

                        <div class="col-sm-10">
                            <p class="form-control-static">19/9/11</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">مکان ثبت نام:</label>

                        <div class="col-sm-10">
                            <p class="form-control-static">دفتر انجمن علمی دانشکده کامپیوتر</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">ظرفیت:</label>

                        <div class="col-sm-10">
                            <p class="form-control-static">محدود</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">تعداد جلسات:</label>

                        <div class="col-sm-10">
                            <p class="form-control-static">----</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">جوایز:</label>

                        <div class="col-sm-10">
                            <p class="form-control-static">تیم اول 100.000 تومان</p>

                            <p class="form-control-static">تیم دوم 60.000 تومان</p>

                            <p class="form-control-static">تیم سوم 30.000 تومان</p>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>


<!-- Modal - registeration -->
<div id="register" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">ثبت نام</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="form" action="#">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">نام:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="fName">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">نام خانوادگی:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="lName">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">شماره دانشجویی:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="studentId">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">ایمیل:</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="email">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">تلفن همراه:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="phoneNumber">
                        </div>
                    </div>
                </form>
                <p class="text-danger text-center">برای تایید ثبت نام خود به دفتر انجمن مربوطه مراجعه فرمایید!</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-info " >ثبت</button>
            </div>
        </div>

    </div>
</div>

<!-- .container -->
<div class="container">

    <!-- page header -->
    <h2>${association.name}</h2>

    <!-- .nav-pills -->
    <ul class="nav nav-pills" style="font-size: larger" >
        <li class="active"><a data-toggle="pill" href="#home">طرح های در حال ثبت نام</a></li>
        <li><a data-toggle="pill" href="#menu1">طرح های آینده</a></li>
        <li><a data-toggle="pill" href="#menu3">پیشنهاد طرح</a></li>
        <li><a data-toggle="pill" href="#menu2">طرح های برگزار شده</a></li>
        <li><a data-toggle="pill" href="#menu4">اعضای انجمن</a></li>
    </ul>
    <!-- /.nav-pills -->

    <br/>
    <br/>

    <!-- .tab-contents -->
    <div class="tab-content">

        <div id="home" class="tab-pane fade in active">

            <div class="well well-lg" style="border: 2px solid #337AB7;min-height:140px">
                <div class="row">
                    <div style="direction: rtl;" class="col-lg-8">
                        <h5 style="margin-top: 0px; font-size: 17px;" class="page-header">عنوان: جسله معارف ورودی های 93
                            دانشکده کامپیوتر</h5>

                        ماهیت: دوره آموزشی
                        / محل برگزاری: تالار شقایق
                        / تاریخ برگزاری: 1394/3/3

                        <div class="row">
                            <div class="col-lg-12">
                                <br>
                                <button type="submit" data-toggle="modal" data-target="#register" class="btn btn-success">ثبت نام</button>
                                <button type="button" data-toggle="modal" data-target="#details" class="btn btn-info">
                                    جزییات
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-lg-offset-0"><img style="width: 50%; float: left; margin-top: 7px;"
                                                               src="image/pic2.jpg" class=""
                                                               alt="Generic placeholder image"></div>

                </div>
            </div>
            <div class="well well-lg" style="border: 2px solid #337AB7;min-height:140px">
                <div class="row">
                    <div style="direction: rtl;" class="col-lg-8">

                        <h5 style="margin-top: 0px; font-size: 17px;" class="page-header">عنوان: دوره آموزشی حفاظت</h5>

                        ماهیت: دوره آموزشی
                        / محل برگزاری: تالار شقایق
                        / تاریخ برگزاری: 1394/3/3

                        <div class="row">
                            <div class="col-lg-12"><br>
                                <button type="submit" class="btn btn-success">ثبت نام</button>
                                <button type="button" data-toggle="modal" data-target="#myModal" class="btn btn-info">
                                    جزییات
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

        <div id="menu1" class="tab-pane fade">
            <div>
                <h4>-جسله معارف ورودی های 93 دانشکده کامپیوتر / تاریخ برگزاری: 1394/3/3</h4>
            </div>
        </div>

        <div id="menu2" class="tab-pane fade">
            <div class="well well-lg" style="border: 2px solid #337AB7;min-height:140px">
                <div class="row">
                    <div style="direction: rtl;" class="col-lg-8">

                        <h5 style="margin-top: 0px; font-size: 17px;" class="page-header">عنوان: دوره آموزشی حفاظت</h5>

                        ماهیت: دوره آموزشی
                        / محل برگزاری: تالار شقایق
                        / تاریخ برگزاری: 1394/3/3

                        <div class="row">
                            <div class="col-lg-12"><br>
                                <button type="button" data-toggle="modal" data-target="#myModal" class="btn btn-info">
                                    جزییات
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-lg-offset-0"><img style="width: 50%; float: left; margin-top: 7px;"
                                                               src="image/pic1.jpg" class=""
                                                               alt="Generic placeholder image"></div>
                </div>
            </div>

            <div class="well well-lg" style="border: 2px solid #337AB7;min-height:140px">
                <div class="row">
                    <div style="direction: rtl;" class="col-lg-8">

                        <h5 style="margin-top: 0px; font-size: 17px;" class="page-header">عنوان: دوره آموزشی حفاظت</h5>

                        ماهیت: دوره آموزشی
                        / محل برگزاری: تالار شقایق
                        / تاریخ برگزاری: 1394/3/3

                        <div class="row">
                            <div class="col-lg-12"><br>
                                <button type="button" data-toggle="modal" data-target="#myModal" class="btn btn-info">
                                    جزییات
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

        <div id="menu3" class="tab-pane fade">
            <a href="#new-plan" class="fix-position-link btn" id="create-plan-fixed">پیشنهاد طرح</a>

            <ul class="media-list">
                <li class="media">
                    <div class="media-left">
                        <a href="#">
                            <img style="" src="image/avatar.png" class="media-object" alt="...">
                        </a>
                    </div>
                    <div style="padding-top: 5px;" class="media-body">
                        <h4 class="media-heading">کلاس طراحی وب سایت</h4>
                        سلام اگه کلاس طراحی وب برگزار کنید خیلی عالی میشه واقعا برا بچه ها لازمه
                    </div>
                </li>

                <li class="media">
                    <div class="media-left">
                        <a href="#">
                            <img style="" src="image/avatar.png" class="media-object" alt="...">
                        </a>
                    </div>
                    <div style="padding-top: 5px;" class="media-body">
                        <h4 class="media-heading">کلاس طراحی وب سایت</h4>
                        سلام اگه کلاس طراحی وب برگزار کنید خیلی عالی میشه واقعا برا بچه ها لازمه
                    </div>
                </li>

                <li class="media">
                    <div class="media-left">
                        <a href="#">
                            <img style="" src="image/avatar.png" class="media-object" alt="...">
                        </a>
                    </div>
                    <div style="padding-top: 5px;" class="media-body">
                        <h4 class="media-heading">کلاس طراحی وب سایت</h4>
                        سلام اگه کلاس طراحی وب برگزار کنید خیلی عالی میشه واقعا برا بچه ها لازمه
                    </div>
                </li>

                <li class="media">
                    <div class="media-left">
                        <a href="#">
                            <img style="" src="image/avatar.png" class="media-object" alt="...">
                        </a>
                    </div>
                    <div style="padding-top: 5px;" class="media-body">
                        <h4 class="media-heading">کلاس طراحی وب سایت</h4>
                        سلام اگه کلاس طراحی وب برگزار کنید خیلی عالی میشه واقعا برا بچه ها لازمه
                    </div>
                </li>

                <li class="media">
                    <div class="media-left">
                        <a href="#">
                            <img style="" src="image/avatar.png" class="media-object" alt="...">
                        </a>
                    </div>
                    <div style="padding-top: 5px;" class="media-body">
                        <h4 class="media-heading">کلاس طراحی وب سایت</h4>
                        سلام اگه کلاس طراحی وب برگزار کنید خیلی عالی میشه واقعا برا بچه ها لازمه
                    </div>
                </li>

                <li class="media">
                    <div class="media-left">
                        <a href="#">
                            <img style="" src="image/avatar.png" class="media-object" alt="...">
                        </a>
                    </div>
                    <div style="padding-top: 5px;" class="media-body">
                        <h4 class="media-heading">کلاس طراحی وب سایت</h4>
                        سلام اگه کلاس طراحی وب برگزار کنید خیلی عالی میشه واقعا برا بچه ها لازمه
                    </div>
                </li>

                <li class="media">
                    <div class="media-left">
                        <a href="#">
                            <img style="" src="image/avatar.png" class="media-object" alt="...">
                        </a>
                    </div>
                    <div style="padding-top: 5px;" class="media-body">
                        <h4 class="media-heading">کلاس طراحی وب سایت</h4>
                        سلام اگه کلاس طراحی وب برگزار کنید خیلی عالی میشه واقعا برا بچه ها لازمه
                    </div>
                </li>

            </ul>

            <div class="container-fluid" id="new-plan">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">
                            ثبت طرح پیشنهادی
                        </h3>

                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-12">

                        <form class="form-horizontal" action="insertPlan.jsp">
                            <div class="form-group">
                                <div class="col-lg-2">
                                    <label>عنوان طرح پیشنهادی:</label>
                                </div>
                                <div class="col-lg-8 col-lg-offset-1">
                                    <input class="form-control" name="title" type="text">
                                </div>

                            </div>

                            <div class=" form-group">
                                <div class="col-lg-2">
                                    <label>شرح طرح:</label>
                                </div>
                                <div class="col-lg-8 col-lg-offset-1">
                                    <textarea class="form-control" rows="5" name="req_discription"></textarea>
                                </div>

                            </div>
                            <div class="form-group">
                                <div class="col-lg-2 col-lg-offset-10">
                                    <button type="submit" class="btn btn-success">ثبت طرح</button>
                                </div>
                            </div>

                        </form>

                    </div>
                </div>
            </div>


        </div>

        <div id="menu4" class="tab-pane fade">
            <h3>${association.}</h3>
        </div>

    </div>
    <!--/.tab-contents -->

</div>
<!-- /.container -->

<!-- Bottom Navbar -->
<div class="navbar navbar-default navbar-index" style="background: #222222; width: 100%; position: absolute; bottom: 0;">
    <div class="container">
        <p class="navbar-text pull-left englishFont">About us </p>
    </div>
</div>
<!-- /Bottom Navbar -->

</body>
</html>
