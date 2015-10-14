<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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


    <style>
        div.like:hover {
            color: forestgreen;
        }
    </style>

    <script src="/js/jquery-1.11.3.min.js"></script>
    <script src="js\bootstrap.min.js"></script>

    <script>
        $(document).ready(function () {
            var frm = $("#spf");
            frm.submit(function (e) {
                var postData = frm.serialize();
                $.ajax({
                    url: "/Controller/ServletAssociationPage?method=methodA&associationId=${association.id}",
                    type: "POST",
                    data: postData,
                    success: function () {
                        alert("success");
                        document.getElementById("spf").reset();
                    }
                })
                e.preventDefault();
            })
        })
    </script>
    <script>
        $(document).ready(function () {
            $(".like").each(function () {
                var divLike = $(this);
                divLike.click(function (e) {
                    $.ajax({
                        url: "/Controller/ServletAssociationPage?method=methodB",
                        type: "POST",
                        data: {"id": divLike.attr("id")},
                        dataType: "json",
                        success: function (likeNumber) {
//                            alert("success");
                            var number = divLike.find("p")[0];
                            number.innerHTML = "";
                            number.innerHTML = likeNumber;
                        }
                    })
                })
            })
        })
    </script>

    <script>
        $(document).ready(function () {
            $(".btn-details").each(function () {
                $(this).click(function () {
                    $.ajax({
                        url: "/Controller/ServletShowPlanDetails",
                        type: "post",
                        data: {"id": $(this).attr("id")},
                        dataType: "json",
                        success: function (plan) {
                            alert("success");
                            var detailsList;
                            $("#detailsList").html("");
                            switch (plan.workflow.id) {
                                case 1:
                                    detailsList = showDetailsPlanTrip(plan);
                                    break;
//                                    case 2:
//                                        detailsList = showDetailsPlanContest(plan);
//                                        break;
//                                    case 3:
//                                        detailsList = showDetailsPlanExhibition(plan);
//                                        break;
//                                    case 4:
//                                        detailsList = showDetailsPlanConference(plan);
//                                        break;
//                                    case 5:
//                                        detailsList = showDetailsPlanEducational(plan);
//                                        break;
//                                    case 6:
//                                        detailsList = showDetailsPlanMagazine(plan);
//                                        break;
//                                    case 7:
//                                        detailsList = showDetailsPlanOther(plan);
//                                        break;
                            }
                            $("#detailsList").html(detailsList);
                        }
                    });
                });
            });
        });

        function showDetailsPlanTrip(plan){
            var detailsList =
                    '<div class="form-group">' +
                    '<label class="col-sm-2 control-label">عنوان طرح:</label>' +
                    '<div class="col-sm-10">' +
                    '<p class="form-control-static">' + plan.title + '</p>' +
                    '</div>' +
                    '</div>' +
                    '<div class="form-group">' +
                    '<label class="col-sm-2 control-label">محل برکزاری:</label>' +
                    '<div class="col-sm-10">' +
                    '<p class="form-control-static">' + plan.place + '</p>' +
                    '</div>' +
                    '</div>' +
                    '<div class="form-group">' +
                    '<label class="col-sm-2 control-label">تاریخ شروع برگزاری:</label>' +
                    '<div class="col-sm-10">' +
                    '<p class="form-control-static">' + plan.beginDate + '</p>' +
                    '</div>' +
                    '</div>' +
                    '<div class="form-group">' +
                    '<label class="col-sm-2 control-label">تاریخ پایان برگزاری:</label>' +
                    '<div class="col-sm-10">' +
                    '<p class="form-control-static">' + plan.endDate + '</p>' +
                    '</div>' +
                    '</div>' +
                    '<div class="form-group">' +
                    '<label class="col-sm-2 control-label">ساعت برگزاری:</label>' +
                    '<div class="col-sm-10">' +
                    '<p class="form-control-static">' + plan.time + '</p>' +
                    '</div>' +
                    '</div>' +
                    '<div class="form-group">' +
                    '<label class="col-sm-2 control-label">هزینه ثبت نام</label>' +
                    '<div class="col-sm-10">' +
                    '<p class="form-control-static">' + plan.registrationFee + '</p>' +
                    '</div>' +
                    '</div>' +
                    '<div class="form-group">' +
                    '<label class="col-sm-2 control-label">مهلت ثبت نام</label>' +
                    '<div class="col-sm-10">' +
                    '<p class="form-control-static">' + plan.registrationBeginDate + ' لغایت ' + plan.registrationEndDate + '</p>' +
                    '</div>' +
                    '</div>' +
                    '<div class="form-group">' +
                    '<label class="col-sm-2 control-label">مکان ثبت نام:</label>' +
                    '<div class="col-sm-10">' +
                    '<p class="form-control-static">' + plan.registrationPlace + '</p>' +
                    '</div>' +
                    '</div>' +
                    '<div class="form-group">' +
                    '<label class="col-sm-2 control-label">ظرفیت:</label>' +
                    '<div class="col-sm-10">' +
                    '<p class="form-control-static">' + 'حداکثر' + plan.registrationMax + '</p>' +
                    '</div>' +
                    '</div>';
            return detailsList;
        }
        function showDetailsPlanContest(plan){
            var detailsList =
                    '<div class="form-group">' +
                    '<label class="col-sm-2 control-label">عنوان طرح:</label>' +
                    '<div class="col-sm-10">' +
                    '<p class="form-control-static">مسابقات ACM</p>' +
                    '</div>' +
                    '</div>' +
                    '<div class="form-group">' +
                    '<label class="col-sm-2 control-label">محل برکزاری:</label>' +
                    '<div class="col-sm-10">' +
                    '<p class="form-control-static">سایت مرکزی دانشگاه</p>' +
                    '</div>' +
                    '</div>' +
                    '<div class="form-group">' +
                    '<label class="col-sm-2 control-label">تاریخ برگزاری:</label>' +
                    '<div class="col-sm-10">' +
                    '<p class="form-control-static">93/9/20</p>' +
                    '</div>' +
                    '</div>' +
                    '<div class="form-group">' +
                    '<label class="col-sm-2 control-label">ساعت برگزاری:</label>' +
                    '<div class="col-sm-10">' +
                    '<p class="form-control-static">8 صبح</p>' +
                    '</div>' +
                    '</div>' +
                    '<div class="form-group">' +
                    '<label class="col-sm-2 control-label">هزینه ثبت نام</label>' +
                    '<div class="col-sm-10">' +
                    '<p class="form-control-static">12 هزار تومان</p>' +
                    '</div>' +
                    '</div>' +
                    '<div class="form-group">' +
                    '<label class="col-sm-2 control-label">مهلت ثبت نام</label>' +
                    '<div class="col-sm-10">' +
                    '<p class="form-control-static">19/9/11</p>' +
                    '</div>' +
                    '</div>' +
                    '<div class="form-group">' +
                    '<label class="col-sm-2 control-label">مکان ثبت نام:</label>' +
                    '<div class="col-sm-10">' +
                    '<p class="form-control-static">دفتر انجمن علمی دانشکده کامپیوتر</p>' +
                    '</div>' +
                    '</div>' +
                    '<div class="form-group">' +
                    '<label class="col-sm-2 control-label">ظرفیت:</label>' +
                    '<div class="col-sm-10">' +
                    '<p class="form-control-static">محدود</p>' +
                    '</div>' +
                    '</div>' +
                    '<div class="form-group">' +
                    '<label class="col-sm-2 control-label">تعداد جلسات:</label>' +
                    '<div class="col-sm-10">' +
                    '<p class="form-control-static">----</p>' +
                    '</div>' +
                    '</div>' +
                    '<div class="form-group">' +
                    '<label class="col-sm-2 control-label">جوایز:</label>' +
                    '<div class="col-sm-10">' +
                    '<p class="form-control-static">تیم اول 100.000 تومان</p>' +
                    '</div>' +
                    '</div>';
            return detailsList;
        }
    </script>
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

<!-- .container -->
<div class="container">

    <!-- page header -->
    <h2>${association.name}</h2>

    <!-- .nav-pills -->
    <ul class="nav nav-pills" style="font-size: larger">
        <li class="active"><a data-toggle="pill" href="#home">طرح های در حال ثبت نام</a></li>
        <li><a data-toggle="pill" href="#menu1">طرح های آینده</a></li>
        <li><a data-toggle="pill" href="#menu2">پیشنهاد طرح</a></li>
        <li><a data-toggle="pill" href="#menu3">طرح های برگزار شده</a></li>
        <li><a data-toggle="pill" href="#menu4">اعضای انجمن</a></li>
    </ul>
    <!-- /.nav-pills -->

    <br/>
    <br/>

    <!-- .tab-contents -->
    <div class="tab-content">

        <!-- registring plans -->
        <div id="home" class="tab-pane fade in active">

            <c:forEach var="registringPlan" items="${registringPlans}">
                <div class="well well-lg" style="border: 2px solid #337AB7;min-height:140px">
                    <div class="row">
                        <div style="direction: rtl;" class="col-lg-8">
                            <h5 style="margin-top: 0px; font-size: 17px;" class="page-header">
                                عنوان: ${registringPlan.title}</h5>

                            <p>
                                <span>تاریخ برگزاری: ${registringPlan.beginDate}</span>
                                <span>محل برگزاری: ${registringPlan.place}</span>
                            </p>

                            <div class="row">
                                <div class="col-lg-12">
                                    <br>
                                    <button type="submit" data-toggle="modal" data-target="#register"
                                            class="btn btn-success">ثبت نام
                                    </button>
                                    <button type="button" data-toggle="modal" id="${registringPlan.id}" data-target="#details"
                                            class="btn btn-info btn-details">
                                        جزییات
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-lg-offset-0">
                            <a href="${registringPlan.poster}" target="_blank">
                                <img style="width: 50%; float: left; margin-top: 7px;"
                                     src="${registringPlan.poster}" alt="Generic placeholder image">
                            </a>
                        </div>
                    </div>
                </div>
            </c:forEach>

        </div>

        <!-- future plans -->
        <div id="menu1" class="tab-pane fade">
            <div>
                <h4>-جسله معارف ورودی های 93 دانشکده کامپیوتر / تاریخ برگزاری: 1394/3/3</h4>
            </div>
        </div>

        <!-- suggesting plan -->
        <div id="menu2" class="tab-pane fade">
            <a href="#new-plan" class="fix-position-link btn" id="create-plan-fixed">پیشنهاد طرح</a>

            <ul class="media-list">
                <c:forEach var="plan" items="${suggestedPlans}">
                    <li>
                        <div class="row">
                            <div class="col-sm-8">
                                <div class="row" style="margin-bottom: 25px;">
                                    <div class="col-sm-8">
                                        <h4>${plan.title}</h4>
                                    </div>
                                    <div class="col-sm-4 like" id="${plan.id}"
                                         style="font-size: 1.7em; cursor: pointer; padding-top: 6px;">
                                        <i class="fa fa-thumbs-o-up"></i>

                                        <p style="display: inline;">${plan.likeNumber}</p>
                                    </div>
                                    <div class="col-sm-12">
                                        <p style="margin: 14px 0px">${plan.description}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </c:forEach>
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
                        <form id="spf" class="form-horizontal" action="/Controller/ServletAssociationPage"
                              method="POST">
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
                                    <textarea class="form-control" rows="5" name="description"></textarea>
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

        <!-- finished plans -->
        <div id="menu3" class="tab-pane fade">

            <c:forEach var="finishedPlan" items="${finishedPlans}">
                <div class="well well-lg" style="border: 2px solid #337AB7;min-height:140px">
                    <div class="row">
                        <div style="direction: rtl;" class="col-lg-8">
                            <h5 style="margin-top: 0px; font-size: 17px;" class="page-header">
                                عنوان: ${finishedPlan.title}</h5>

                            <p>
                                <span>تاریخ برگزاری: ${finishedPlan.beginDate}</span>
                                <span>محل برگزاری: ${finishedPlan.place}</span>
                            </p>

                            <div class="row">
                                <div class="col-lg-12">
                                    <br>
                                    <button type="button" id="${finishedPlan.id}" data-toggle="modal" data-target="#details"
                                            class="btn btn-info btn-details">
                                        جزییات
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-lg-offset-0">
                            <a href="${finishedPlan.poster}" target="_blank">
                                <img style="width: 50%; float: left; margin-top: 7px;"
                                     src="${finishedPlan.poster}" alt="Generic placeholder image">
                            </a>
                        </div>
                    </div>
                </div>
            </c:forEach>

        </div>

        <!-- association members -->
        <div id="menu4" class="tab-pane fade">
            <c:forEach var="user" items="${users}">
                <h3>${user.fName} ${user.lName} - ${user.position.name}</h3>
            </c:forEach>
        </div>

    </div>
    <!--/.tab-contents -->

</div>
<!-- /.container -->


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
                <form class="form-horizontal" action="#" id="detailsList">
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
                <button type="button" class="btn btn-info ">ثبت</button>
            </div>
        </div>

    </div>
</div>


<!-- Bottom Navbar -->
<div class="navbar navbar-default navbar-index"
     style="background: #222222; width: 100%; position: absolute; bottom: 0;">
    <div class="container">
        <p class="navbar-text pull-left englishFont">About us </p>
    </div>
</div>
<!-- /Bottom Navbar -->

</body>
</html>
