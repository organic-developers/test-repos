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

    <!-- Custom Fonts -->
    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>

    <script src="/js/jquery-1.11.3.min.js"></script>
    <script>
        $(document).ready(function () {
            $("tr").each(function () {
                $(this).click(function () {

                    var x = $(this).children().last().text();
//                    alert(x);
                    $.post("/Controller/ServletUsersNotActive",
                            {
                                id: x,
                            },
                            function (data, status) {
//                                alert("Data: " + data.id + "\nStatus: " + status);
                                $("#id").val(data.id);
                                $("#fName").val(data.fName);
                                $("#lName").val(data.lName);
                                $("#userName").val(data.userName);
                                $("#password").val(data.password);
                                $("#associationId").val(data.association.id);
                                $("#positionTitle").val(data.position.id);
                                $("#birthYear").val(data.birthYear);
                                $("#email").val(data.email);
                                $("#nationalId").val(data.nationalId);
                                $("#phone").val(data.phone);
                                $("#active").val(data.active);
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
//        $(document).ready(function () {
//            $("#reset").click(function () {
//                $("#photo").attr("required", "true");
//                resetImage();
//            });
//        });
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
                    <a href="/Controller/ServletUsersActiveInitialize" class="btn btn-default" style="margin: 20px">کاربران فعال</a>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-users"></i>اعضای غیر فعال</h3>
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
                                            <td>${user.position.name}</td>
                                            <td>${user.association.name}</td>
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
                    <div class="panel panel-default" id="test">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-pencil-square-o"></i> ایجاد / ویرایش کاربر </h3>
                        </div>
                        <div class="panel-body">
                            <div style="text-align: center;">
                                <img src="/image/avatar.png" alt="عکس" width="125" height="125" id="image">
                            </div>
                            <form role="form" action="/Controller/ServletUsersNotActive" method="post"
                                  enctype="multipart/form-data">
                                <input type="text" id="image2" name="image2" style="display: none;">
                                <input type="text" id="id" name="id" style="display: none;">

                                <div class="form-group">
                                    <label for="associationId">انجمن:</label>
                                    <select class="form-control" id="associationId" name="associationId">
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
                                        <c:forEach var="position" items="${positions}">
                                            <option value="${position.id}">${position.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="studentId">شماره دانشجویی:</label>
                                    <input type="number" class="form-control" id="studentId" name="studentId">
                                </div>
                                <div class="form-group">
                                    <label for="nationalId">شماره ملی:</label>
                                    <input type="number" class="form-control" id="nationalId" name="nationalId">
                                </div>
                                <div class="form-group">
                                    <label for="birthYear">سال تولد:</label>
                                    <input type="number" class="form-control" id="birthYear" name="birthYear">
                                </div>
                                <div class="form-group">
                                    <label for="phone">شماره تماس:</label>
                                    <input type="number" class="form-control" id="phone" name="phone">
                                </div>
                                <div class="form-group">
                                    <label for="email">ایمیل:</label>
                                    <input type="email" class="form-control" id="email" name="email">
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
                                    <label for="active">وضعیت:</label>
                                    <select class="form-control" id="active" name="active">
                                        <option value="true">فعال</option>
                                        <option value="false">غیر فعال</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="photo">عکس:</label>
                                    <input type="file" id="photo" name="photo" required="true">
                                </div>

                                <button type="reset" class="btn btn-primary" id="reset">انصراف</button>
                                <button type="submit" class="btn btn-primary">اعمال تغییرات</button>
                                <%--<button type="button" class="btn btn-primary">آغاز مسئولیت جدید</button>--%>
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
</body>

</html>

