<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>部门管理页面</title>
    
    <link rel="stylesheet" href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css"></link>
	<script type="text/javascript" src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
    
</head>
<body>
<div class="hrms_dept_container">
    <!-- 导航栏-->
    <%@ include file="./commom/head.jsp"%>


    <!-- 中间部分（左侧栏+表格内容） -->
    <div class="hrms_dept_body">
        <!-- 左侧栏 -->
        <%@ include file="./commom/leftsidebar.jsp"%>

        <!-- 部门表格内容 -->
        <div class="dept_info col-sm-10">
            <div class="panel panel-success">
                <!-- 路径导航 -->
                <div class="panel-heading">
                    <ol class="breadcrumb">
                        <li><a href="#">部门管理</a></li>
                        <li class="active">部门信息</li>
                    </ol>
                </div>
                <!-- Table -->
                <table class="table table-bordered table-hover" id="dept_table">
                    <thead>
                        <th>部门编号</th>
                        <th>部门名称</th>
                        <th>部门老大</th>
                        <th>操作</th>
                    </thead>
                    <tbody>
                        <c:forEach items="${pagedeptInfo.list}" var="dept">
                            <tr>
                                <td>${dept.deptId}</td>
                                <td>${dept.deptName}</td>
                                <td>${dept.deptLeader}</td>
                                <td>
                                    <a href="#" role="button" class="glyphicon glyphicon-pencil btn btn-primary dept_edit_btn" data-toggle="modal" data-target=".dept-update-modal">编辑</a>
                                    <a href="#" role="button" class="glyphicon glyphicon-remove btn btn-danger dept_delete_btn">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

             <div class="row">
			<!-- 分页文字信息 -->
			 <div class="col-md-6">
  &nbsp;&nbsp;当前第<span class="badge">${pagedeptInfo.pageNum}</span>页，总共<span class="badge">${pagedeptInfo.pages}</span>页，总记录数<span class="badge">${pagedeptInfo.total }</span>条。
              </div>
			<!-- 分页条信息 -->
			<div class="col-md-6">
				<nav aria-label="...">
					<ul class="pagination">
						<li><a href="depts?pn=1">首页</a></li>
						<!-- 如果是首页则禁止点击前一页 -->
						<c:if test="${pagedeptInfo.isFirstPage }">
							<li class="disabled"><a href="#" aria-label="Previous"><span
									aria-hidden="true">&laquo;</span></a></li>
						</c:if>
						<c:if test="${!pagedeptInfo.isFirstPage }">
							<li><a href="depts?pn=${pagedeptInfo.prePage}"
								aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
						</c:if>

						<!-- 显示连续的页面并使得当前页面为高亮 -->
						<c:forEach items="${pagedeptInfo.navigatepageNums }" var="pageNum">
							<c:if test="${pageNum==pagedeptInfo.pageNum }">
								<li class="active"><a href="#">${pageNum }</a></li>
							</c:if>
							<c:if test="${pageNum!=pagedeptInfo.pageNum }">
								<li><a href="depts?pn=${pageNum}">${pageNum }</a></li>
							</c:if>
						</c:forEach>
						<!-- 如果是末页则禁止点击后一页 -->
						<c:if test="${pagedeptInfo.isLastPage }">
							<li class="disabled"><a href="#" aria-label="Next"><span
									aria-hidden="true">&raquo;</span></a></li>
						</c:if>
						<c:if test="${!pagedeptInfo.isLastPage }">
							<li><a href="depts?pn=${pagedeptInfo.nextPage}"
								aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
						</c:if>
						<li><a href="depts?pn=${pagedeptInfo.pages}">末页</a></li>
					</ul>
				</nav>
			</div>
		</div>
            </div><!-- /.panel panel-success -->
        </div><!-- /.dept_info -->
    </div><!-- /.hrms_dept_body -->

    <%@ include file="departmentAdd.jsp"%>
    <%@ include file="departmentUpdate.jsp"%>

    <!-- 尾部-->
    <%@ include file="./commom/foot.jsp"%>

</div><!-- /.hrms_dept_container -->

<script type="text/javascript">

    <!-- ==========================部门删除操作=================================== -->
    $(".dept_delete_btn").click(function () {
        var delDeptId = $(this).parent().parent().find("td:eq(0)").text();
        var delDeptName = $(this).parent().parent().find("td:eq(1)").text();
        var curPageNo = ${pagedeptInfo.pageNum};
        if (confirm("确认删除【"+ delDeptName +"】的信息吗？")){
            $.ajax({
                url:"delDept/"+delDeptId,
                type:"DELETE",
                success:function (result) {
                    if (result.code == 100){
                        alert("删除成功！");
                        window.location.href = "depts?pn="+curPageNo;
                    }else {
                        alert(result.extendInfo.del_dept_error);
                    }
                }
            });
        }
    });
</script>
</body>
</html>
