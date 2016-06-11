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
    	<li><a href="#">�༶����</a></li>
        <li>�γ̱�</li>
    </ul>
</div>
<form action="schedule.do?byName" method="post" class="form-inline">
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >

     <div class="form-group">
         <label class="" for="activename">�γ̱����ƣ�</label>
        <input type="text" name="name" class="form-control" id="activename" placeholder="������γ̱�����">
      </div>

    <input type="submit"   class="btn btn-danger"     value="��ѯ"/>
    <a  class="btn btn-success"  href="view/classinfo/syllabusinfo/syllabusinfo_add.jsp">��ӿγ̱�</a>
    
</div>
<div class="row" style="padding:15px; padding-top:0px; ">
${schedule_list}
	<table class="table  table-condensed table-striped">
    	<tr>
        	<th>���</th>
            <th>�γ̱�����</th>
            <th>����һ</th>
            <th>���ڶ�</th>
            <th>������</th>
            <th>������</th>
            <th>������</th>
            <th>������</th>
            <th>������</th>
            <th>����</th>
        </tr>
        <c:forEach items="${schedule_list}" var="s">
        
       	<tr>
        	<td>${s.id }</td>
            <td>${s.name }</td>
            <td>${s.yi }</td>
            <td>${s.er }</td>
            <td>${s.san }</td>
            <td>${s.si }</td>
            <td>${s.wu }</td>
            <td>${s.liu }</td>
            <td>${s.qi }</td>
            <th>
            <a href="schedule.do?byId&id=${s.id }">�޸�</a> 
            <a href="schedule.do?delete&id=${s.id }">ɾ��</a>
            </th>
        </tr>   
        </c:forEach>             
     	                   
    </table>
</div>
</form>
</body>
</html>
