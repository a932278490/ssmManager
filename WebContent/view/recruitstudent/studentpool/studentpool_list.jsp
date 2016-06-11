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
    	<li><a href="#">��������</a></li>
        <li>ѧԱ��</li>
    </ul>
</div>
<form class="form-inline" action="student.do?byname" method="post">
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >

     <div class="form-group">
         <label class="" for="activename">ѧԱ������</label>
        <input type="text" class="form-control" name="sname" id="activename" placeholder="������ѧԱ����">
      </div>

    <input type="submit"   class="btn btn-danger"     value="��ѯ"/>
    <a  class="btn btn-success"  href="student.do?getDic">���ѧԱ</a>
    
</div>
<div class="row" style="padding:15px; padding-top:0px; ">
	<table class="table  table-condensed table-striped">
    	<tr>
        	<th>���</th>
            <th>����</th>
            <th>�Ա�</th>
            <th>����</th>
            <th>�ֻ�����</th>
            <th>�����ʼ�</th>
            <th>����ԺУ</th>
            <th>����</th>
        </tr>
    
         <c:forEach items="${Stu_Pool}" var="stu">
         	<tr>
        	<td>${stu.id}</td>
            <td>${stu.name}</td>
            <td>${stu.sex}</td>
            <td>${stu.age}</td>
            <td>${stu.phone}</td>
            <td>${stu.email}</td>
            <td>${stu.school}</td>
            <th>
            <a href="student.do?getById1&id=${stu.id}">�޸�</a>  
            <a href="student.do?updateState&id=${stu.id}">��ȡѧԱ</a> 
            <a href="student.do?delete1&id=${stu.id}">ɾ��</a>
            </th>
        </tr>  
        </c:forEach>  	                   
    </table>
</div>
</form>
</body>
</html>
