<%@ page import="java.util.List" %>
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
            $("tr").each(function () {
                $(this).click(function () {
                    var x = $(this).children().last().text();
                    $("#testp").text(x);
                    $.post("/Controller/ServletUsers",
                            {
                                id: x,
                            },
                            function (data, status) {
//                                alert("Data: " + data + "\nStatus: " + status);
                                $("#id").val(data.id);
                                $("#fName").val(data.fName);
                                $("#lName").val(data.lName);
                                $("#userName").val(data.userName);
                                $("#password").val(data.password);
                                $("#associationNumber").val(data.associationNumber);
                                $("#positionTitle").val(data.positionTitle);
                                $("#birthYear").val(data.birthYear);
                                $("#email").val(data.email);
                                $("#nationalId").val(data.nationalId);
                                $("#phone").val(data.phone);
                                $("#studentId").val(data.studentId);
                                $("#image").attr("src", data.photo);
                                $("#image2").val(data.photo);
                                $("#photo").attr("required", false);
                                if (typeof data.photo === 'undefined') {
                                    resetImage();
                                }
                            });
                });
            });
        });
        $(document).ready(function () {
            $("#reset").click(function () {
                $("#photo").attr("required", "true");
                resetImage();
            });
        });
        function resetImage() {
            $("#image").attr("src", "/image/avatar.png");
        }
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
                    <h1 class="page-header">
                        اعضا
                        <small></small>
                    </h1>
                </div>
            </div>


            <div class="row">
                <div class="col-lg-8">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-users"></i> کاربران سامانه</h3>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover table-striped">
                                    <thead>
                                    <tr>
                                        <th>نام</th>
                                        <th>نام خانوادگی</th>
                                        <th>سمت</th>
                                        <th>انجمن مربوطه</th>
                                        <th style="display: none;">id</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="user" items="${users}">
                                        <tr>
                                            <td>${user.fName}</td>
                                            <td>${user.lName}</td>
                                            <td>${user.positionTitle}</td>
                                            <td>${user.associationNumber}</td>
                                            <td style="display: none;">${user.id}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-pencil-square-o"></i> ایجاد / ویرایش کاربر </h3>
                        </div>
                        <div class="panel-body">
                            <div style="text-align: center;">
                                <img src="/image/avatar.png" alt="عکس" width="125" height="125" id="image">
                            </div>
                            <form role="form" action="/Controller/ServletUsers" method="post"
                                  enctype="multipart/form-data">
                                <input type="text" id="image2" name="image2" style="display: none;">
                                <input type="text" id="id" name="id" style="display: none;">
                                <%--<label id="id" name="id"></label>--%>
                                <div class="form-group">
                                    <label for="associationNumber">انجمن:</label>
                                    <select class="form-control" id="associationNumber" name="associationNumber">
                                        <c:forEach var="association" items="${associations}">
                                            <option value="${association.id}">${association.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="fName">نام:</label>
                                    <input type="text" class="form-control" id="fName" name="fName" required>
                                </div>
                                <div class="form-group">
                                    <label for="lName">نام خانوادگی:</label>
                                    <input type="text" class="form-control" id="lName" name="lName" required>
                                </div>
                                <div class="form-group">
                                    <label for="positionTitle">سمت:</label>
                                    <select class="form-control" id="positionTitle" name="positionTitle">
                                        <option value="expert">کارشناس</option>
                                        <option value="advisor">مشاور علمی</option>
                                        <option value="clerk">دبیر</option>
                                        <option value="publicRelationsManager">مدیر روابط عمومی</option>
                                        <option value="financialAffairsManager">مدیر امور مالی</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="studentId">شماره دانشجویی:</label>
                                    <input type="number" class="form-control" id="studentId" name="studentId" required>
                                </div>
                                <div class="form-group">
                                    <label for="nationalId">شماره ملی:</label>
                                    <input type="number" class="form-control" id="nationalId" name="nationalId"
                                           required>
                                </div>
                                <div class="form-group">
                                    <label for="birthYear">سال تولد:</label>
                                    <input type="number" class="form-control" id="birthYear" name="birthYear" required>
                                </div>
                                <div class="form-group">
                                    <label for="phone">شماره تماس:</label>
                                    <input type="number" class="form-control" id="phone" name="phone" required>
                                </div>
                                <div class="form-group">
                                    <label for="email">ایمیل:</label>
                                    <input type="email" class="form-control" id="email" name="email" required>
                                </div>
                                <div class="form-group">
                                    <label for="userName">نام کاربری:</label>
                                    <input type="text" class="form-control" id="userName" name="userName">
                                </div>
                                <div class="form-group">
                                    <label for="password">رمز عبور:</label>
                                    <input type="password" class="form-control" id="password" name="password">
                                </div>
                                <div class="form-group">
                                    <label for="photo">عکس:</label>
                                    <input type="file" id="photo" name="photo" required="true">
                                </div>


                                <button type="reset" class="btn btn-primary" id="reset">انصراف</button>
                                <button type="submit" class="btn btn-primary pull-left">اعمال تغییرات</button>

                            </form>
                        </div>
                    </div>
                </div>


            </div>
            <!-- /.row -->


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

