<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="ds" uri="http://displaytag.sf.net"%>
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
        <li>���Ź���</li>
    </ul>
</div>
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >
<form class="form-horizontal" method="post" action="msg.do?findByTel">
	<div class="col-sm-2">�绰����:</div>
    <div class="col-sm-3">
    	<input type="text" name="tel"  class="form-control input-sm"/>
    </div>
    <input type="submit"   class="btn btn-danger"     value="��ѯ"/>
    <a  class="btn btn-success"  href="msg.do?getTem" >���Ͷ���</a>
    </form>
</div>
<div class="row" style="padding:15px; padding-top:0px; ">
	
    <ds:table name="${msg_list}" export="true" pagesize="5" class="table  table-condensed table-striped">
    	<ds:column title="���" property="id"></ds:column>
    	<ds:column title="������" property="staff.name"></ds:column>
    	<ds:column title="��������" property="msgContent"></ds:column>
    	<ds:column title="����ʱ��" property="postTime" format="{0,date,yyyy-MM-dd}"></ds:column>
    	<ds:column title="������" property="receiveMan"></ds:column>
    	<ds:column title="���պ���" property="receivePhone"></ds:column>
    	<ds:column title="����" href="msg.do?findById&id" paramId="id" paramProperty="id">�޸�</ds:column>
    	<ds:column title="����" href="msg.do?delete&id" paramId="id" paramProperty="id">ɾ��</ds:column>
    </ds:table>
    
</div>

</body>
</html>
