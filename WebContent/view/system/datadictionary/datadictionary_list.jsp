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
<link rel="stylesheet" href="../../../css/bootstrap.min.css">
<!-- jQuery�ļ��������bootstrap.min.js ֮ǰ���� -->
<script src="../../../js/jquery.min.js"></script>
<!-- ���µ� Bootstrap ���� JavaScript �ļ� -->
<script src="../../../js/bootstrap.min.js"></script>
</head>

<body>
<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li><a href="#">ϵͳ����</a></li>
        <li>�����ֵ�</li>
    </ul>
</div>
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >
<form class="form-horizontal">
	<div class="col-sm-2">����:</div>
    <div class="col-sm-3">
    	<input type="text"  class="form-control input-sm"/>
    </div>
    <input type="button"   class="btn btn-danger"     value="��ѯ"/>
    <a  class="btn btn-success"  href="datadictionary_add.html"   >���</a>
    </form>
</div>
<div class="row" style="padding:15px; padding-top:0px; ">
	<table class="table  table-condensed table-striped">
    	<tr>
        	<th>���</th>
            <th>����</th>
            <th>����</th>
            <th>����</th>
            <th>����</th>
        </tr>
       	<tr>
        	<td>1001</td>
            <td>����</td>
            <td>Ԥ�ڷ�Ӧ</td>
            <td>����</td>
            <th><a href="datadictionary_update.html">�޸�</a> <a href="">ɾ��</a></th>
        </tr>
            	<tr>
        	<td>1001</td>
            <td>����</td>
            <td>Ԥ�ڷ�Ӧ</td>
            <td>����</td>
            <th><a href="datadictionary_update.html">�޸�</a> <a href="">ɾ��</a></th>
        </tr>       	<tr>
        	<td>1001</td>
            <td>����</td>
            <td>Ԥ�ڷ�Ӧ</td>
            <td>����</td>
            <th><a href="datadictionary_update.html">�޸�</a> <a href="">ɾ��</a></th>
        </tr>       	<tr>
        	<td>1001</td>
            <td>����</td>
            <td>Ԥ�ڷ�Ӧ</td>
            <td>����</td>
            <th><a href="datadictionary_update.html">�޸�</a> <a href="">ɾ��</a></th>
        </tr>     
    </table>
</div>

</body>
</html>
