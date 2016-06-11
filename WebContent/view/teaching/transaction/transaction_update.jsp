<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
	<head>
		<base href="<%=basePath%>">
		<meta charset="gbk">
		<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
		<title>��ҳ</title>
		<!-- �� Bootstrap ���� CSS �ļ� -->
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<!-- jQuery�ļ��������bootstrap.min.js ֮ǰ���� -->
		<script src="js/jquery.min.js">
</script>
		<!-- ���µ� Bootstrap ���� JavaScript �ļ� -->
		<script src="js/bootstrap.min.js">
</script>
	<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript">
	$(function(){
		$("[name=time]").click(function(){
			WdatePicker({
				highLinekWeekDay:true,
				dateFmt:'yyyy-MM-dd'
			})
		})
	})
	
	</script>
	</head>

	<body>

		<form action="trans.do?update" class="form-horizontal" method="post">

			<div style="padding: 0px; margin: 0px;">
				<ul class="breadcrumb" style="margin: 0px;">
					<li>
						<a href="#">�������</a>
					</li>
					<li>
						�޸�����
					</li>
				</ul>
			</div>
			<h5 class="page-header alert-info"
				style="padding: 10px; margin: 0px; margin-bottom: 5px;">
				������Ϣ
			</h5>
			<div class="row">
				<div class="col-xs-5">
					<div class="form-group">
						<label class="col-xs-3 control-label">
							���
						</label>
						<div class="col-xs-9">
							<input type="text" name="tid" class="form-control input-sm"
								placeholder="" readonly="readonly" value="${transaction.tid }" />
						</div>
					</div>

				</div>
				<div class="col-xs-5">
					<div class="form-group">
						<label class="col-xs-3 control-label">
							����
						</label>
						<div class="col-xs-9">
							<input type="text" name="title" class="form-control input-sm"
								placeholder="" value="${transaction.title}" />
						</div>
					</div>
				</div>

				<div class="col-xs-5">
					<div class="form-group">
						<label class="col-xs-3 control-label">
							��֯��
						</label>
						<div class="col-xs-9">
							<input type="text" name="organizition"
								class="form-control input-sm"
								value="${transaction.organizition }" />
						</div>
					</div>
				</div>

				<div class="col-xs-5">
					<div class="form-group">
						<label class="col-xs-3 control-label">
							�����
						</label>
						<div class="col-xs-9">
							<input type="text" name="time" class="form-control input-sm"
								value="<f:formatDate value='${transaction.time }'/>" />
						</div>
					</div>
				</div>
				<div class="col-sm-5">
					<div class="form-group">
						<label class="col-sm-3 control-label">
							��֯�༶
						</label>
						<div class="col-sm-9">
							<select name="classes.id" class="form-control input-sm">
								
								<c:forEach items="${classes}" var="cla">
									
									<option ${cla.id==transaction.classes.id ? 'selected':'' } value="${cla.id}">
										${cla.name}
									</option>

								</c:forEach>

							</select>
						</div>
					</div>

				</div>


			</div>

			<h5 class="page-header alert-info"
				style="padding: 10px; margin: 0px; margin-bottom: 5px;">
				��Ҫ����
			</h5>
			<div class="row">
				<div class="col-xs-10">
					<div class="form-group">
						<label class="col-xs-3 control-label">
							����
						</label>
						<div class="col-xs-9">
							<textarea class="form-control" name="content">${transaction.content }</textarea>
						</div>
					</div>

				</div>

			</div>

			<h5 class="page-header alert-info"
				style="padding: 10px; margin: 0px; margin-bottom: 5px;">
				��ע��Ϣ
			</h5>
			<div class="row">
				<div class="col-xs-10">
					<div class="form-group">
						<label class="col-xs-3 control-label">
							��ע��Ϣ
						</label>
						<div class="col-xs-9">
							<textarea class="form-control" name="desc">${transaction.desc }</textarea>
						</div>
					</div>

				</div>

			</div>
			<div class="row">
				<div class="col-sm-3 col-sm-offset-4">
					<input type="submit" class="btn btn-success" value="����" />
					<input type="reset" class="btn  btn-danger" value="������һ��" />
				</div>
			</div>
		</form>

	</body>
</html>