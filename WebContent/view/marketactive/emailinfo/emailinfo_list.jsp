<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s"  uri="http://java.sun.com/jsp/jstl/fmt"%>
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
    	<li>Ӫ������--></li>
        <li>�ʼ�����</li>
    </ul>
</div>
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >
<form class="form-horizontal" action="ema.do?findTitle" method="post">
	<div class="col-sm-2">����:</div>
    <div class="col-sm-3">
    	<input type="text" name="title" class="form-control input-sm"/>
    </div>
    <input type="submit"   class="btn btn-danger"     value="��ѯ"/>
    <a  class="btn btn-success"  href="ema.do?getTem" >�����ʼ�</a>
    </form>
</div>
<div class="row" style="padding:15px; padding-top:0px; ">
	<table class="table  table-condensed table-striped">
    	<tr>
        	<th>���</th>
            <th>����</th>
            <th>������</th>
            <th>����ʱ��</th>
            <th>������</th>
            <th>���յ�ַ</th>
            <th>����</th>
        </tr>
        <c:forEach items="${email_list}" var="e">
       	<tr>
        	<td>${e.id }</td>
            <td>${e.title }</td>
            <td>${e.staff.name }</td>
            <td><s:formatDate value="${e.postTime }"/></td>
            <td>${e.receiveMan }</td>
            <td>${e.receiveAddress }</td>
            <th><a href="ema.do?findById&id=${e.id }">�鿴</a> <a href="ema.do?delete&id=${e.id }">ɾ��</a></th>
        </tr>
		</c:forEach>
       	   	
    </table>
</div>

</body>
</html>
