<%--
  Created by IntelliJ IDEA.
  User: Saied
  Date: 10/13/2015
  Time: 8:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<!-- .row -->
<div class="row planStateHistories">
    <div class="col-sm-10 col-sm-offset-1">
        <!-- .panel -->
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-calendar"></i> رویداد ها</h3>
            </div>
            <div class="panel-body">
                <!-- .table -->
                <div class="table-responsive">
                    <table class="table table-bordered table-hover table-striped">
                        <thead>
                        <tr>
                            <th>تاریخ</th>
                            <th>کاربر</th>
                            <th>رویداد</th>
                            <th>تغییرات</th>
                            <%--<th style="display: none;">id</th>--%>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="planStateHistory" items="${plan.planStateHistories}">
                            <tr>
                                <td>${planStateHistory.timestamp}</td>
                                <td>${planStateHistory.user.position.name}</td>
                                <c:choose>
                                    <c:when test="${planStateHistory.name != null}">
                                        <td>${planStateHistory.name}</td>
                                        <td></td>
                                    </c:when>
                                    <c:when test="${planStateHistory.name == null}">
                                        <td>${planStateHistory.workflowState.name}</td>
                                        <td>
                                            <button class="btn btn-primary btn-planStateHistories"
                                                    id="${planStateHistory.id}"
                                                    data-toggle="modal" data-target="#changesModal">مشاهده
                                            </button>
                                        </td>
                                    </c:when>
                                </c:choose>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <!-- /.table -->
            </div>
        </div>
        <!-- /.panel -->
    </div>
</div>
<!-- /.row -->

<!-- Modal - changes -->
<div class="modal fade" id="changesModal" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"></h4>
                <br/>
            </div>
            <div class="modal-body">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-calendar"></i> تغییرات</h3>
                    </div>
                    <div class="panel-body">
                        <!-- .table -->
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover table-striped">
                                <thead>
                                <tr>
                                    <th>نام فیلد</th>
                                    <th>از</th>
                                    <th>به</th>
                                </tr>
                                </thead>
                                <tbody id="changes">
                                </tbody>
                            </table>
                        </div>
                        <!-- /.table -->
                    </div>
                </div>
                <!-- /.panel -->
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<!-- /.Modal -->

</body>
</html>
