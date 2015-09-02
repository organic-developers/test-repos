<%@ page import="java.util.List" %>
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

    <script src="/js/jquery-1.11.3.min.js"></script>
    <script>
        $(document).ready(function () {
            $("tr").each(function () {
                $(this).click(function () {
                    var x = $(this).children().last().text();
                    $("#testp").text(x);
                    $.post("/Controller/ServletUsers",
                            {
                                nationalId: x,
                            },
                            function (data, status) {
//                                alert("Data: " + data + "\nStatus: " + status);
//                                $("#testp").text(data.birthYear);
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
                                $("#image").attr("src", data.photo);
                                $("#studentId").val(data.studentId);
                            });
//                    $.post("/Controller/ServletUsers",
//                            { nationalId: x},
//                            function(responseJson){
//                                $("$lName").val("one's working")
//                                $.on(responseJson, function(product){
//                                    $("#image").attr("src", product.photo);
//                                    $("fName").val("it's working");
//                                });
//                            });
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
                                        <th style="display: none;">شماره شناسایی</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <% List users = (List) request.getAttribute("users"); %>
                                    <%if (users != null) {%>
                                    <%! int i = 0; %>
                                    <%while (i < users.size()) {%>
                                    <% User user = (User) users.get(i);%>
                                    <tr>
                                    <td><%=user.getfName()%>
                                    </td>
                                    <td><%=user.getlName()%>
                                    </td>
                                    <td><%=user.getPositionTitle()%>
                                    </td>
                                    <td><%=user.getAssociationNumber()%>
                                    </td>
                                    <td style="display: none;"><%=user.getNationalId()%>
                                    </td>
                                    </tr>
                                    <%i++;%>
                                    <%}%>
                                    <%}%>
                                    <%--<c:forEach var="user" items="${userList}">--%>
                                        <%--<tr>--%>
                                            <%--<td class="td-highlighted-2">--%>
                                                <%--<div align="left">${user.fName}</div>--%>
                                            <%--</td>--%>
                                            <%--<td class="td-highlighted-2">--%>
                                                <%--<div align="left">${user.lName}</div>--%>
                                            <%--</td>--%>
                                            <%--<td class="td-highlighted-2">--%>
                                                <%--<div align="left">${user.positionTitle}</div>--%>
                                            <%--</td>--%>
                                            <%--<td class="td-highlighted-2">--%>
                                                <%--<div align="left">${user.associationNumber}</div>--%>
                                            <%--</td>--%>
                                        <%--</tr>--%>
                                    <%--</c:forEach>--%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <p id="testp">gggg</p>
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
                                <%--<input type="text" id="id" name="id" style="display: none;">--%>
                                <div class="form-group">
                                    <label for="associationNumber">انجمن:</label>
                                    <select class="form-control" id="associationNumber" name="associationNumber">
                                        <option value="1">برق</option>
                                        <option value="2">پدافند غیر عامل</option>
                                        <option value="3">تربیت بدنی</option>
                                        <option value="4">حسابداری</option>
                                        <option value="5">رباتیک</option>
                                        <option value="6">ریاضی</option>
                                        <option value="7">زبان</option>
                                        <option value="8">زمین شناسی</option>
                                        <option value="9">شیمی</option>
                                        <option value="10">عمران</option>
                                        <option value="11">فیزیک و نجوم</option>
                                        <option value="12">کارآفرینی</option>
                                        <option value="13">کامپیوتر و فناوری اطلاعات</option>
                                        <option value="14">کشاورزی</option>
                                        <option value="15">مدیریت</option>
                                        <option value="16">دبیر</option>
                                        <option value="17">ژئوفیزیک</option>
                                        <option value="18">معماری</option>
                                        <option value="19">مکانیک</option>
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
                                    <label for="title">سمت:</label>
                                    <select class="form-control" id="title" name="positionTitle">
                                        <option value="کارشناس">کارشناس</option>
                                        <option value="مشاور">مشاور علمی</option>
                                        <option value="دبیر">دبیر</option>
                                        <option value="دبیر">مسئول روابط عمومی</option>
                                        <option value="دبیر">مسئول امور مالی</option>
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
                                    <input type="file" id="photo" name="photo">
                                </div>


                                <button type="reset" class="btn btn-primary">انصراف</button>
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

