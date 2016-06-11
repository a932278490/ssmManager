<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <li>Ӫ���</li>
    </ul>
</div>
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >
<form class="form-inline" method="post" action="act.do?getact">
     <div class="form-group">
         <label class="" for="activename">����ƣ�</label>
        <input type="text" name="cname" class="form-control" id="activename" placeholder="����������">
      </div>
      <div class="form-group">
         <label class="" for="activstate">�״̬��</label>
		 <select  class="form-control" id="activstate" name="state">
            <option value="">�״̬</option>
            <c:forEach items="${state_list}" var="state">
            	<option value="${state.id}">${state.context }</option>
            </c:forEach>
         </select>	
      </div>
    <input type="submit"   class="btn btn-danger"     value="��ѯ"/>
    <a  class="btn btn-success"  href="act.do?getDic">��ӻ</a>
    </form>
</div>
<div class="row" style="padding:15px; padding-top:0px; ">

    <ds:table name="${act_list }" export="true" pagesize="3" class="table  table-condensed table-striped">
    	<ds:column title="���" property="id"></ds:column>
    	<ds:column title="�����" href="act.do?getShow&id" paramId="id" paramProperty="id" property="activeName"></ds:column>
    	<ds:column title="������" property="staff.name"></ds:column>
    	<ds:column title="��ʼʱ��" property="starDate" format="{0,date,yyyy-MM-dd}"></ds:column>
    	<ds:column title="����ʱ��" property="endDate" format="{0,date,yyyy-MM-dd}"></ds:column>
    	<ds:column title="�״̬" property="activeState.context"></ds:column>
    	<ds:column title="����" href="act.do?findById&id" paramId="id" paramProperty="id">�޸�</ds:column>
    	<ds:column title="����" href="act.do?delete&id" paramId="id" paramProperty="id">ɾ��</ds:column>
    
    </ds:table>
</div>

</body>
</html>
