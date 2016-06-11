<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ds" uri="http://displaytag.sf.net" %>
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
        <li>��ѯѧԱ</li>
    </ul>
</div>
<form class="form-inline" action="student.do?byname" method="post">
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >

     <div class="form-group">
         <label class="" for="activename">ѧԱ������</label>
        <input type="text" class="form-control" name="sname" id="activename" placeholder="������ѧԱ����">
      </div>
    <input type="submit"   class="btn btn-danger"     value="��ѯ"/>
    <a  class="btn btn-success"  href="student.do?getDictionory">���ѧԱ</a>
</div>

<ds:table name="${stu_list}" pagesize="3" export="true" class="table  table-condensed table-striped">
	<ds:column title="���" property="id"></ds:column>
	<ds:column title="����" property="name"></ds:column>
	<ds:column title="�Ա�" property="sex"></ds:column>
	<ds:column title="����" property="age"></ds:column>
	<ds:column title="�ֻ�����" property="phone"></ds:column>
	<ds:column title="�����ʼ�" property="email"></ds:column>
	<ds:column title="����ԺУ" property="school"></ds:column>
	<ds:column title="����" href="student.do?byid&id" paramId="id" paramProperty="id">�޸�</ds:column>
	<ds:column title="����" href="student.do?delete&id" paramId="id" paramProperty="id">ɾ��</ds:column>
</ds:table>

</form>
</body>
</html>
