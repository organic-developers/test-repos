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

</head>

<body>

<div id="wrapper">

    <!-- Navigation -->
    <%@ include file="menu.jsp" %>

    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">انتخاب طرح بر اساس فیلتر ها</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                            <label>انچمن ها</label>
                            <select class="form-control">
                                <option>انجمن کامپیوتر</option>
                                <option>انجمن برق</option>
                                <option>انجمن مکانیک</option>
                                <option>انجمن معماری</option>
                                <option>انجمن معدن و ژئوفیزیک</option>
                                <option>انجمن مدیریت</option>
                                <option>انجمن کشاورزی</option>
                                <option>انجمن عمران</option>
                                <option>انجمن کارآفرینی</option>
                                <option>انجمن فیزیک و نجوم</option>
                                <option>انجمن شیمی</option>
                                <option>انجمن زمین شناسی</option>
                                <option>انجمن زبان</option>
                                <option>انجمن ریاضی</option>
                                <option>انجمن رباتیک</option>
                                <option>انجمن حسابداری</option>
                                <option>انجمن تربیت بدنی</option>
                                <option>انجمن پدافند غیر عامل</option>
                            </select>
                        </div>
                        <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                            <label>ماهیت</label>
                            <select class="form-control">
                                <option>بازدید عملی</option>
                                <option>کلاس ها و دوره های آموزشی</option>
                                <option>مسابقات عملی</option>
                                <option>نمایشگاه</option>
                                <option>همایش هاو کنفرانس ها</option>
                                <option>چاپ نشریه</option>

                            </select>
                        </div>
                        <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                            <label>ترم برگزاری</label>
                            <select class="form-control">
                                <option>نیمسال اول سال 1393</option>
                                <option>نیمسال دوم سال 1393</option>
                                <option>نیمسال اول سال 1394</option>
                                <option>نیمسال دوم سال 1394</option>

                            </select>
                        </div>

                    </div>
                    <div class="row">
                        <br>
                        <button class="btn btn-primary col-lg-offset-9 col-md-offset-9 col-xs-offset-0" type="button">
                            مشاهده طرح ها
                        </button>
                    </div>
                    <div class="row"><br>

                        <div class="col-lg-12">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover table-striped">
                                    <thead>
                                    <tr>
                                        <th>نام طرح</th>
                                        <th>نام انجمن</th>
                                        <th>ماهیت</th>
                                        <th>نیمسال برگزاری</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>3326</td>
                                        <td>10/21/2013</td>
                                        <td>3:29 PM</td>
                                        <td>$321.33</td>
                                    </tr>
                                    <tr>
                                        <td>3325</td>
                                        <td>10/21/2013</td>
                                        <td>3:20 PM</td>
                                        <td>$234.34</td>
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
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">خروج</button>
                    <button type="button" class="btn btn-primary">انتخاب</button>
                </div>
            </div>
        </div>
    </div>


    <div id="page-wrapper">

        <div class="container-fluid">

            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">
                        نتایج ارزیابی
                        <small></small>
                    </h1>

                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon" id="sizing-addon1" data-toggle="modal" data-target="#myModal">انتخاب طرح</span>
                        <input placeholder="عنوان طرح" class="form-control" aria-describedby="sizing-addon1"
                               type="text">

                    </div>
                    <br></div>
            </div>
            <div class="col-lg-8">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">نمودار نظرسنجی</h3>
                    </div>
                    <div class="panel-body">
                        <div style="margin-right: 187px;" id="morris-bar-chart">
                            <svg style="overflow: hidden; position: relative; top: -0.199951px;"
                                 xmlns="http://www.w3.org/2000/svg" width="306" version="1.1" height="352">
                                <desc>Created with RaphaÃ«l 2.1.2</desc>
                                <defs></defs>
                                <text font-weight="normal" font-family="sans-serif" font-size="12px" fill="#888888"
                                      stroke="none" font="10px &quot;Arial&quot;" text-anchor="end"
                                      y="286.44528605200003" x="46.5" style="text-anchor: end; font: 12px sans-serif;">
                                    <tspan dy="4.500004069578154">0</tspan>
                                </text>
                                <path stroke-width="0.5" d="M59,286.44528605200003H281" stroke="#aaaaaa" fill="none"
                                      style=""></path>
                                <text font-weight="normal" font-family="sans-serif" font-size="12px" fill="#888888"
                                      stroke="none" font="10px &quot;Arial&quot;" text-anchor="end"
                                      y="221.08396453900002" x="46.5" style="text-anchor: end; font: 12px sans-serif;">
                                    <tspan dy="4.499995422789084">500</tspan>
                                </text>
                                <path stroke-width="0.5" d="M59,221.08396453900002H281" stroke="#aaaaaa" fill="none"
                                      style=""></path>
                                <text font-weight="normal" font-family="sans-serif" font-size="12px" fill="#888888"
                                      stroke="none" font="10px &quot;Arial&quot;" text-anchor="end"
                                      y="155.72264302600001" x="46.5" style="text-anchor: end; font: 12px sans-serif;">
                                    <tspan dy="4.500002034789077">1,000</tspan>
                                </text>
                                <path stroke-width="0.5" d="M59,155.72264302600001H281" stroke="#aaaaaa" fill="none"
                                      style=""></path>
                                <text font-weight="normal" font-family="sans-serif" font-size="12px" fill="#888888"
                                      stroke="none" font="10px &quot;Arial&quot;" text-anchor="end"
                                      y="90.36132151300001" x="46.5" style="text-anchor: end; font: 12px sans-serif;">
                                    <tspan dy="4.500001017394538">1,500</tspan>
                                </text>
                                <path stroke-width="0.5" d="M59,90.36132151300001H281" stroke="#aaaaaa" fill="none"
                                      style=""></path>
                                <text font-weight="normal" font-family="sans-serif" font-size="12px" fill="#888888"
                                      stroke="none" font="10px &quot;Arial&quot;" text-anchor="end" y="25" x="46.5"
                                      style="text-anchor: end; font: 12px sans-serif;">
                                    <tspan dy="4.5">2,000</tspan>
                                </text>
                                <path stroke-width="0.5" d="M59,25H281" stroke="#aaaaaa" fill="none" style=""></path>
                                <text transform="matrix(0.8192,-0.5736,0.5736,0.8192,-145.2029,225.9709)"
                                      font-weight="normal" font-family="sans-serif" font-size="12px" fill="#888888"
                                      stroke="none" font="10px &quot;Arial&quot;" text-anchor="middle"
                                      y="298.94528605200003" x="262.5"
                                      style="text-anchor: middle; font: 12px sans-serif;">
                                    <tspan dy="4.500004069578154">iPhone 5</tspan>
                                </text>
                                <text transform="matrix(0.8192,-0.5736,0.5736,0.8192,-155.1709,207.0429)"
                                      font-weight="normal" font-family="sans-serif" font-size="12px" fill="#888888"
                                      stroke="none" font="10px &quot;Arial&quot;" text-anchor="middle"
                                      y="298.94528605200003" x="225.5"
                                      style="text-anchor: middle; font: 12px sans-serif;">
                                    <tspan dy="4.500004069578154">iPhone 4S</tspan>
                                </text>
                                <text transform="matrix(0.8192,-0.5736,0.5736,0.8192,-158.5857,183.5262)"
                                      font-weight="normal" font-family="sans-serif" font-size="12px" fill="#888888"
                                      stroke="none" font="10px &quot;Arial&quot;" text-anchor="middle"
                                      y="298.94528605200003" x="188.5"
                                      style="text-anchor: middle; font: 12px sans-serif;">
                                    <tspan dy="4.500004069578154">iPhone 4</tspan>
                                </text>
                                <text transform="matrix(0.8192,-0.5736,0.5736,0.8192,-172.2398,167.1793)"
                                      font-weight="normal" font-family="sans-serif" font-size="12px" fill="#888888"
                                      stroke="none" font="10px &quot;Arial&quot;" text-anchor="middle"
                                      y="298.94528605200003" x="151.5"
                                      style="text-anchor: middle; font: 12px sans-serif;">
                                    <tspan dy="4.500004069578154">iPhone 3GS</tspan>
                                </text>
                                <text transform="matrix(0.8192,-0.5736,0.5736,0.8192,-175.6546,143.6627)"
                                      font-weight="normal" font-family="sans-serif" font-size="12px" fill="#888888"
                                      stroke="none" font="10px &quot;Arial&quot;" text-anchor="middle"
                                      y="298.94528605200003" x="114.5"
                                      style="text-anchor: middle; font: 12px sans-serif;">
                                    <tspan dy="4.500004069578154">iPhone 3G</tspan>
                                </text>
                                <text transform="matrix(0.8192,-0.5736,0.5736,0.8192,-174.564,116.9914)"
                                      font-weight="normal" font-family="sans-serif" font-size="12px" fill="#888888"
                                      stroke="none" font="10px &quot;Arial&quot;" text-anchor="middle"
                                      y="298.94528605200003" x="77.5"
                                      style="text-anchor: middle; font: 12px sans-serif;">
                                    <tspan dy="4.500004069578154">iPhone</tspan>
                                </text>
                                <rect fill-opacity="1" style="fill-opacity: 1;" stroke="none" fill="#0b62a4" ry="0"
                                      rx="0" r="0" height="17.77827945153598" width="27.75" y="268.66700660046405"
                                      x="63.625"></rect>
                                <rect fill-opacity="1" style="fill-opacity: 1;" stroke="none" fill="#0b62a4" ry="0"
                                      rx="0" r="0" height="17.909002094562027" width="27.75" y="268.536283957438"
                                      x="100.625"></rect>
                                <rect fill-opacity="1" style="fill-opacity: 1;" stroke="none" fill="#0b62a4" ry="0"
                                      rx="0" r="0" height="35.94872683214999" width="27.75" y="250.49655921985004"
                                      x="137.625"></rect>
                                <rect fill-opacity="1" style="fill-opacity: 1;" stroke="none" fill="#0b62a4" ry="0"
                                      rx="0" r="0" height="49.674604349879985" width="27.75" y="236.77068170212004"
                                      x="174.625"></rect>
                                <rect fill-opacity="1" style="fill-opacity: 1;" stroke="none" fill="#0b62a4" ry="0"
                                      rx="0" r="0" height="85.62333118203" width="27.75" y="200.82195486997003"
                                      x="211.625"></rect>
                                <rect fill-opacity="1" style="fill-opacity: 1;" stroke="none" fill="#0b62a4" ry="0"
                                      rx="0" r="0" height="205.365272193846" width="27.75" y="81.08001385815402"
                                      x="248.625"></rect>
                            </svg>
                            <div style="left: 24.5px; top: 147px; display: none;"
                                 class="morris-hover morris-default-style">
                                <div class="morris-hover-row-label">iPhone</div>
                                <div class="morris-hover-point" style="color: #0b62a4">
                                    Geekbench:
                                    136
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>


            <div class="col-lg-4">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">اعضای شرکت کننده در نظر سنجی</h3>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover table-striped">
                                <thead>
                                <tr>
                                    <th>نام</th>
                                    <th>نام خانوادگی</th>

                                </tr>
                                </thead>
                                <tbody>
                                <tr class="success">
                                    <td>/index.html</td>
                                    <td>1265</td>

                                </tr>
                                <tr class="danger">
                                    <td>/about.html</td>
                                    <td>261</td>

                                </tr>
                                <tr class="danger">
                                    <td>/sales.html</td>
                                    <td>665</td>

                                </tr>
                                <tr class="success">
                                    <td>/blog.html</td>
                                    <td>9516</td>

                                </tr>
                                <tr class="success">
                                    <td>/404.html</td>
                                    <td>23</td>

                                </tr>
                                <tr class="success">
                                    <td>/services.html</td>
                                    <td>421</td>

                                </tr>
                                <tr class="danger">
                                    <td>/blog/post.html</td>
                                    <td>1233</td>

                                </tr>
                                <tr class="danger">
                                    <td>/blog/post.html</td>
                                    <td>1233</td>

                                </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="page-header">
                        نظرات
                        <small></small>
                    </h4>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="list-group">

                        <a href="#" class="list-group-item">

                            <p class="list-group-item-text">طرح خوبی بود اما ساعات برگزاری مناسب نبود</p>
                        </a>
                        <a href="#" class="list-group-item">

                            <p class="list-group-item-text">زمان برگزار طرح نیم ساعت تاخیر داشت این اصلا خوب نیست</p>
                        </a>
                    </div>
                </div>
            </div>
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

