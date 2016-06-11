<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		<title>��ҳ</title>
		<!-- �� Bootstrap ���� CSS �ļ� -->
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<!-- jQuery�ļ��������bootstrap.min.js ֮ǰ���� -->
		<script src="js/jquery.min.js">
</script>
		<!-- ���µ� Bootstrap ���� JavaScript �ļ� -->
		<script src="js/bootstrap.min.js">
</script>
<script type="text/javascript">
	$(function(){
		$("#sel").click(function(){
			var com=$("#con").val();
			if("1"==com){
				$("#context").attr("name","sname");
			}else if("2"==com){
				$("#context").attr("name","sex");
			}
			$("#con_from").submit();
		});
	})
</script>
	</head>
      
	<body>
		<div style="padding: 0px; margin: 0px;">
			<ul class="breadcrumb" style="margin: 0px;">
				<li>
					<a href="#">ϵͳ����</a>
				</li>
				<li>
					Ա������
				</li>
			</ul>
		</div>
		<div class="row alert alert-info" style="margin: 0px; padding: 3px;">
			<form action="staff.do?likefind" method="post" id="con_from" class="form-horizontal">
				<div class="col-sm-1">
					����:
				</div>
				<div class="col-sm-3">
					<select id="con" class="form-control  input-sm" >
						<option value="1">
							����
						</option>
						<option value="2">
							�Ա�
						</option>
					</select>
				</div>
				<div class="col-sm-3">
					<input type="text" id="context" class="form-control input-sm" name=""/>
				</div>
				<input type="button" id="sel" class="btn btn-danger" value="��ѯ"/>
				<input type="button" class="btn btn-success" value="���"
					onClick="javascript:window.location='view/system/staffinfo/staffinfo_add.jsp'" />
			</form>
		</div>
		<div class="row" style="padding: 15px; padding-top: 0px;">
			<table class="table  table-condensed table-striped">
				<tr>
					<th>
						Ա�����
					</th>
					<th>
						Ա������
					</th>
					<th>
						Ա���Ա�
					</th>
					<th>
						Ա������
					</th>
					<th>
						�绰����
					</th>
					<th>
						QQ
					</th>
					<th>
						��ְʱ��
					</th>
					<th>
						����
					</th>
				</tr>
				<c:forEach items="${staffList}" var="s">
				<tr>
					<td>
						<a href="staffinfo_show.html">${s.sid}</a>
					</td>
					<td>
						${s.name}
					</td>
					<td>
						${s.sex}
					</td>
					<td>
						${s.age}
					</td>
					<td>
						${s.phone}
					</td>
					<td>
						${s.qq}
					</td>
					<td>
					<f:formatDate value="${s.hiredate}"/>	
					</td>
					<td>
						<a href="staff.do?byid&id=${s.sid}">�޸�</a>
						<a href="staff.do?delete&id=${s.sid}">ɾ��</a>
					</td>
				</tr>
				</c:forEach>
			</table>
		</div>

	</body>
</html>
