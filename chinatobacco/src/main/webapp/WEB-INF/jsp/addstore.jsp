<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'add.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<c:import url="common.jsp"></c:import>
<link rel="stylesheet" type="text/css" href="css/input.css">
<script src="js/pcc.js"></script>
</head>
<body>
	<c:import url="navuser.jsp"></c:import>
	<center>
		<form class="form-horizontal from" action="addSave.do">
			<h1>添加商户</h1>
			<div class="form-group d1">
				<label for="inputEmail3" class="col-sm-2 control-label">等级编号</label>
				<div class="col-sm-10">
					<select class="form-control address" id="lvid" name="lvid"></select>
				</div>
			</div>
			<div class="form-group d1">
				<label for="inputPassword3" class="col-sm-2 control-label">密码</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="inputPassword3"
						placeholder="请输入你的密码">
				</div>
			</div>
			<div class="form-group d1">
				<label for="inputPassword3" class="col-sm-2 control-label">商户名称</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="inputPassword3"
						placeholder="请输入商户名称">
				</div>
			</div>

			<div class="form-group d1">
				<label for="inputPassword3" class="col-sm-2 control-label">住址</label>
				<div class="col-sm-10">
					<select class="form-control address" id="provincedId"
						name="provinceId" onchange="showCity(this.value)"></select> <select
						class="form-control address" id="cityID" name="cityId"
						onchange="showArea(this.value)"></select> <select
						class="form-control address" id="areaID" name="areaID"></select> <input
						type="text" class="form-control" id="inputPassword3"
						placeholder="请输入你的详细地址">
				</div>

			</div>


			<div class="form-group d1">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">提交</button>
					<button type="reset" class="btn btn-default">重置</button>
				</div>
			</div>
		</form>



	</center>
	<c:import url="foot.jsp"></c:import>
</body>
</html>
