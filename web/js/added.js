$(document).ready(function () {
    $(".line").each(function () {
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
            '<input type="number" class="form-control" name="personnel-phone-" placeholder="تلفن">' +
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
            '<input type="number" class="form-control" name="expense-value-" placeholder="هزینه">' +
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
            '<input type="number" class="form-control" name="enlisted-studentId-" placeholder="شماره دانشجویی">' +
            '</div>' +
            '<div class="form-group col-xs-2">' +
            '<input type="number" class="form-control" name="enlisted-phone-" placeholder="تلفن همراه">' +
            '</div>' +
            '<div class="form-group col-xs-3">' +
            '<input type="email" class="form-control" name="enlisted-email-" placeholder="ایمیل">' +
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

$(document).ready(function () {
    $(".disabled").find("input").attr("disabled", "disabled");
});

$(document).ready(function () {
    $("form").submit(function () {
//            $("#test").click(function(){
        var tables = document.getElementsByClassName("plan-table");
        for (var t = 0; t < tables.length; t++) {
            var rows = tables[t].children;
            for (var i = 0; i < rows.length; i++) {
                var row = rows[i];
                var inputs = row.children;
                for (var j = 0; j < inputs.length - 1; j++) {
                    var inpu = inputs[j];
                    var inpufield = inpu.children[0];
                    inpufield.setAttribute("name", inpufield.getAttribute("name") + i);
                }
            }
        }
    });
});


$(document).ready(function () {
    $(".btn-planStateHistories").each(function () {
        $(this).click(function () {
            $.ajax({
                url: "/Controller/ServletShowChanges",
                type: "post",
                data: {"id": $(this).attr("id")},
                dataType: "json",
                success: function (changes) {
                    alert("success");
                    $("#changes").html("");
                    for (var i = 0; i < changes.length; i++) {
                        var text;
                        if (changes[i].json == null) {
                            text = '<tr><td>' + changes[i].fieldName + '</td>' +
                                '<td>' + changes[i].modifiedFrom + '</td>' +
                                '<td>' + changes[i].modifiedTo + '</td></tr>';
                        } else if (changes[i].json == 'expenses') {
                            text = expensesChange(changes[i]);
                        } else if (changes[i].json == 'personnel') {
                            text = personnelChange(changes[i]);
                        } else if (changes[i].json == 'enlisted') {
                            text = enlistedChange(changes[i]);
                        } else if (changes[i].json == 'guests') {
                            text = guestsChange(changes[i]);
                        } else if (changes[i].json == 'judges') {
                            text = judgesChange(changes[i]);
                        }
                        $("#changes").append(text);
                    }
                }
            });
        });
    });
});

function expensesChange(changes){
    var text;
    if (changes.modifiedFrom == "") {
        var jsonModifiedTo = changes.modifiedTo;
        var expenses = JSON.parse(jsonModifiedTo);
        text = '<tr><td>' + changes.fieldName + '</td>' +
            '<td>' + changes.modifiedFrom + '</td><td>';
        for (var j = 0; j < expenses.length; j++) {
            text += '<p>' + expenses[j].name + ' - ' + expenses[j].value +
                ' - ' + expenses[j].comment + '</p>';
        }
    }else if (changes.modifiedTo == ""){
        var jsonModifiedFrom = changes.modifiedFrom;
        var expenses = JSON.parse(jsonModifiedFrom);
        text = '<tr><td>' + changes.fieldName + '</td><td>';
        for (var j = 0; j < expenses.length; j++) {
            text += '<p>' + expenses[j].name + ' - ' + expenses[j].value +
                ' - ' + expenses[j].comment + '</p>';
        }
        text += '</td><td>' + changes.modifiedTo;
    } else {
        var jsonModifiedFrom = changes.modifiedFrom;
        var jsonModifiedTo = changes.modifiedTo;
        var expenses = JSON.parse(jsonModifiedFrom);
        var expenses1 = JSON.parse(jsonModifiedTo);
        text = '<tr><td>' + changes.fieldName + '</td><td>';
        for (var j = 0; j < expenses.length; j++) {
            text += '<p>' + expenses[j].name + ' - ' + expenses[j].value +
                ' - ' + expenses[j].comment + '</p>';
        }
        text += '</td><td>';
        for (var j = 0; j < expenses1.length; j++) {
            text += '<p>' + expenses1[j].name + ' - ' + expenses1[j].value +
                ' - ' + expenses1[j].comment + '</p>';
        }
    }
    text += '</td></tr>';
    return text;
}

function personnelChange(changes){
    var text;
    if (changes.modifiedFrom == "") {
        var jsonModifiedTo = changes.modifiedTo;
        var modifiedTo = JSON.parse(jsonModifiedTo);
        text = '<tr><td>' + changes.fieldName + '</td>' +
            '<td>' + changes.modifiedFrom + '</td><td>';
        for (var j = 0; j < modifiedTo.length; j++) {
            text += '<p>' + modifiedTo[j].fName + ' - ' + modifiedTo[j].lName +
                ' - ' + modifiedTo[j].phone + '</p>';
        }
    }else if (changes.modifiedTo == ""){
        var jsonModifiedFrom = changes.modifiedFrom;
        var modifiedFrom = JSON.parse(jsonModifiedFrom);
        text = '<tr><td>' + changes.fieldName + '</td><td>';
        for (var j = 0; j < modifiedFrom.length; j++) {
            text += '<p>' + modifiedFrom[j].fName + ' - ' + modifiedFrom[j].vallNameue +
                ' - ' + modifiedFrom[j].phone + '</p>';
        }
        text += '</td><td>' + changes.modifiedTo;
    } else {
        var jsonModifiedFrom = changes.modifiedFrom;
        var jsonModifiedTo = changes.modifiedTo;
        var modifiedFrom = JSON.parse(jsonModifiedFrom);
        var modifiedTo = JSON.parse(jsonModifiedTo);
        text = '<tr><td>' + changes.fieldName + '</td><td>';
        for (var j = 0; j < modifiedFrom.length; j++) {
            text += '<p>' + modifiedFrom[j].fName + ' - ' + modifiedFrom[j].lName +
                ' - ' + modifiedFrom[j].phone + '</p>';
        }
        text += '</td><td>';
        for (var j = 0; j < modifiedTo.length; j++) {
            text += '<p>' + modifiedTo[j].fName + ' - ' + modifiedTo[j].lName +
                ' - ' + modifiedTo[j].phone + '</p>';
        }
    }
    text += '</td></tr>';
    return text;
}

function enlistedChange(changes){
    var text;
    if (changes.modifiedFrom == "") {
        var jsonModifiedTo = changes.modifiedTo;
        var modifiedTo = JSON.parse(jsonModifiedTo);
        text = '<tr><td>' + changes.fieldName + '</td>' +
            '<td>' + changes.modifiedFrom + '</td><td>';
        for (var j = 0; j < modifiedTo.length; j++) {
            text += '<p>' + modifiedTo[j].fName + ' - ' + modifiedTo[j].lName + ' - ' +
                modifiedTo[j].studentId + ' - ' + modifiedTo[j].phone +
                ' - ' + modifiedTo[j].email + '</p>';
        }
    }else if (changes.modifiedTo == ""){
        var jsonModifiedFrom = changes.modifiedFrom;
        var modifiedFrom = JSON.parse(jsonModifiedFrom);
        text = '<tr><td>' + changes.fieldName + '</td><td>';
        for (var j = 0; j < modifiedFrom.length; j++) {
            text += '<p>' + modifiedFrom[j].fName + ' - ' + modifiedFrom[j].lName + ' - ' +
                modifiedFrom[j].studentId + ' - ' + modifiedTo[j].phone +
                ' - ' + modifiedFrom[j].email + '</p>';
        }
        text += '</td><td>' + changes.modifiedTo;
    } else {
        var jsonModifiedFrom = changes.modifiedFrom;
        var jsonModifiedTo = changes.modifiedTo;
        var modifiedFrom = JSON.parse(jsonModifiedFrom);
        var modifiedTo = JSON.parse(jsonModifiedTo);
        text = '<tr><td>' + changes.fieldName + '</td><td>';
        for (var j = 0; j < modifiedFrom.length; j++) {
            text += '<p>' + modifiedFrom[j].fName + ' - ' + modifiedFrom[j].lName + ' - ' +
                modifiedFrom[j].studentId + ' - ' + modifiedTo[j].phone +
                ' - ' + modifiedFrom[j].email + '</p>';
        }
        text += '</td><td>';
        for (var j = 0; j < modifiedTo.length; j++) {
            text += '<p>' + modifiedTo[j].fName + ' - ' + modifiedTo[j].lName + ' - ' +
                modifiedTo[j].studentId + ' - ' + modifiedTo[j].phone +
                ' - ' + modifiedTo[j].email + '</p>';
        }
    }
    text += '</td></tr>';
    return text;
}

function guestsChange(changes){
    var text;
    if (changes.modifiedFrom == "") {
        var jsonModifiedTo = changes.modifiedTo;
        var modifiedTo = JSON.parse(jsonModifiedTo);
        text = '<tr><td>' + changes.fieldName + '</td>' +
            '<td>' + changes.modifiedFrom + '</td><td>';
        for (var j = 0; j < modifiedTo.length; j++) {
            text += '<p>' + modifiedTo[j].fName + ' - ' + modifiedTo[j].lName + '</p>';
        }
    }else if (changes.modifiedTo == ""){
        var jsonModifiedFrom = changes.modifiedFrom;
        var modifiedFrom = JSON.parse(jsonModifiedFrom);
        text = '<tr><td>' + changes.fieldName + '</td><td>';
        for (var j = 0; j < modifiedFrom.length; j++) {
            text += '<p>' + modifiedFrom[j].fName + ' - ' + modifiedFrom[j].lName + '</p>';
        }
        text += '</td><td>' + changes.modifiedTo;
    } else {
        var jsonModifiedFrom = changes.modifiedFrom;
        var jsonModifiedTo = changes.modifiedTo;
        var modifiedFrom = JSON.parse(jsonModifiedFrom);
        var modifiedTo = JSON.parse(jsonModifiedTo);
        text = '<tr><td>' + changes.fieldName + '</td><td>';
        for (var j = 0; j < modifiedFrom.length; j++) {
            text += '<p>' + modifiedFrom[j].fName + ' - ' + modifiedFrom[j].lName + '</p>';
        }
        text += '</td><td>';
        for (var j = 0; j < modifiedTo.length; j++) {
            text += '<p>' + modifiedTo[j].fName + ' - ' + modifiedTo[j].lName + '</p>';
        }
    }
    text += '</td></tr>';
    return text;
}

function judgesChange(changes){
    var text;
    if (changes.modifiedFrom == "") {
        var jsonModifiedTo = changes.modifiedTo;
        var modifiedTo = JSON.parse(jsonModifiedTo);
        text = '<tr><td>' + changes.fieldName + '</td>' +
            '<td>' + changes.modifiedFrom + '</td><td>';
        for (var j = 0; j < modifiedTo.length; j++) {
            text += '<p>' + modifiedTo[j].fName + ' - ' + modifiedTo[j].lName +
                modifiedTo[j].fieldOfStudy + ' - ' + modifiedTo[j].grade + '</p>';
        }
    }else if (changes.modifiedTo == ""){
        var jsonModifiedFrom = changes.modifiedFrom;
        var modifiedFrom = JSON.parse(jsonModifiedFrom);
        text = '<tr><td>' + changes.fieldName + '</td><td>';
        for (var j = 0; j < modifiedFrom.length; j++) {
            text += '<p>' + modifiedFrom[j].fName + ' - ' + modifiedFrom[j].lName +
                modifiedFrom[j].fieldOfStudy + ' - ' + modifiedTo[j].grade + '</p>';
        }
        text += '</td><td>' + changes.modifiedTo;
    } else {
        var jsonModifiedFrom = changes.modifiedFrom;
        var jsonModifiedTo = changes.modifiedTo;
        var modifiedFrom = JSON.parse(jsonModifiedFrom);
        var modifiedTo = JSON.parse(jsonModifiedTo);
        text = '<tr><td>' + changes.fieldName + '</td><td>';
        for (var j = 0; j < modifiedFrom.length; j++) {
            text += '<p>' + modifiedFrom[j].fName + ' - ' + modifiedFrom[j].lName +
                modifiedFrom[j].fieldOfStudy + ' - ' + modifiedTo[j].grade + '</p>';
        }
        text += '</td><td>';
        for (var j = 0; j < modifiedTo.length; j++) {
            text += '<p>' + modifiedTo[j].fName + ' - ' + modifiedTo[j].lName +
                modifiedTo[j].fieldOfStudy + ' - ' + modifiedTo[j].grade + '</p>';
        }
    }
    text += '</td></tr>';
    return text;
}

$(document).ready(function () {
    calculateExpenses();
    calculateIncome();
    calculateMoneySum();

    $("#studentMoney, #sponsorMoney, #otherIncome").change(function () {
        calculateIncome();
    });

    $("[name='expense-value-']").change(function () {
        calculateExpenses();
    });

    $("#studentMoney, #sponsorMoney, #otherIncome, [name='expense-value-']").change(function () {
        calculateMoneySum();
    });
});

function calculateIncome(){
    var sum = Number($("#studentMoney").val()) + Number($("#sponsorMoney").val()) +
        Number($("#otherIncome").val());
    $("#incomeSum").val(sum);
}

function calculateExpenses(){
    var sum = 0;
    var expenses = $("[name='expense-value-']");
    for (var i = 0; i < expenses.length; i++) {
        sum += Number(expenses[i].value);
    }
    $("#expenseSum").val(sum);
}

function calculateMoneySum(){
    var sum = Number($("#incomeSum").val()) - Number($("#expenseSum").val());
    $("#moneySum").val(sum);
}

$(document).ready(function () {
    $(".usage").persianDatepicker();
    $(".pdp").persianDatepicker({
        formatDate: "YYYY/0M/0D",
        startDay: "today",
        cellWidth: 28,
        cellHeight: 24,
        fontSize: 12,
    });
});

