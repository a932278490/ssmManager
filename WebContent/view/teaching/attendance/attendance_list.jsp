<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    	<li><a href="#">�������</a></li>
        <li>���ڹ���</li>
    </ul>
</div>
<form class="form-inline" action="attend.do?findByName" method="post">
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >

     <div class="form-group">
         <label class="" for="activename">����</label>
        <input type="text" name="name" class="form-control" id="activename" placeholder="����������">
      </div>

    <input type="submit"   class="btn btn-danger"     value="��ѯ"/>
    <a  class="btn btn-success"  href="attend.do?getStudent">��ӿ���</a>
    
</div>
<div class="row" style="padding:15px; padding-top:0px; ">

 
    <ds:table name="${attendanceList}" pagesize="3" export="true" class="table  table-condensed table-striped">
    	<ds:column title="���" property="aid" sortable="true"></ds:column>
    	<ds:column title="ѧԱ����" property="student.name"></ds:column>
    	<ds:column title="״̬" property="state"></ds:column>
    	<ds:column title="����" property="time" format="{0,date,yyyy-MM-dd}"></ds:column>
    	<ds:column title="����" property="desc"></ds:column>
    	<ds:column title="�鿴" href="attend.do?findById&id" paramId="id" paramProperty="aid">�޸�</ds:column>
    	<ds:column title="ɾ��" href="attend.do?delete&id" paramId="id" paramProperty="aid">ɾ��</ds:column>
    
    </ds:table>
</div>
</form>
</body>
</html>
