<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script src="js/jquery.min.js"></script>
<!-- ���µ� Bootstrap ���� JavaScript �ļ� -->
<script src="js/bootstrap.min.js"></script>
</head>

<body>
<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li><a href="#">ϵͳ����</a></li>
        <li>��ɫ����</li>
    </ul>
</div>
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >
<form action="role.do?like" method="post" class="form-horizontal">
	<div class="col-sm-2">��ɫ����:</div>
    <div class="col-sm-3">
    	<input type="text"  class="form-control input-sm" name="sname"/>
    </div>
    <input type="submit"   class="btn btn-danger"   value="��ѯ"/>
    <input type="button"   class="btn btn-success"   value="���" onClick="javascript:window.location='view/system/roleinfo/roleinfo_add.jsp'"/>
    </form>
</div>
<div class="row" style="padding:15px; padding-top:0px; ">
	<table class="table  table-condensed table-striped">
    	<tr>
        	<th>��ɫ���</th>
            <th>��ɫ����</th>
            <th>��ɫ����</th>
             <th>����</th>
        </tr>
        <c:forEach items="${roleList}" var="r">
       	<tr>
        	<td>${r.rid}</td>
            <td>${r.name}</td>
            <td>${r.desc}</td>
            <th><a href="role.do?byid&id=${r.rid}">�޸�</a> <a href="role.do?delete&id=${r.rid}">ɾ��</a></th>
        </tr>
           </c:forEach>
    </table>
</div>

</body>
</html>
