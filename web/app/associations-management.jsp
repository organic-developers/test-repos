<%--
  Created by IntelliJ IDEA.
  User: Saied
  Date: 8/6/2015
  Time: 3:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <link href="../css/added.css" rel="stylesheet"/>

    <!-- Custom Fonts -->
    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script src="/js/jquery-1.11.3.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>

    <%--<script src="/js/added.js"></script>--%>

    <script>
        $(document).ready(function () {
            $(".btn-toggle-active").each(function () {
                $(this).click(function () {
                    i = $(this);
                    var x = i.val();
                    window.alert(x);
                    $.ajax({
                        url: "ServletAssociationsManagement",
                        type: "POST",
                        data: {id: x},
                        success: function () {
                            i.parents(".thumbnail").toggleClass("thumbnail-gray");
                        }
                    })
                })
            })
        })
//        $(document).ready(function(){
//            $(".btn-edit").each(function(){
//                $(this).click(function(){
//                    var x = $(this).val();
//                    window.alert(x);
//                    $.ajax({
//                        url:"ServletEditAssociation",
//                        type: "POST",
//                        data: {"id": x},
////                        success: function(){}
//                    })
//                })
//            })
//        })
    </script>

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
                    <h1 class="page-header">مدیریت انجمن ها</h1>
                </div>
            </div>
            <!-- /.row -->


            <div class="row">
                <div><h3><a href="../app/createAssociation.jsp"><span class="glyphicon glyphicon-plus"></span></a> ایجاد
                    انجمن جدید</h3></div>

                <br>

                <!-- Associations -->
                <div class="row">
                    <c:forEach var="association" items="${associations}">
                        <div class="col-sm-6 col-md-3">
                            <c:choose>
                            <c:when test="${association.active eq 'false'}">
                            <div class="thumbnail thumbnail-gray" style="height: 338px;">
                                <img src="${association.logo}" alt="مشکل در بارگزاری لوگو"
                                     style="height: 200px; width: 100%; display: block;">

                                <div class="caption">
                                    <h4>${association.name}</h4>
                                </div>
                                <div class="caption caption-botton" style="position: absolute; bottom: 25px;">
                                    <form action="ServletEditAssociationInitializer" style="display: inline;">
                                        <input type="text" value="${association.id}" name="id" style="display: none;"/>
                                        <button type="submit" class="btn btn-primary btn-edit">ویرایش</button>
                                    </form>
                                    <button class="btn btn-info btn-toggle-active" value="${association.id}">فعال/غیر فعال</button>
                                </div>
                            </div>
                            </c:when>
                            <c:otherwise>
                                <div class="thumbnail" style="height: 338px;">
                                    <img src="${association.logo}" alt="مشکل در بارگزاری لوگو"
                                         style="height: 200px; width: 100%; display: block;">

                                    <div class="caption">
                                        <h4>${association.name}</h4>
                                    </div>
                                    <div class="caption caption-botton" style="position: absolute; bottom: 25px;">
                                        <form action="ServletEditAssociationInitializer" style="display: inline;">
                                            <input type="text" value="${association.id}" name="id" style="display: none;"/>
                                            <button type="submit" class="btn btn-primary btn-edit">ویرایش</button>
                                        </form>
                                        <button class="btn btn-info btn-toggle-active" value="${association.id}">فعال/غیر فعال</button>
                                    </div>
                                </div>
                            </c:otherwise>
                            </c:choose>

                        </div>
                    </c:forEach>
                </div>
                <!-- /Associations -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

</body>

</html>
