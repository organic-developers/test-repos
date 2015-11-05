<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>
    <link rel="stylesheet" href="index_1.jsp_files/bootstrap.css">
    <link rel="stylesheet" href="index_1.jsp_files/index.css">
    <script type="text/javascript" src="index_1.jsp_files/jquery-1.js"></script>
    <script type="text/javascript" src="index_1.jsp_files/docs.js"></script>
    <script src="index_1.jsp_files/bootstrap.js"></script>
    <style type="text/css" id="holderjs-style"></style>

    <!-- Bootstrap Core CSS RTL-->
    <link href="css/bootstrap-rtl.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/css/added.css" rel="stylesheet"/>

    <script src="/js/jquery-1.11.3.min.js"></script>

    <script>
        $(document).ready(function(ev){
            $("a.association").each(function(e){
                $(this).click(function(ec){
                    $(this).next().submit();
                    ec.preventDefault();
                })
            })

        })
    </script>

</head>
<body id="index" style="background: url('image/bg1.png') no-repeat fixed center center / cover  transparent;">

<!-- .navbar -->
<div class="navbar navbar-inverse navbar-index" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/index">سامانه انجمن های علمی<span
                    class="hidden-lg hidden-md  glyphicon glyphicon-phone pull-left"
                    style="padding-right:    17px;"></span></a>
        </div>
        <div class="navbar-collapse collapse" id="navbar-collapse">
            <ul class="nav navbar-nav navbar-left">
                <li><a href="/login.jsp"><span class="glyphicon glyphicon-log-in"></span> ورود</a></li>
            </ul>
        </div>
        <!--/.navbar-collapse -->
    </div>
</div>
<!-- /.navbar -->


<!-- .container -->
<div class="container">

    <!-- Carousel -->
    <div id="myCarousel" class="carousel slide hidden-xs ">

        <!-- Indicators -->
        <ol class="carousel-indicators ">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">

            <div class="item active">
                <img src="index_1.jsp_files/iran3.jpg">
                <div class="carousel-caption  nav-fade ">
                    <h4>سامانه انجمن های علمی دانشجویی دانشگاه شاهرود</h4>
                    <%--<p>سمینار معرفی مدارک شبکه</p>--%>
                </div>
            </div>

            <c:forEach var="slider" items="${sliders}">
            <div class="item">
                <img src="${slider.path}">
                <div class="carousel-caption carousel-inner">
                    <h4>${slider.comment}</h4>
                    <%--<p>${plan.name}</p>--%>
                </div>
            </div>
            </c:forEach>

        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!-- /Carousel -->

    <br/>
    <br/>
    <br/>
    <div class="row" style="border-bottom: 1px white solid"></div>
    <br/>
    <br/>


    <!-- Associations -->
    <div class="row">
        <c:forEach var="association" items="${associations}">
            <div class="col-lg-3 col-sm-4" style="margin-bottom: 33px; height: 284px; text-align: center;">
                <a class="association" href="#">
                    <img src="${association.logo}" alt="لوگو" class="img-circle"/>
                    <h4 style="text-align: center;">${association.name}</h4>
                </a>
                <form action="/ServletAssociationPageInitializer" style="display: none;">
                    <input type="text" name="association" value="${association.id}"/>
                </form>
            </div>
        </c:forEach>
    </div>
    <!-- /Associations -->
</div>
<!-- /.container -->


<!-- Bottom Navbar -->
<div class="navbar navbar-default navbar-index" style="background: #222222;">
    <div class="container">
        <p class="navbar-text pull-left englishFont">About us </p>
    </div>
</div>
<!-- /Bottom Navbar -->

</body>
</html>