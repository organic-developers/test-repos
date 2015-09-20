        $(document).ready(function () {
            $(".line").each(function(){
                $(this).click(function () {
                    $(this).siblings(".row, .glyphicon-plus").slideToggle();
                });
            })
            $("#personnel-plus").click(function () {
                //var i = $(".personnel-table .table-row").length;
                var x = '<div class="table-row">' +
                        '<div class="form-group col-xs-3">' +
                        '<input type="text" class="form-control" name="personnel-fName-" placeholder="نام">' +
                        '</div>' +
                        '<div class="form-group col-xs-4">' +
                        '<input type="text" class="form-control" name="personnel-lName-" placeholder="نام خانوادگی">' +
                        '</div>' +
                        '<div class="form-group col-xs-4">' +
                        '<input type="text" class="form-control" name="personnel-phone-" placeholder="تلفن">' +
                        '</div>' +
                        '<div class="form-group col-xs-1"><span class="glyphicon glyphicon-remove" ></span></div>' +
                        '</div>'
                $(".personnel-table").append(x);
                makeRemovable();
            });
            $("#expenses-plus").click(function () {
                //var i = $(".expenses-table .table-row").length;
                var x = '<div class="table-row">' +
                        '<div class="form-group col-xs-2">' +
                        '<input type="text" class="form-control" name="expense-name-" placeholder="عنوان">' +
                        '</div>' +
                        '<div class="form-group col-xs-2">' +
                        '<input type="text" class="form-control" name="expense-value-" placeholder="هزینه">' +
                        '</div>' +
                        '<div class="form-group col-xs-7">' +
                        '<input type="text" class="form-control" name="expense-comment-" placeholder="توضیحات">' +
                        '</div>' +
                        '<div class="form-group col-xs-1"><span class="glyphicon glyphicon-remove" ></span></div>' +
                        '</div>'
                $(".expenses-table").append(x);
                makeRemovable();
            });
            $("#judge-plus").click(function () {
                var i = $(".judge-table .table-row").length;
                var x = '<div class="table-row">' +
                        '<div class="form-group col-xs-2">' +
                        '<input type="text" class="form-control" name="judge-fName-" placeholder="نام">' +
                        '</div>' +
                        '<div class="form-group col-xs-3">' +
                        '<input type="text" class="form-control" name="judge-lName-" placeholder="نام خانوادگی">' +
                        '</div>' +
                        '<div class="form-group col-xs-3">' +
                        '<input type="text" class="form-control" name="judge-fieldOfStudy-" placeholder="گرایش تحصیلی">' +
                        '</div>' +
                        '<div class="form-group col-xs-3">' +
                        '<input type="text" class="form-control" name="judge-grade-" placeholder="مدرک تحصیلی">' +
                        '</div>' +
                        '<div class="form-group col-xs-1"><span class="glyphicon glyphicon-remove" ></span></div>' +
                        '</div>'
                $(".judge-table").append(x);
                makeRemovable();
            });
            $("#enlisted-plus").click(function () {
                var i = $(".enlisted-table .table-row").length;
                var x = '<div class="table-row">' +
                        '<div class="form-group col-xs-2">' +
                        '<input type="text" class="form-control" name="enlisted-fName-" placeholder="نام">' +
                        '</div>' +
                        '<div class="form-group col-xs-2">' +
                        '<input type="text" class="form-control" name="enlisted-lName-" placeholder="نام خانوادگی">' +
                        '</div>' +
                        '<div class="form-group col-xs-2">' +
                        '<input type="text" class="form-control" name="enlisted-studentId-" placeholder="شماره دانشجویی">' +
                        '</div>' +
                        '<div class="form-group col-xs-2">' +
                        '<input type="text" class="form-control" name="enlisted-phone-" placeholder="تلفن همراه">' +
                        '</div>' +
                        '<div class="form-group col-xs-3">' +
                        '<input type="text" class="form-control" name="enlisted-email-" placeholder="ایمیل">' +
                        '</div>' +
                        '<div class="form-group col-xs-1"><span class="glyphicon glyphicon-remove" ></span></div>' +
                        '</div>'
                $(".enlisted-table").append(x);
                makeRemovable();
            });
            $("#guest-plus").click(function () {
                var i = $(".guest-table .table-row").length;
                var x = '<div class="table-row">' +
                        '<div class="form-group col-xs-2">' +
                        '<input type="text" class="form-control" name="guest-fName-" placeholder="نام">' +
                        '</div>' +
                        '<div class="form-group col-xs-3">' +
                        '<input type="text" class="form-control" name="guest-lName-" placeholder="نام خانوادگی">' +
                        '</div>' +
                        '<div class="form-group col-xs-1"><span class="glyphicon glyphicon-remove" ></span></div>' +
                        '</div>'
                $(".guest-table").append(x);
                makeRemovable();
            });

            makeRemovable();
        });
        function makeRemovable() {
            $(".form-group .glyphicon-remove").each(function () {
                $(this).click(function () {
                    $(this).parents(".table-row").remove();
                    rename();
                });
            });
        }
        function rename() {
        }

        $(document).ready(function(){
            $(".disabled").find("input").attr("disabled", "disabled");
        });

        $(document).ready(function(){
            $("form").submit(function(){
//            $("#test").click(function(){
                var tables = document.getElementsByClassName("plan-table");
                for (var t = 0; t < tables.length; t++){
                    var rows = tables[t].children;
                    for (var i = 0; i < rows.length; i++){
                        var row = rows[i];
                        var inputs = row.children;
                        for(var j = 0; j < inputs.length-1; j++){
                            var inpu = inputs[j];
                            var inpufield = inpu.children[0];
                            inpufield.setAttribute("name", inpufield.getAttribute("name") + i);
                        }
                    }
                }
            });
        });