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
    <link rel="stylesheet" href="/css/added.css"/>

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
//                    alert(x);
                    $.post("/Controller/ServletUsersActive?method=methodA",
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
        $(document).ready(function () {
            $("#reset").click(function () {
                $("#photo").attr("required", "true");
                resetImage();
            });
        });
        function resetImage() {
            $("#image").attr("src", "/image/avatar.png");
        }
        $(document).ready(function () {
            $("#deactiveAll").click(function () {
                $.post("/Controller/ServletUsersActive?method=methodB",
                        {
//                                        id: x,
                        },
                        function (data, status) {
//                            alert("Data: " + data.id + "\nStatus: " + status);
                            location.reload();
                        });
            })
        })

        $(document).ready(function () {
            $(".btn-inOfficeHistory").each(function () {
                $(this).click(function () {
                    alert("asddasd");
                    $.ajax({
                        url: "/Controller/ServletShowInOfficeHistory",
                        type: "post",
                        data: {"id": $(this).attr("id")},
                        dataType: "json",
                        success: function (InOffices) {
                            alert("success");
                            $("#inOfficeModalBody").html("");
                            for (var i = 0; i < InOffices.length; i++) {
                                var text;
                                if (InOffices[i].toDate == null) {
                                    text = '<tr><td>' + InOffices[i].positionName + '</td>' +
                                            '<td>' + InOffices[i].fromDate + '</td>' +
                                            '<td>' + "" + '</td></tr>';
                                } else {
                                    text = '<tr><td>' + InOffices[i].positionName + '</td>' +
                                            '<td>' + InOffices[i].fromDate + '</td>' +
                                            '<td>' + InOffices[i].toDate + '</td></tr>';
                                }
                                $("#inOfficeModalBody").append(text);
                            }
                        }
                    });
                });
            });
        });
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


            <div class="row" style="padding-left: 15px;">
                <div class="col-sm-12" style="background-color: #EEEEEE;
    border-radius: 6px;
    padding-top: 15px;
    margin-bottom: 20px;">
                    <form action="/Controller/ServletDashboardFilters" method="post">
                        <div class="form-group col-sm-3">
                            <lable>انجمن:</lable>
                            <select class="form-control" name="association">
                                <option value="1000">همه</option>
                                <c:forEach var="association" items="${associations}">
                                    <option value="${association.id}">${association.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group col-sm-3">
                            <lable>سمت:</lable>
                            <select class="form-control" name="position">
                                <option value="1000">همه</option>
                                <c:forEach var="position" items="${positions}">
                                    <option value="${position.id}">${position.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group col-sm-4">
                            <lable>تاریخ:</lable>
                            <div class="row">
                                <div class="form-group col-sm-1">
                                    <label>از</label>
                                </div>
                                <div class="form-group col-sm-5">
                                    <input class="form-control" name="beginDate">
                                </div>
                                <div class="form-group col-sm-1">
                                    <label>تا</label>
                                </div>
                                <div class="form-group col-sm-5">
                                    <input class="form-control" name="endDate">
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-sm-2" style="text-align: center; bottom: -20px;">
                            <button type="submit" class="btn btn-primary">نمایش</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row">

                <div class="col-lg-8">

                    <c:if test="${currentUser.position.id == 1 || currentUser.position.id == 2}">

                        <a href="/Controller/ServletUsersNotActiveInitialize" class="btn btn-default"
                           style="margin: 20px">کاربران
                            غیر فعال</a>
                    </c:if>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-users"></i>اعضای فعال</h3>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover table-striped">
                                    <thead>
                                    <tr>
                                        <th>نام</th>
                                        <th>نام خانوادگی</th>
                                        <th>سمت فعلی</th>
                                        <th>سمت های قبلی</th>
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
                                            <td>
                                                <button class="btn btn-primary btn-inOfficeHistory"
                                                        id="${user.id}"
                                                        data-toggle="modal" data-target="#inOfficesModal">مشاهده
                                                </button>
                                            </td>
                                            <td>${user.association.name}</td>
                                            <td style="display: none;">${user.id}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <c:if test="${currentUser.position.id == 1 || currentUser.position.id == 2}">
                                <button class="btn btn-primary" id="deactiveAll">پایان مسئولیت همه اعضا</button>
                            </c:if>
                        </div>
                    </div>
                </div>

                <!-- Modal - changes -->
                <div class="modal fade" id="inOfficesModal" role="dialog">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title"></h4>
                                <br/>
                            </div>
                            <div class="modal-body">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h3 class="panel-title"><i class="fa fa-calendar"></i> تغییرات</h3>
                                    </div>
                                    <div class="panel-body">
                                        <!-- .table -->
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-hover table-striped">
                                                <thead>
                                                <tr>
                                                    <th>سمت</th>
                                                    <th>از تاریخ</th>
                                                    <th>تا تاریخ</th>
                                                </tr>
                                                </thead>
                                                <tbody id="inOfficeModalBody">
                                                </tbody>
                                            </table>
                                        </div>
                                        <!-- /.table -->
                                    </div>
                                </div>
                                <!-- /.panel -->
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.Modal -->


                <div class="col-lg-4">
                    <div class="panel panel-default" id="test">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-pencil-square-o"></i> ایجاد / ویرایش کاربر </h3>
                        </div>
                        <div class="panel-body">
                            <div style="text-align: center;">
                                <img src="/image/avatar.png" alt="عکس" width="125" height="125" id="image">
                            </div>
                            <form role="form" action="/Controller/ServletUsersActive" method="post"
                                  enctype="multipart/form-data">
                                <input type="text" id="image2" name="image2" style="display: none;">
                                <input type="text" id="id" name="id" style="display: none;">

                                <div class="form-group">
                                    <label for="associationId">انجمن:</label>
                                    <select class="form-control" id="associationId" name="associationId">
                                        <c:choose>
                                            <c:when test="${currentUser.position.id == 4}">
                                                <option value="${currentUser.association.id}">${currentUser.association.name}</option>
                                            </c:when>
                                            <c:otherwise>
                                                <c:forEach var="association" items="${associations}">
                                                    <option value="${association.id}">${association.name}</option>
                                                </c:forEach>
                                            </c:otherwise>
                                        </c:choose>
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
                                <c:if test="${currentUser.position.id == 1 || currentUser.position.id == 2}">
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
                                </c:if>
                                <div class="form-group">
                                    <label for="photo">عکس:</label>
                                    <input type="file" id="photo" name="photo" required="true">
                                </div>
                                <button type="reset" class="btn btn-primary" id="reset">انصراف</button>
                                <button type="submit" class="btn btn-primary">اعمال تغییرات</button>
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

<!-- Bootstrap Core JavaScript -->
<script src="../js/bootstrap.min.js"></script>

</body>

</html>

