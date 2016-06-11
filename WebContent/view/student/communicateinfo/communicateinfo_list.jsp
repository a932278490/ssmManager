<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <li>ѧԱ��ͨ��¼</li>
    </ul>
</div>
<form class="form-inline" action="communicate.do?byname" method="post">
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >

     <div class="form-group">
         <label class="" for="activename">ѧԱ������</label>
        <input type="text" name="name" class="form-control" id="activename" placeholder="������ѧԱ����">
      </div>

    <input type="submit"   class="btn btn-danger"     value="��ѯ"/>
    <a  class="btn btn-success"  href="communicate.do?getStudent">��ӹ�ͨ��¼</a>
    
</div>


<ds:table name="${communicate_list}" pagesize="3" export="true" class="table  table-condensed table-striped">
	<ds:column title="���" property="id"></ds:column>
	<ds:column title="ѧԱ����" property="student.name"></ds:column>
	<ds:column title="������" property="staff.name"></ds:column>
	<ds:column title="��ͨ����" property="content"></ds:column>
	<ds:column title="��ͨʱ��" property="comtime" format="{0,date,yyyy-MM-dd}"></ds:column>
	<ds:column title="����" href="communicate.do?byid&id" paramId="id" paramProperty="id">�޸�</ds:column>
	<ds:column title="����" href="communicate.do?delete&id" paramId="id" paramProperty="id">ɾ��</ds:column>
</ds:table>

</form>
</body>
</html>
