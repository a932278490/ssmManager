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
        <li>Ȩ�ޱ��</li>
    </ul>
</div>
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >
<form class="form-horizontal" action="anthorty.do?findRoleByName" method="post">
	<div class="col-sm-2">��ɫ����:</div>
    <div class="col-sm-3">
    	<input type="text" name="name" class="form-control input-sm"/>
    </div>
    <input type="submit" class="btn btn-danger" value="��ѯ"/>

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
        	<td>${r.rid }</td>
            <td>${r.name }</td>
            <td>${r.desc }</td>
            <th><a href="anthorty_change.html">Ȩ�ޱ��</a></th>
        </tr>       
        </c:forEach>
    </table>
</div>

</body>
</html>
