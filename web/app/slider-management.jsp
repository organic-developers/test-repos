<%--
  Created by IntelliJ IDEA.
  User: Saied
  Date: 8/6/2015
  Time: 3:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Bootstrap Admin Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Core CSS RTL-->
    <link href="../css/bootstrap-rtl.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../css/sb-admin.css" rel="stylesheet">
    <link href="../css/sb-admin-rtl.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/added.css"/>

    <!-- Custom Fonts -->
    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- JQuery -->
    <script src="/js/jquery-1.11.3.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>

    <script>
        $(document).ready(function () {
            $("#resource-form").submit(function (e) {
                $.ajax({
                    url: $(this).attr("action") + "?method=methodA",
                    type: $(this).attr("method"),
                    data: new FormData(this),
                    mimeType: $(this).attr("enctype"),
                    contentType: false,
                    cache: false,
                    processData: false,
                    dataType: "json",
                    success: function (data) {
                        alert("success");
                        document.getElementById("resource-form").reset();
                        var x = '<div class="col-lg-10 col-lg-offset-1 uploaded-file">' +
                                '<h4>' +
                                '<span class="glyphicon glyphicon-remove text-danger"></span>' +
                                '<a href="' + data.path + '" target="_blank" id=' + data.id + '>' + data.comment + '</a>' +
                                '</h4>' +
                                '</div>';
                        $("#uploaded-files").append(x);
                    }
                });
                e.preventDefault(); //Prevent Default action.
//                e.unbind();
            });
        });
    </script>

    <script>
        $(document).ready(function(){
            $("#uploaded-files").find(".glyphicon-remove").each(function(){
                $(this).click(function(){
                    var p = $(this).next("a").attr("id");

                    $.ajax({
                        url: "/Controller/ServletSliderManagement?method=methodB",
                        type: "POST",
                        data: {"id": p},
                        success: function(){
//                            alert("success");
                        }
                    })
                    $(this).parents(".uploaded-file").remove();
                })
            })
        })
    </script>
</head>

<body class="dashboard-background">

<div id="wrapper">

    <!-- Navigation -->
    <%@ include file="menu.jsp" %>

    <div id="page-wrapper">

        <!-- .container-fluid -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">
مدیریت اسلایدر                    </h1>
                </div>
            </div>
            <!-- /.row -->

            <br/>

            <!-- upload section -->
            <div class="row">
                <div class=" col-lg-10 col-lg-offset-1">
                    <div class="row">
                        <form role="form" id="resource-form" action="/Controller/ServletSliderManagement"
                              method="POST" enctype="multipart/form-data">
                            <div class="form-group col-lg-8">
                                <input type="text" class="form-control" id="name"
                                       placeholder="توضیحات" name="comment" required>
                            </div>

                            <div class="form-group col-lg-8">
                                <h5 class="text-danger">
                                    تصاویر  بهتر است دارای نسبت تصویر 15:7 باشند!
                                    </h5>
                            </div>

                            <div class="form-group col-lg-8">
                                <input type="file" id="resource" name="slider" required>
                            </div>

                            <div class="form-group col-lg-8">
                                <button type="submit" class="btn btn-primary"> تایید</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- /upload section -->

            <br/>
            <br/>

            <!-- uploaded files -->
            <div class="row" id="uploaded-files">
                <c:forEach var="slider" items="${sliders}">
                    <div class="col-lg-10 col-lg-offset-1 uploaded-file">
                        <h4>
                            <span class="glyphicon glyphicon-remove text-danger"></span>
                            <a href="${slider.path}" target="_blank" id="${slider.id}">${slider.comment}</a>
                        </h4>
                    </div>
                </c:forEach>
            </div>
            <!-- /uploaded files -->

        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->


</body>

</html>
