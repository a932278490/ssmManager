<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<title>����</title>
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
					Ա��нˮ
				</li>
			</ul>
		</div>
		<form action="stasal.do?findstasal" method="post" class="form-inline">
			<div class="row alert alert-info" style="margin: 0px; padding: 3px;">

				<div class="form-group">
					<label class="" for="staffName">
						Ա��������
					</label>
					<input type="text" class="form-control" name="staffName"
						id="staffName" placeholder="������Ա������">
				</div>

				<input type="submit" class="btn btn-danger" value="��ѯ" />
				<a class="btn btn-success" href="stasal.do?savebefore">���Ա��нˮ��¼</a>

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
								��ȡ��
							</th>
							<th>
								������Ա
							</th>
							<th>
								����нˮ
							</th>
							<th>
								�۳�
							</th>
							<th>
								ʵ�ʷ���нˮ
							</th>
							<th>
								��ȡ����
							</th>
							<th>
								��ע��Ϣ
							</th>
							<th>
								�Ƿ���ȡ
							</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${sallist}" var="sal" varStatus="status">
						<tr class="odd">
							<td>
								${sal.staid.name}
							</td>
							<td>
								${sal.stasid.name}
							</td>
							<td>
								${sal.totsal}
							</td>
							<td>
								${sal.desal}
							</td>
							<td>
								${sal.resal}
							</td>
							<td>
								<f:formatDate value="${sal.saldate}"/>
							</td>
							<td>
								${sal.remark}
							</td>
							<td>
								<c:choose>
									<c:when test="${sal.isused=='��' }">
										����ȡ
									</c:when>
									<c:otherwise>
										<a href='stasal.do?receive&salid=${sal.ssid}'>��ȡ����</a>
									</c:otherwise>
								</c:choose>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				<span class="pagebanner">�ܹ�_����¼.</span><span class="pagelinks">��ҳ</span>
			</div>

		</form>




	</body>
</html>