<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    	<li><a href="#">��������</a></li>
        <li>���ټ�¼</li>
    </ul>
</div>
<form class="form-inline" action="track.do?likeName" method="post">
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >

     <div class="form-group">
         <label class="" for="activename">ѧԱ������</label>
        <input type="text"  name="name" class="form-control" id="activename" placeholder="������ѧԱ����">
      </div>
    <div class="form-group">
         <label class="" for="activename">ѧԱ����</label>
		 <select name="dictionory.id" class="form-control input-sm">
		      <option value="">----��ѡ��----</option>
         	<c:forEach items="${dictionoryList}" var="d">
    			<option value="${d.id}">${d.context}</option>
    		</c:forEach>
         	</select>	
      </div>
    <input type="submit"   class="btn btn-danger"     value="��ѯ"/>
    <a  class="btn btn-success"  href="track.do?getStudent">��Ӽ�¼</a>
  </div>
<div class="row" style="padding:15px; padding-top:0px; ">
	<table class="table  table-condensed table-striped">
    	<tr>
        	<th>���</th>
            <th>����</th>
            <th>����</th>
            <th>����</th>
            <th>����״̬</th>
            <th>������</th>
            <th>��ϵʱ��</th>
            <th>�´���ϵʱ��</th>
            <th>����</th>
        </tr>
        <c:forEach items="${track_List}" var="t">
       	<tr>
        	<td>${t.recode_id}</td>
            <td>${t.recode_title}</td>
            <td>${t.student.name}</td>
            <td>${t.recode_content}</td>
            <td>${t.dictionory.context}</td>
            <td>${t.student.staff.name}</td>
            <td><f:formatDate value="${t.recode_time}"/></td>
             <td><f:formatDate value="${t.recode_ntime}"/></td>
            <th>
            <a href="track.do?getById&id=${t.recode_id}">�޸�</a> 
            <a href="track.do?delete&id=${t.recode_id}">ɾ��</a>
            </th>
        </tr>
      </c:forEach>
    </table>
</div>
</form>
</body>
</html>
