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
        <li>ѧ����Ϣ</li>
    </ul>
</div>
<form action="subject.do?byName" class="form-inline" method="post">
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >

     <div class="form-group">
         <label class="" for="activename">ѧ�����ƣ�</label>
        <input type="text" name="name" class="form-control" id="activename" placeholder="������">
      </div>

    <input type="submit"   class="btn btn-danger"     value="��ѯ"/>
    <a  class="btn btn-success"  href="view/classinfo/disciplineinfo/disciplineinfo_add.jsp">���ѧ����Ϣ</a>
    
</div>
<div class="row" style="padding:15px; padding-top:0px; ">
	<table class="table  table-condensed table-striped">
    	<tr>
        	<th>���</th>
            <th>ѧ������</th>
            <th>ѧ�Ʒ���</th>
            <th>ѧ�ƿ�ʱ</th>

            <th>����</th>
        </tr>
       	    	
        <c:forEach items="${subjectList}" var="s">
          	
        <tr>
        	<td>${s.id }</td>
            <td>${s.name }</td>
            <td>${s.money }</td>
            <td>${s.hour }</td>

            <th>
            <a href="subject.do?byId&id=${s.id }">�޸�</a> 
            <a href="subject.do?delete&id=${s.id }">ɾ��</a>
            </th>
        </tr>

     	</c:forEach>                   
    </table>
</div>
</form>
</body>
</html>
