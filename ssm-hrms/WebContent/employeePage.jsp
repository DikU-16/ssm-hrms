<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>员工管理页面</title>
    
	<link rel="stylesheet" href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css"></link>
	<script type="text/javascript" src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
</head>
<body>
<div class="hrms_container">
    <!-- 导航条 -->
    <%@ include file="./commom/head.jsp"%>

    <!-- 中间部分（包括左边栏和员工/部门表单显示部分） -->
    <div class="hrms_body" style="position:relative; top:-15px;">

        <!-- 左侧栏 -->
        <%@ include file="./commom/leftsidebar.jsp"%>

        <!-- 中间员工表格信息展示内容 -->
        <div class="emp_info col-sm-10">

            <div class="panel panel-success">
                <!-- 路径导航 -->
                <div class="panel-heading">
                    <ol class="breadcrumb">
                        <li><a href="#">员工管理</a></li>
                        <li class="active">员工信息</li>
                    </ol>
                </div>
                <div class="row">
                		<div class="col-md-4 clo-md-offset-8">
                			<button class="glyphicon glyphicon-remove btn btn-danger" id="emp_delete_all_btn">选择删除</button>
                		</div>
                </div>
                <!-- Table -->
                <table class="table table-bordered table-hover" id="emp_table">
                    <thead>
                    <tr>
                    <th><input type="checkbox" id="check_all"/></th>
                    <th>员工编号</th>
                    <th>员工姓名</th>
                    <th>邮箱</th>
                    <th>性别</th>
                    <th>部门</th>
                    <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${pageInfo.list}" var="emp">
                            <tr>
                            	<td><input type="checkbox" class="check_item"/></td>
                                <td>${emp.empId}</td>
                                <td>${emp.empName}</td>
                                <td>${emp.empEmail}</td>
                                <td>${emp.gender == "F"? "女": "男"}</td>
                                <td>${emp.department.deptName}</td>
                                <td>
                                    <a href="#" role="button" class="glyphicon glyphicon-pencil  btn btn-primary emp_edit_btn" data-toggle="modal" data-target=".emp-update-modal">编辑</a>
                                    <a href="#" role="button" class="glyphicon glyphicon-remove  btn btn-danger emp_delete_btn">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

                <!--4.分页 -->
		<div class="row">
			<!-- 分页文字信息 -->
			 <div class="col-md-6">
  &nbsp;&nbsp;当前第<span class="badge">${pageInfo.pageNum}</span>页，总共<span class="badge">${pageInfo.pages}</span>页，总记录数<span class="badge">${pageInfo.total }</span>条。
              </div>
			<!-- 分页条信息 -->
			<div class="col-md-6">
				<nav aria-label="...">
					<ul class="pagination">
						<li><a href="emps?pn=1">首页</a></li>
						<!-- 如果是首页则禁止点击前一页 -->
						<c:if test="${pageInfo.isFirstPage }">
							<li class="disabled"><a href="#" aria-label="Previous"><span
									aria-hidden="true">&laquo;</span></a></li>
						</c:if>
						<c:if test="${!pageInfo.isFirstPage }">
							<li><a href="emps?pn=${pageInfo.prePage}"
								aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
						</c:if>

						<!-- 显示连续的页面并使得当前页面为高亮 -->
						<c:forEach items="${pageInfo.navigatepageNums }" var="pageNum">
							<c:if test="${pageNum==pageInfo.pageNum }">
								<li class="active"><a href="#">${pageNum }</a></li>
							</c:if>
							<c:if test="${pageNum!=pageInfo.pageNum }">
								<li><a href="emps?pn=${pageNum}">${pageNum }</a></li>
							</c:if>
						</c:forEach>
						<!-- 如果是末页则禁止点击后一页 -->
						<c:if test="${pageInfo.isLastPage }">
							<li class="disabled"><a href="#" aria-label="Next"><span
									aria-hidden="true">&raquo;</span></a></li>
						</c:if>
						<c:if test="${!pageInfo.isLastPage }">
							<li><a href="emps?pn=${pageInfo.nextPage}"
								aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
						</c:if>
						<li><a href="emps?pn=${pageInfo.pages}">末页</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
            </div><!-- /.panel panel-success -->
        </div><!-- /.emp_info -->

        <!-- 尾部 -->
        <%@ include file="./commom/foot.jsp"%>
    </div><!-- /.hrms_body -->
</div><!-- /.container -->

<%@ include file="employeeAdd.jsp"%>
<%@ include file="employeeUpdate.jsp"%>


<script>
  /* ==========================员工删除操作=================================== */
    $(".emp_delete_btn").click(function () {
    	var curPage = ${pageInfo.pageNum};
    	var delEmpId = $(this).parent().parent().find("td:eq(1)").text();
        var delEmpName = $(this).parent().parent().find("td:eq(2)").text();
        if (confirm("确认删除【" + delEmpName+ "】的信息吗？")){
            $.ajax({
                url:"deleteEmp/"+delEmpId,
                type:"DELETE",
                success:function (result) {
                    if (result.code == 100){
                        alert("删除成功！");
                        window.location.href="emps?pn="+curPage;
                    }else {
                        alert(result.extendInfo.emp_del_error);
                    }
                }
            });
        }
    });
  
  //完成全选全不选功能
  $("#check_all").click(function() {
	$(".check_item").prop("checked",$(this).prop("checked"));
});
  
  $(document).on("click",".check_item",function(){
	 var flag= $(".check_item:checked").length==$(".check_item").length;
	 $("#check_all").prop("checked",flag);
  });
  
  
  //点击全部删除，就执行批量删除操作
  $("#emp_delete_all_btn").click(function() {
	  var curPage = ${pageInfo.pageNum};
	  var empNames="";
	  var delEmpIds="";
	$.each($(".check_item:checked"),function(){
		empNames+=$(this).parents("tr").find("td:eq(2)").text()+",";
		delEmpIds+=$(this).parents("tr").find("td:eq(1)").text()+"-";
	});
	//去除多余的,-
	empNames.substring(0,empNames.length-1);
	delEmpIds.substring(0,delEmpIds.length-1);
	if(confirm("确认删除【"+empNames+"】吗？")){
		//发送ajax请求
		$.ajax({
            url:"deleteEmp/"+delEmpIds,
            type:"DELETE",
            success:function (result) {
                if (result.code == 100){
                    alert("删除成功！");
                    window.location.href="emps?pn="+curPage;
                }else {
                    alert("删除失败");
                }
            }
        });
	}
})
  
</script>
</body>
</html>
