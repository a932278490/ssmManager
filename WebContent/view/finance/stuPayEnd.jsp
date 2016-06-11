<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>ѧ���ɷ���Ϣ</title>
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
					<a href="#">�������</a>
				</li>

				<li>
					�鿴ѧԱ
				</li>
			</ul>
		</div>

		<form action="" class="form-horizontal">
			<div class="row">
				<div class="col-sm-9">

					<a class="btn btn-warning" href="stupay.do?findstu">������һ��</a>
				</div>
			</div>
			<div align="center">
				<div class="alert alert-warning"
					style="margin: 0px; padding: 5px; width: 80%; display: block">
					<button type="button" class="close" data-dismiss="alert">
						<span aria-hidden="true">&times;</span>

					</button>
					<p align="center" style="color: red;">
						�ɷѳɹ�
					</p>
				</div>
			</div>
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
								${thisstu.id}
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
								${thisstu.name}
							</p>

						</div>
					</div>
				</div>
			</div>
			<!--��ʼ -->
			<div class="row">
				<div class="col-sm-5">
					<div class="form-group">
						<label class="col-sm-3 control-label">
							�Ա�
						</label>
						<div class="col-sm-4">
							<p class="form-control-static">
								${thisstu.sex}
							</p>

						</div>
					</div>
				</div>
				<div class="col-sm-5">
					<div class="form-group">
						<label class="col-sm-3 control-label">
							����
						</label>
						<div class="col-sm-5">
							<p class="form-control-static">
								${thisstu.age}
							</p>
						</div>
					</div>
				</div>
			</div>
			<!--���� -->
			<!--��ʼ -->
			<div class="row">
				<div class="col-sm-5">
					<div class="form-group">
						<label class="col-sm-3 control-label">
							�ֻ�����
						</label>
						<div class="col-sm-9">
							<p class="form-control-static">
								${thisstu.phone}
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-5">
					<div class="form-group">
						<label class="col-sm-3 control-label">
							�����ʼ�
						</label>
						<div class="col-sm-9">
							<p class="form-control-static">
								${thisstu.email}
							</p>
						</div>
					</div>
				</div>
			</div>
			<!--���� -->
			<!--��ʼ -->
			<div class="row">
				<div class="col-sm-5">
					<div class="form-group">
						<label class="col-sm-3 control-label">
							���֤
						</label>
						<div class="col-sm-9">
							<p class="form-control-static">
								${thisstu.idcard}
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-5">
					<div class="form-group">
						<label class="col-sm-3 control-label">
							��ͥ��ַ
						</label>
						<div class="col-sm-9">
							<p class="form-control-static">
								${thisstu.address}
							</p>
						</div>
					</div>
				</div>
			</div>
			<!--���� -->
			<!--��ʼ -->
			<div class="row">
				<div class="col-sm-5">
					<div class="form-group">
						<label class="col-sm-3 control-label">
							��������
						</label>
						<div class="col-sm-9">
							<p class="form-control-static">
								<f:formatDate value="${thisstu.birthday}"/>
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-5">
					<div class="form-group">
						<label class="col-sm-3 control-label">
							����ԺУ
						</label>
						<div class="col-sm-9">
							<p class="form-control-static">
								${thisstu.school}
							</p>
						</div>
					</div>
				</div>
			</div>
			<!--���� -->
			<!--��ʼ -->
			<div class="row">
				<div class="col-sm-5">
					<div class="form-group">
						<label class="col-sm-3 control-label">
							QQ����
						</label>
						<div class="col-sm-9">
							<p class="form-control-static">
								${thisstu.qq}
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-5">
					<div class="form-group">
						<label class="col-sm-3 control-label">
							�ҳ�����
						</label>
						<div class="col-sm-9">
							<p class="form-control-static">
								${thisstu.parentname}
							</p>
						</div>
					</div>
				</div>
			</div>
			<!--���� -->
			<!--��ʼ -->
			<div class="row">
				<div class="col-sm-5">
					<div class="form-group">
						<label class="col-sm-3 control-label">
							ʡ��
						</label>
						<div class="col-sm-9">
							<p class="form-control-static">
								${thisstu.province}
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-5">
					<div class="form-group">
						<label class="col-sm-3 control-label">
							�ҳ��绰
						</label>
						<div class="col-sm-9">
							<p class="form-control-static">
								${thisstu.parentphone}
							</p>
						</div>
					</div>
				</div>
			</div>
			<!--���� -->
			<!--��ʼ -->
			<div class="row">
				<div class="col-sm-5">
					<div class="form-group">
						<label class="col-sm-3 control-label">
							����
						</label>
						<div class="col-sm-9">
							<p class="form-control-static">
								${thisstu.city}
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-5">
					<div class="form-group">
						<label class="col-sm-3 control-label">
							����״̬
						</label>
						<div class="col-sm-6">
							<p class="form-control-static">
								${thisstu.dictionory.context}
							</p>

						</div>
					</div>
				</div>
			</div>
			<!--���� -->
			<h5 class="page-header alert-info"
				style="padding: 10px; margin: 0px; margin-bottom: 5px;">
				������Ϣ
			</h5>
			<div class="row">
				<div class="col-sm-10">
					<div class="form-group">
						<label class="col-sm-3 control-label">
							�ɷ���Ϣ
						</label>
						<div class="col-sm-9">
							<p class="form-control-static">

								δ�������

							</p>

						</div>
					</div>

				</div>

			</div>

			<h5 class="page-header alert-info"
				style="padding: 10px; margin: 0px; margin-bottom: 5px;">
				�ɷ���Ϣ
			</h5>
			<div class="row">
				<div class="col-sm-12">
					<table class="table">
						<tr>
							<th>
								ѧԱ����
							</th>
							<th>
								�ɷ����
							</th>
							<th>
								�ɷ�ʱ��
							</th>
							<th>
								Ӧ�����
							</th>
							<th>
								�Żݽ��
							</th>
							<th>
								ʵ�����
							</th>
							<th>
								Ƿ��
							</th>
						</tr>
					<c:forEach items="${thisStupay}" var="stupay">
						<tr>
							<td>
								${stupay.student.name}
							</td>
							<td>
								${stupay.situatic}
							</td>
							<td>
								<f:formatDate value="${stupay.time}"/>
							</td>
							<td>
								${stupay.should}
							</td>
							<td>
								${stupay.disamount}
							</td>
							<td>
								${stupay.real}
							</td>
							<td>
								${stupay.debt}
							</td>
						</tr>
					</c:forEach>
					</table>

				</div>
			</div>
			<div class="row">
				<div class="col-sm-9 ">
					<a class="btn btn-warning" href="stupay.do?findstu">������һ��</a>
				</div>
			</div>
		</form>

	</body>
</html>