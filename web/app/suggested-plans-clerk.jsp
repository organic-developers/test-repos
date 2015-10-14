<%--
  Created by IntelliJ IDEA.
  User: Saied
  Date: 9/23/2015
  Time: 9:04 PM
  To change this template use File | Settings | File Templates.
--%>
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

    <script src="/js/jquery-1.11.3.min.js"></script>

    <script>
        $(document).ready(function () {
            $(".remove-plan").each(function () {
                var removeButton = $(this);
                removeButton.click(function () {
                    $.ajax({
                        url: "/Controller/ServletSuggestedPlansClerk?method=methodB",
                        type: "POST",
                        data: {"id": removeButton.attr("id")},
                        success: function () {
                            alert("success");
                            removeButton.parents("li").remove();
                        }
                    })
                })
            })
        })
    </script>

    <script>
        $(document).ready(function () {
            $(".ok-plan").each(function () {
                var okButton = $(this);
                okButton.click(function () {
                    $.ajax({
                        url: "/Controller/ServletSuggestedPlansClerk?method=methodC",
                        type: "POST",
                        data: {"id": okButton.attr("id")},
                        success: function () {
                            alert("success");
                            location.reload();
                        }
                    })
                })
            })
        })
    </script>
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
                    <h1 class="page-header">طرح های پیشنهادی
                        <small></small>
                    </h1>
                </div>
            </div>


            <!-- .nav-tabs -->
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#menu1">تایید نشده</a></li>
                <li><a data-toggle="tab" href="#menu2">تایید شده</a></li>
            </ul>
            <!-- /.nav-tabs -->

            <!-- .tab-content -->
            <div class="tab-content">
                <div id="menu1" class="tab-pane fade in active">
                    <br/>
                    <!-- /.row -->
                    <div class="row">
                        <ul class="media-list">
                            <c:forEach var="plan" items="${suggestedPlans}">
                                <c:if test="${plan.inView == 'false' }">
                                    <li>
                                        <div class="row">
                                            <div class="col-sm-1" style="text-align: left; margin-top: 15px; font-size: 1.4em;">
                                                <span class="glyphicon glyphicon-remove remove-plan text-danger" id="${plan.id}"></span>
                                                <span class="glyphicon glyphicon-ok ok-plan text-success" id="${plan.id}"></span>
                                            </div>
                                            <div class="col-sm-8">
                                                <div class="row" style="margin-bottom: 25px;">
                                                    <div class="col-sm-8">
                                                        <h4>${plan.title}</h4>
                                                    </div>
                                                    <div class="col-sm-12">
                                                        <p style="margin: 14px 0px">${plan.description}</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </c:if>
                            </c:forEach>
                        </ul>
                    </div>
                    <!-- /.row -->
                </div>

                <div id="menu2" class="tab-pane fade">
                    <br/>
                    <!-- /.row -->
                    <div class="row">
                        <ul class="media-list">
                            <c:forEach var="plan" items="${suggestedPlans}">
                                <c:if test="${plan.inView == 'true' }">
                                    <li>
                                        <div class="row">
                                            <div class="col-sm-1" style="text-align: left; margin-top: 15px; font-size: 1.4em;">
                                                <span class="glyphicon glyphicon-remove remove-plan text-danger" id="${plan.id}"></span>
                                            </div>
                                            <div class="col-sm-8">
                                                <div class="row" style="margin-bottom: 25px;">
                                                    <div class="col-sm-8">
                                                        <h4>${plan.title}</h4>
                                                    </div>
                                                    <div class="col-sm-4 like"
                                                         style="font-size: 1.7em; cursor: pointer; padding-top: 6px;">
                                                        <i class="fa fa-thumbs-o-up"></i> ${plan.likeNumber}
                                                    </div>
                                                    <div class="col-sm-12">
                                                        <p style="margin: 14px 0px">${plan.description}</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </c:if>
                            </c:forEach>
                        </ul>
                    </div>
                    <!-- /.row -->
                </div>

            </div>
            <!-- /.tab-content -->


        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- /#page-wrapper -->

</div>

<!-- Bootstrap Core JavaScript -->
<script src="../js/bootstrap.min.js"></script>

</body>

</html>

