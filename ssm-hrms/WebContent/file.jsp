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
                        <li><a href="#">资料</a></li>
                        <li class="active">资料上传与下载</li>
                    </ol>
                </div>

	<form action="upload" enctype="multipart/form-data" method="post">
		<input  type="file" name="file"/>
		<input type="submit" value="文件上传"/>
	</form>

	<div>
		<table style="font-size: 20">
		<c:forEach items="${list}" var="a">
		<tr>
			<td><a style="color:black;text-decoration: none"  href="files/${a}">${a}</a></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td><a  href="files/${a}" download="${a}">下载</a></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td><a  href="delete?fileName=${a}">删除</a></td>
		</tr>
		</c:forEach>
		</table>
	</div>
	</div>
	</div>
	</div>
	</div>
	<!-- 尾部 -->
        <%@ include file="./commom/foot.jsp"%>
</body>
</html>