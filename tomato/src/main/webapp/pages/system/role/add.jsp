<%--
  Created by IntelliJ IDEA.
  User: zjh
  Date: 2019/10/2
  Time: 18:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<head>
    <title>Tomato Admin</title>
    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="${pageContext.request.contextPath}/static/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="${pageContext.request.contextPath}/static/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="${pageContext.request.contextPath}/static/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/static/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/static/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>


    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    角色表
                </div>

                <div class="panel-body">
                    <form id="userAdd" action="${pageContext.request.contextPath}/system/role/add.do" method="post">
                            <div class="form-group">
                                <label>角色名称</label>
                                <input name="roleName"  class="form-control" placeholder="昵称" style="width: 30%;"></p>
                            </div>
                            <div class="form-group">
                                <label>角色权限字符串</label>
                                <input name="roleKey"  class="form-control" placeholder="用户名" style="width: 30%;">
                            </div>
                        <div class="form-group">
                            <label>排序</label>
                            <input name="roleSort"  class="form-control" placeholder="排序" style="width: 30%;">
                        </div>

                            <div class="form-group">
                                <label>状态</label>
                                <select class="form-control" name="status" style="width: 30%;">
                                    <option value="0">开启</option>
                                    <option value="1">停用</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>备注</label>
                                <textarea name="remark" class="form-control" rows="3" style="width: 60%;"></textarea>
                            </div>
                            <input type="button" value="确认" onclick="page_close()" />
                    </form>
                </div>
            </div>
        </div>
    </div>

<script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });

    function page_close() {
        $("#userAdd").submit();
        window.close();
    }
</script>







<!-- jQuery -->
<script src="${pageContext.request.contextPath}/static/vendor/jquery/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}/static/vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="${pageContext.request.contextPath}/static/vendor/metisMenu/metisMenu.min.js"></script>

<!-- DataTables JavaScript -->
<script src="${pageContext.request.contextPath}/static/vendor/datatables/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/static/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/vendor/datatables-responsive/dataTables.responsive.js"></script>

<!-- Custom Theme JavaScript -->
<script src="${pageContext.request.contextPath}/static/dist/js/sb-admin-2.js"></script>

<!-- Page-Level Demo Scripts - Tables - Use for reference -->

</body>
</html>

