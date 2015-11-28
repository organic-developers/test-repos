/**
 * Created by Saied on 11/8/2015.
 */

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