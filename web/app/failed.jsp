<%--
  Created by IntelliJ IDEA.
  User: Saied
  Date: 8/13/2015
  Time: 4:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>سامانه انجمن های علمی</title>

  <!-- Bootstrap Core CSS -->
  <link href="/css/bootstrap.min.css" rel="stylesheet">

  <!-- Bootstrap Core CSS RTL-->
  <link href="/css/bootstrap-rtl.min.css" rel="stylesheet">

  <!-- Custom CSS -->
  <link href="/css/sb-admin.css" rel="stylesheet">
  <link href="/css/sb-admin-rtl.css" rel="stylesheet">
  <link rel="stylesheet" href="/css/added.css"/>

  <!-- Morris Charts CSS -->
  <link href="/css/plugins/morris.css" rel="stylesheet">

  <!-- Custom Fonts -->
  <link href="/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

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

  <div id="page-wrapper" style="height: 100%;">

    <div class="container-fluid">
      <style>
        .well-large {
          background-color: lightcoral;
          max-width: 600px;
          margin: 200px auto;
          height: 130px;
          font-size: x-large;
        }
      </style>

      <script>
        function goBack() {
          window.history.back();
        }
      </script>

      <!-- well -->
      <div class="well well-large">
        <div class="well " style="min-width: 500px; height: 90px;">
          <div class="row" style="margin: auto">
            <div class="col-xs-7">عملیات ناموفق!</div>
            <div class="col-xs-5">
              <button class="btn btn-lg btn-primary" onclick="goBack" style="float: left; margin: auto;">بازگشت
              </button>
            </div>
          </div>
        </div>
      </div>
      <!-- /.well -->

    </div>
    <!-- /.container-fluid -->

  </div>
  <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="/js/bootstrap.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="/js/plugins/morris/raphael.min.js"></script>
<script src="/js/plugins/morris/morris.min.js"></script>
<script src="/js/plugins/morris/morris-data.js"></script>

</body>
</html>
