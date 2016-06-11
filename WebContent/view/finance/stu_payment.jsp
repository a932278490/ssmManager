<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>Ӫ���</title>
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
					��ѯѧԱ
				</li>
			</ul>
		</div>
		<form action="stupay.do?getByCon" method="post"
			class="form-inline">
			<div class="row alert alert-info" style="margin: 0px; padding: 3px;">

				<div class="form-group">
					<label class="" for="activename">
						ѧԱ������
					</label>
					<input type="text" name="studentName" class="form-control"
						id="activename" placeholder="������ѧԱ����">
				</div>
				<div class="form-group">
					<label class="" for="activename">
						ѧԱ����״̬��
					</label>
					<select name='studentSate' class='form-control  input-sm'>
						<option value=''>
							��ѡ��
						</option>
						<c:forEach items="${intention}" var="in">
							<option value='${in.id}'>
								${in.context}
							</option>
						</c:forEach>
					</select>
				</div>
				<input type="submit" class="btn btn-danger" value="��ѯ" />

			</div>
			<div align="center">
				<div class="alert alert-warning"
					style="margin: 0px; padding: 5px; width: 80%; display: none">
					<button type="button" class="close" data-dismiss="alert">
						<span aria-hidden="true">&times;</span>

					</button>
					<p align="center" style="color: red;"></p>
				</div>
			</div>
			<div class="row" style="padding: 15px; padding-top: 0px;"
				align="right">

				<table class="table table-condensed table-striped">
					<thead>
						<tr>
							<th>
								���
							</th>
							<th>
								����
							</th>
							<th>
								�Ա�
							</th>
							<th>
								����
							</th>
							<th>
								�ֻ�����
							</th>
							<th>
								�����ʼ�
							</th>
							<th>
								����ԺУ
							</th>
							<th>
								ѧԱ�ɷ�
							</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${stulist}" var="stu">
						<tr class="odd">
							<td>
								${stu.id}
							</td>
							<td>
								<a href="stupay.do?getstuinfo&sid=${stu.id}">${stu.name}</a>
							</td>
							<td>
								${stu.sex}
							</td>
							<td>
								${stu.age}
							</td>
							<td>
								${stu.phone}
							</td>
							<td>
								${stu.email}
							</td>
							<td>
								${stu.school}
							</td>
							<td>
								<c:choose>
									<c:when test="${stu.ispay=='��'}">
										<a href="stupay.do?getstu&sid=${stu.id}">ѧԱ�ɷ�</a>
									</c:when>
									<c:otherwise>
										<a href="stupay.do?getstuinfo&sid=${stu.id}">�鿴��¼</a>
									</c:otherwise>
								</c:choose>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				<span class="pagebanner">�ܹ�_����¼.</span><span class="pagelinks">��_ҳ</span>
			</div>
		</form>
	</body>
</html>
