<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>��ҳ</title>
		<!-- �� Bootstrap ���� CSS �ļ� -->
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<!-- jQuery�ļ��������bootstrap.min.js ֮ǰ���� -->
		<script src="js/jquery.min.js">
</script>
		<!-- ���µ� Bootstrap ���� JavaScript �ļ� -->
		<script src="js/bootstrap.min.js">
</script>
	</head>

	<body>
		<div style="padding: 0px; margin: 0px;">
			<ul class="breadcrumb" style="margin: 0px;">
				<li>
					<a href="#">ϵͳ����</a>
				</li>
				<li>
					��ɫ����
				</li>
				<li>
					��ɫ���
				</li>
			</ul>
		</div>

		<form action="role.do?saverole" method="post" class="form-horizontal">

			<h5 class="page-header alert-info"
				style="padding: 10px; margin: 0px; margin-bottom: 5px;">
				������Ϣ
			</h5>
			<div class="row">
				<div class="col-sm-5">
					<div class="form-group">
						<label class="col-sm-3 control-label">
							���
						</label>
						<div class="col-sm-9">
							<p class="form-control-static">
								${staffbyid.sid}
								<input type="hidden" name="sid" value="${staffbyid.sid}">
							</p>
						</div>
					</div>

				</div>
				<div class="col-sm-5">
					<div class="form-group">
						<label class="col-sm-3 control-label">
							����
						</label>
						<div class="col-sm-9">
							<p class="form-control-static">
								${staffbyid.name}
							</p>
						</div>
					</div>
				</div>

			</div>
			<!-- ��ʼ2 -->
			<div class="row">
				<div class="col-sm-5">
					<div class="form-group">
						<label class="col-sm-3 control-label">
							����
						</label>
						<div class="col-sm-5">
							<p class="form-control-static">
								${staffbyid.age}
							</p>
						</div>
					</div>

				</div>
				<div class="col-sm-5">
					<div class="form-group">
						<label class="col-sm-3 control-label">
							�Ա�
						</label>
						<div class="col-sm-4">
							<p class="form-control-static">
								${staffbyid.sex}
							</p>
						</div>
					</div>
				</div>
			</div>
			<!-- ����2 -->
			<!-- ��ʼ3 -->
			<div class="row">

				<div class="col-sm-5">
					<div class="form-group">
						<label class="col-sm-3 control-label">
							��ɫ
						</label>
						<div class="col-sm-6">
							<select class="form-control input-sm" name="roles.rid">
								<c:forEach items="${roleall}" var="ro">
									<option value="${ro.rid}">
										${ro.name}
									</option>
								</c:forEach>
							</select>
						</div>
					</div>
				</div>
			</div>
			<!-- ����3 -->
			<div class="row">
				<div class="col-sm-5 col-sm-offset-4">
					<input type="submit" class="btn btn-success" value="��ɫ���" />
					<a class="btn btn-warning">������һ��</a>

				</div>
			</div>
		</form>

	</body>
</html>
