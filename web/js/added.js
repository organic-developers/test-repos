        $(document).ready(function () {
            $(".line").each(function(){
                $(this).click(function () {
                    $(this).siblings(".row, .glyphicon-plus").slideToggle();
                });
            })
            $("#personnel-plus").click(function () {
                var i = $(".personnel-table .table-row").length;
                var x = '<div class="table-row">' +
                        '<div class="form-group col-xs-3">' +
                        '<input type="text" class="form-control" name="personnel-fName-' + i + '" placeholder="نام">' +
                        '</div>' +
                        '<div class="form-group col-xs-4">' +
                        '<input type="text" class="form-control" name="personnel-lName-' + i + '" placeholder="نام خانوادگی">' +
                        '</div>' +
                        '<div class="form-group col-xs-4">' +
                        '<input type="text" class="form-control" name="personnel-phone-' + i + '" placeholder="تلفن">' +
                        '</div>' +
                        '<div class="form-group col-xs-1"><span class="glyphicon glyphicon-remove" ></span></div>' +
                        '</div>'
                $(".personnel-table").append(x);
                makeRemovable();
            });
            $("#expenses-plus").click(function () {
                var i = $(".expenses-table .table-row").length;
                var x = '<div class="table-row">' +
                        '<div class="form-group col-xs-2">' +
                        '<input type="text" class="form-control" name="expense-name-' + i + '" placeholder="عنوان">' +
                        '</div>' +
                        '<div class="form-group col-xs-2">' +
                        '<input type="text" class="form-control" name="expense-value-' + i + '" placeholder="هزینه">' +
                        '</div>' +
                        '<div class="form-group col-xs-7">' +
                        '<input type="text" class="form-control" name="expense-comment-' + i + '" placeholder="توضیحات">' +
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
                        '<input type="text" class="form-control" name="judge-fName-' + i + '" placeholder="نام">' +
                        '</div>' +
                        '<div class="form-group col-xs-3">' +
                        '<input type="text" class="form-control" name="judge-lName-' + i + '" placeholder="نام خانوادگی">' +
                        '</div>' +
                        '<div class="form-group col-xs-3">' +
                        '<input type="text" class="form-control" name="judge-fieldOfStudy-' + i + '" placeholder="گرایش تحصیلی">' +
                        '</div>' +
                        '<div class="form-group col-xs-3">' +
                        '<input type="text" class="form-control" name="judge-grade-' + i + '" placeholder="مدرک تحصیلی">' +
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
                        '<input type="text" class="form-control" name="enlisted-fName-' + i + '" placeholder="نام">' +
                        '</div>' +
                        '<div class="form-group col-xs-2">' +
                        '<input type="text" class="form-control" name="enlisted-lName-' + i + '" placeholder="نام خانوادگی">' +
                        '</div>' +
                        '<div class="form-group col-xs-2">' +
                        '<input type="text" class="form-control" name="enlisted-studentId-' + i + '" placeholder="شماره دانشجویی">' +
                        '</div>' +
                        '<div class="form-group col-xs-2">' +
                        '<input type="text" class="form-control" name="enlisted-phone-' + i + '" placeholder="تلفن همراه">' +
                        '</div>' +
                        '<div class="form-group col-xs-3">' +
                        '<input type="text" class="form-control" name="enlisted-email-' + i + '" placeholder="ایمیل">' +
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
                        '<input type="text" class="form-control" name="guest-fName-' + i + '" placeholder="نام">' +
                        '</div>' +
                        '<div class="form-group col-xs-3">' +
                        '<input type="text" class="form-control" name="guest-lName-' + i + '" placeholder="نام خانوادگی">' +
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
            $(".readonly").find("input").attr("readonly", "readonly");
        });