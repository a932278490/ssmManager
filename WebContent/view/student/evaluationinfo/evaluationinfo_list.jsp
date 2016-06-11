<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="ds" uri="http://displaytag.sf.net" %>
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
    	<li><a href="#">ѧԱ����</a></li>
        <li>ѧԱ����</li>
    </ul>
</div>
<form class="form-inline" action="evaluation.do?bytitle" method="post">
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >

     <div class="form-group">
         <label class="" for="activename">���⣺</label>
        <input type="text" class="form-control" id="activename" name="title" placeholder="����������">
      </div>

    <input type="submit"   class="btn btn-danger"     value="��ѯ"/>
    <a  class="btn btn-success"  href="evaluation.do?getStudent">�������</a>
</div>

<ds:table name="${evaluation_list}" pagesize="3" export="true" class="table  table-condensed table-striped">
	<ds:column title="���" property="id"></ds:column>
	<ds:column title="ѧԱ����" property="student.name"></ds:column>
	<ds:column title="����" property="title"></ds:column>
	<ds:column title="��������" property="content"></ds:column>
	<ds:column title="�γ�����" property="course"></ds:column>
	<ds:column title="��ʦ" property="teacher"></ds:column>
	<ds:column title="����" href="evaluation.do?byid&id" paramId="id" paramProperty="id">�޸�</ds:column>
	<ds:column title="����" href="evaluation.do?delete&id" paramId="id" paramProperty="id">ɾ��</ds:column>
</ds:table>
</form>
</body>
</html>
