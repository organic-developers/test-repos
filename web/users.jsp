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
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Core CSS RTL-->
    <link href="css/bootstrap-rtl.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">
    <link href="css/sb-admin-rtl.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

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
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>سعید</td>
                                        <td>فخرایی</td>
                                        <td>دبیر</td>
                                        <td>کامپیوتر و فناوری اطلاعات</td>
                                    </tr>
                                    <tr>
                                        <td>3325</td>
                                        <td>10/21/2013</td>
                                        <td>3:20 PM</td>
                                        <td>$234.34</td>
                                    </tr>
                                    <tr>
                                        <td>3324</td>
                                        <td>10/21/2013</td>
                                        <td>3:03 PM</td>
                                        <td>$724.17</td>
                                    </tr>
                                    <tr>
                                        <td>3323</td>
                                        <td>10/21/2013</td>
                                        <td>3:00 PM</td>
                                        <td>$23.71</td>
                                    </tr>
                                    <tr>
                                        <td>3322</td>
                                        <td>10/21/2013</td>
                                        <td>2:49 PM</td>
                                        <td>$8345.23</td>
                                    </tr>
                                    <tr>
                                        <td>3321</td>
                                        <td>10/21/2013</td>
                                        <td>2:23 PM</td>
                                        <td>$245.12</td>
                                    </tr>
                                    <tr>
                                        <td>3320</td>
                                        <td>10/21/2013</td>
                                        <td>2:15 PM</td>
                                        <td>$5663.54</td>
                                    </tr>
                                    <tr>
                                        <td>3319</td>
                                        <td>10/21/2013</td>
                                        <td>2:13 PM</td>
                                        <td>$943.45</td>
                                    </tr>
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
                            <form role="form">
                                <div class="form-group">
                                    <label for="asso">انجمن:</label>
                                    <select class="form-control" id="asso" name="associationNumber">
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
                                    <input type="text" class="form-control" id="fName" name="fName">
                                </div>
                                <div class="form-group">
                                    <label for="lN">نام خانوادگی:</label>
                                    <input type="text" class="form-control" id="lN" name="lName">
                                </div>
                                <div class="form-group">
                                    <label for="sId">شماره دانشجویی:</label>
                                    <input type="number" class="form-control" id="sId" name="studentId">
                                </div>
                                <div class="form-group">
                                    <label for="nId">شماره ملی:</label>
                                    <input type="number" class="form-control" id="nId" name="nationalId">
                                </div>
                                <div class="form-group">
                                    <label for="by">سال تولد:</label>
                                    <input type="number" class="form-control" id="by" name="birthYear">
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
                                    <label for="title">سمت:</label>
                                    <select class="form-control" id="title" name="positionTitle">
                                        <option value="کارشناس">کارشناس</option>
                                        <option value="مشاور">مشاور</option>
                                        <option value="دبیر">دبیر</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="user">نام کاربری:</label>
                                    <input type="text" class="form-control" id="user" name="userName">
                                </div>
                                <div class="form-group">
                                    <label for="pwd">رمز عبور:</label>
                                    <input type="password" class="form-control" id="pwd" name="Password">
                                </div>
                                <div class="form-group">
                                    <label for="photo">عکس:</label>
                                    <input type="file" id="photo">
                                </div>


                                    <button class="btn btn-default" type="reset">انصراف</button>
                                    <button type="submit" class="btn btn-default pull-left">اعمال تغییرات</button>

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
<script src="js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="js/plugins/morris/raphael.min.js"></script>
<script src="js/plugins/morris/morris.min.js"></script>
<script src="js/plugins/morris/morris-data.js"></script>

</body>

</html>

