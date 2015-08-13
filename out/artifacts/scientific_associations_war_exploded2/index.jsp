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
</head>
<body id="index" class="jumbotron "
      style="background: url('image/bg1.png') no-repeat fixed center center / cover  transparent;">

<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">سامانه انجمن های علمی<span
                    class="hidden-lg hidden-md  glyphicon glyphicon-phone pull-left"
                    style="padding-right:    17px;"></span></a>
        </div>
        <div class="navbar-collapse collapse" id="navbar-collapse">
            <form class="navbar-form navbar-right" action="dashboard-index.jsp" method="post">
                <div class="form-group">
                    <input placeholder="نام کاربری" name="username" class="form-control " type="text">
                </div>
                <div class="form-group">
                    <input placeholder="رمز عبور" name="password" class="form-control  input-group" type="password">
                </div>
                <button type="submit" value="login" class="btn btn-success ">ورود</button>
            </form>
        </div>
        <!--/.navbar-collapse -->
    </div>
</div>


<div class="row">
    <div class="col-lg-1"></div>
    <div class="col-lg-10 ">
        <div id="Carousel" class="carousel slide hidden-xs ">
            <!-- Indicators -->
            <ol class="carousel-indicators ">
                <li data-target="#Carousel" data-slide-to="0" class="active"></li>
                <li data-target="#Carousel" data-slide-to="1"></li>
                <li data-target="#Carousel" data-slide-to="2"></li>

            </ol>

            <div class="carousel-inner">
                <div class="item active">

                    <img src="index_1.jsp_files/006.jpg">

                    <div class="carousel-caption carousel-inner">
                        <h4>انجمن دانشکده آی تی و کامییوتر</h4>

                        <p>ورک شاپ طراحی صفحات وب</p>
                    </div>
                </div>
                <div class="item">
                    <img src="index_1.jsp_files/007.jpg">

                    <div class="carousel-caption  nav-fade ">
                        <h4>انجمن دانشکده آی تی و کامییوتر</h4>

                        <p>سمینار معرفی مدارک شبکه</p>
                    </div>
                </div>
                <div class="item">
                    <img src="index_1.jsp_files/003.jpg">

                    <div class=" ">
                        <div class="carousel-caption carousel-inner">
                            <h4>انجمن های هنر و موسیقی </h4>

                            <p>نمایشگاه هنری های دستی و کوزه گری</p>
                        </div>
                    </div>
                </div>
            </div>

            <a class="left carousel-control" href="#Carousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#Carousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
    </div>
    <div class="col-lg-1"></div>


    <!-- Marketing messaging and featurettes
          ================================================== -->


    <div class="row ">
    </div>

    <!-- Three columns of text below the carousel -->
    <div class="container marketing  ">
        <div class="row"><h1></h1></div>

        <div class="row" style="margin: 30px 30px 30px 30px;">
            <hr class="exampleone">
            <div class="col-lg-3  col-md-4 col-xs-6 col-sm-6 college ">
                <a href="anjoman.IT.jsp">
                    <img class="img-circle" alt="Generic placeholder image" src="index_1.jsp_files/IT4.jpg">

                    <h2 class="fade">انجمن کامییوتر</h2>
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-12 col-sm-6 college ">
                <img class="img-circle" alt="Generic placeholder image" src="index_1.jsp_files/math5.jpg">

                <h2 class="fade">انجمن ریاضی</h2>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-12 col-sm-6 college ">
                <img class="img-circle" alt="Generic placeholder image" src="index_1.jsp_files/p4.jpg">

                <h2 class="fade">انجمن فیزیک</h2>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-12 col-sm-6 college ">
                <img class="img-circle" alt="Generic placeholder image" src="index_1.jsp_files/chemistry.gif">

                <h2 class="fade">انجمن شیمی</h2>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-12 col-sm-6 college ">
                <img class="img-circle" alt="Generic placeholder image" src="index_1.jsp_files/language3.jpg">

                <h2 class="fade">انجمن زبان</h2>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-12 col-sm-6 college ">
                <img class="img-circle" alt="Generic placeholder image" src="index_1.jsp_files/art4.jpg">

                <h2 class="fade">انجمن هنر</h2>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-12 col-sm-6 college ">
                <img class="img-circle" alt="Generic placeholder image" src="index_1.jsp_files/sport4.jpg">

                <h2 class="fade">انجمن برق</h2>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-12 col-sm-6 college ">
                <img class="img-circle" alt="Generic placeholder image" src="index_1.jsp_files/civil2.jpg">

                <h2 class="fade">انجمن مکانیک</h2>
            </div>
        </div>
        <!-- /.row -->


    </div>

</div>

<div class="navbar navbar-default navbar-fixed-bottom" style="background: #222222;">
    <div class="container">
        <p class="navbar-text pull-left englishFont">About us </p>

    </div>
</div>


</body>
</html>