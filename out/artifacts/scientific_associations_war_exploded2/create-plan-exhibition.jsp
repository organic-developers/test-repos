<%--
  Created by IntelliJ IDEA.
  User: Saied
  Date: 8/8/2015
  Time: 4:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
<body class="dashboard-background">

<div id="wrapper">

  <!-- Navigation -->
  <%@ include file="menu.jsp" %>

  <div id="page-wrapper">

    <div class="container-fluid">

      <!-- Page Heading -->
      <div class="row">
        <div class="col-lg-12">
          <h1 class="page-header">
            ایجاد طرح جدید
            <small></small>
          </h1>

        </div>
      </div>
      <!-- /.row -->

      <div class="row">
        <div class="col-lg-12">

          <form class="form-horizontal" action="insertPlan.jsp">
            <div class="form-group">
              <div class="col-lg-2">
                <label data-toggle="tooltip" data-placement="right" title="نام طرح">نام طرح:</label>
              </div>
              <div class="col-lg-8 col-lg-offset-1">
                <input data-toggle="tooltip" data-placement="right" title="نام طرح" class="form-control"
                       name="title" type="text">
              </div>

            </div>


            <div class=" form-group">
              <div class="col-lg-2">
                <label>ماهیت طرح: </label>
              </div>
              <div class="col-lg-8 col-lg-offset-1">
                <select class="form-control">
                  <option>بازدید عملی</option>
                  <option>کلاس ها و دوره های آموزشی</option>
                  <option>مسابقات عملی</option>
                  <option>نمایشگاه</option>
                  <option>همایش هاو کنفرانس ها</option>
                  <option>چاپ نشریه</option>

                </select>
              </div>
            </div>

            <div class=" form-group">
              <div class="col-lg-2">
                <label>محل برگزاری:</label>
              </div>
              <div class="col-lg-8 col-lg-offset-1">
                <input class="form-control" name="owner" type="text">
              </div>

            </div>

            <div class=" form-group">
              <div class="col-lg-2">
                <label>تاریخ برگزاری:</label>
              </div>
              <div class="col-lg-8 col-lg-offset-1">
                <input class="form-control" name="date" type="text">
              </div>

            </div>

            <div class=" form-group">
              <div class="col-lg-2">
                <label data-toggle="tooltip" data-placement="right"
                       title="پرسنل اجرایی، نام مدرس یا مدرسین">افراد همکار:</label>
              </div>
              <div class="col-lg-8 col-lg-offset-1">
                <input class="form-control" name="otherPerson" type="text" data-toggle="tooltip"
                       data-placement="right" title="پرسنل اجرایی، نام مدرس یا مدرسین">
              </div>

            </div>
            <div class=" form-group">
              <div class="col-lg-2">
                <label>ساعت برگزاری:</label>
              </div>
              <div class="col-lg-8 col-lg-offset-1">
                <input class="form-control" name="time" type="text">
              </div>

            </div>
            <div class=" form-group">
              <div class="col-lg-2">
                <label>تاریخ پایان برگزاری:</label>
              </div>
              <div class="col-lg-8 col-lg-offset-1">
                <input class="form-control" name="end_date" type="text">
              </div>

            </div>
            <div class=" form-group">
              <div class="col-lg-2">
                <label>موارد درخواستی از گروه انجمن های علمی دانشجویی:</label>
              </div>
              <div class="col-lg-8 col-lg-offset-1">
                <textarea class="form-control" rows="3" name="req_discription"></textarea>
              </div>

            </div>
            <div class=" form-group">
              <div class="col-lg-2">
                <label>پرسنل اجرایی(تعداد و نام + شماره تماس دو مسئول اصلی):</label>
              </div>
              <div class="col-lg-8 col-lg-offset-1">
                <textarea class="form-control" rows="3" name="director_info"></textarea>
              </div>

            </div>
            <div class=" form-group">
              <div class="col-lg-2">
                <label>مبالغ دریافتی با ذکر مورد(دانشجویان،اسپانسر...): </label>
              </div>
              <div class="col-lg-8 col-lg-offset-1">
                <textarea class="form-control" rows="3" name="discription"></textarea>
              </div>

            </div>

            <div class=" form-group">
              <div class="col-lg-2">
                <label>شرح ریز هزینه: </label>
              </div>
              <div class="col-lg-8 col-lg-offset-1">
                <textarea class="form-control" rows="3" name="discription"></textarea>
              </div>

            </div>

            <div class="form-group">
              <div class="col-lg-8 col-lg-offset-1">
                <label for="exampleInputFile">فایل ضمیمه</label>
                <input id="exampleInputFile" type="file">

                <p class="help-block">هزینه هاو..</p>
              </div>
            </div>

            <div class="form-group">
              <div class="col-lg-2 col-lg-offset-10">
                <button type="submit" class="btn btn-success">ایجاد طرح</button>
              </div>
            </div>

          </form>

        </div>
      </div>


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
