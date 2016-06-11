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
        <li>��������</li>
    </ul>
</div>
<form class="form-inline" action="student.do?Name_Date" method="post">
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >

     <div class="form-group">
         <label class="" for="activename">ѧԱ������</label>
        <input type="text" name="sname" class="form-control" id="activename" placeholder="������ѧԱ����">
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
    <a  class="btn btn-success"  href="student.do?getDicory">���ѧԱ</a>
    
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
      
           <c:forEach items="${find_XS}" var="f">
         	<tr>
        	<td>${f.id}</td>
            <td>${f.name}</td>
            <td>${f.sex}</td>
            <td>${f.age}</td>
            <td>${f.phone}</td>
            <td>${f.email}</td>
            <td>${f.school}</td>
            <th>
            <a href="student.do?getByIdStu&id=${f.id}">�޸�</a>  
            <a href="student.do?deleteStudent&id=${f.id}">ɾ��</a>
            </th>
        </tr>  
        </c:forEach>  	                                
    </table>
</div>
</form>
</body>
</html>
