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

        <div id="page-wrapper">

           <div class="container-fluid">
		   
		  

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
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
							<div class="form-group hide">
                                <label>ماهیت</label>
                                <div class="checkbox">
                                    <label>
                                        <input value="" type="checkbox">بازدید عملی
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input value="" type="checkbox">کلاس ها و دوره های آموزشی
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input value="" type="checkbox">مسابقات عملی
                                    </label>
                                </div>
								 <div class="checkbox">
                                    <label>
                                        <input value="" type="checkbox">نمایشگاه
                                    </label>
                                </div>
								 <div class="checkbox">
                                    <label>
                                        <input value="" type="checkbox">همایش هاو کنفرانس ها 
                                    </label>
                                </div>
								 <div class="checkbox">
                                    <label>
                                        <input value="" type="checkbox">چاپ نشریه
                                    </label>
                                </div>
                            </div>
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
		<div class="row"><br>
			  <button class="btn btn-primary col-lg-offset-9 col-md-offset-9 col-xs-offset-0" type="button">مشاهده طرح ها</button>
			  </div>
<div class="row"><br><div class="col-lg-12">
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
		   
		   

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            سیستم اطلاع رسانی <small></small>
                        </h1>
                      
                    </div>
                </div>
				<div class="row"><div class="col-lg-12"> <div class="input-group input-group-lg">
     <span class="input-group-addon" id="sizing-addon1" data-toggle="modal" data-target="#myModal" >انتخاب طرح</span>
  <input placeholder="عنوان طرح" class="form-control" aria-describedby="sizing-addon1" type="text">
      
    </div><br></div></div>
				
				<div class="row">
	<div class="col-lg-8">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-file-text"></i> متن ایمیل</h3>
                            </div>
                            <div class="panel-body"><div class="col-lg-12">

                        <form role="form">

                            

                            

                            

                            

                            <div class="form-group">
                              
                                <textarea rows="9" class="form-control"></textarea>
                            </div>

                            

                            

                            

                            

                            

                            


                            <button type="save" class="btn btn-default">ذخیره به عنوان پیشنویس</button>
<button type="submit" class="btn btn-default">ارسال</button>


                        </form>

                    </div>
                                
                                
                            </div>
                        </div>
                    </div>
<div class="col-lg-4">
  <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-pencil-square-o"></i> پیش نویس ها </h3>
                            </div>
                            <div class="panel-body">
    <div class="form-group">
                               
                             <ul class="list-group">
      <li class="list-group-item">
        <span style="background-color: rgb(221, 80, 80); border-radius: 2px;" class="badge red">-</span>پیش نویس 1</li>
      <li class="list-group-item">
        <span style="background-color: rgb(221, 80, 80); border-radius: 2px;" class="badge red">-</span>پیش نویس 2</li>
      <li class="list-group-item">
        <span style="background-color: rgb(221, 80, 80); border-radius: 2px;" class="badge red">-</span>پیش نویس 3</li>
     <li class="list-group-item">
        <span style="background-color: rgb(221, 80, 80); border-radius: 2px;" class="badge red">-</span>پیش نویس 4</li>
     <li class="list-group-item">
        <span style="background-color: rgb(221, 80, 80); border-radius: 2px;" class="badge red">-</span>پیش نویس 5</li>
     <li class="list-group-item">
        <span style="background-color: rgb(221, 80, 80); border-radius: 2px;" class="badge red">-</span>پیش نویس 6</li>
    
	</ul>
                            </div>
</div>
   </div>
                        </div>
					
					
					
					
					
					
					
					
					
					
					
				
				</div>
                <!-- /.row -->

          
            </div>
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

