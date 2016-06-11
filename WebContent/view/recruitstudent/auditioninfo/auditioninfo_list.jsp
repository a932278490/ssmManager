<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
<head>
 <base href="<%=basePath%>">
<meta charset="gbk">
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>��ҳ</title>
<!-- �� Bootstrap ���� CSS �ļ� -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- jQuery�ļ��������bootstrap.min.js ֮ǰ���� -->
<script src="js/jquery.min.js"></script>
<!-- ���µ� Bootstrap ���� JavaScript �ļ� -->
<script src="js/bootstrap.min.js"></script>

<body>
<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li><a href="#">��������</a></li>
        <li>������¼</li>
    </ul>
</div>
<form class="form-inline" action="audition.do?likeName" method="post">
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >

     <div class="form-group">
         <label class="" for="activename">ѧԱ������</label>
        <input type="text"  name="name" class="form-control" id="activename" placeholder="������ѧԱ����">
      </div>
    <div class="form-group">
         <label class="" for="activename">�����γ̣�</label>
		   <input type="text" name="couse" class="form-control" id="activename" placeholder="�����������γ�">	
      </div>
    <input type="submit"   class="btn btn-danger"   value="��ѯ"/>
    <a  class="btn btn-success"  href="audition.do?getStudent">��Ӽ�¼</a>
    
</div>
<div class="row" style="padding:15px; padding-top:0px; ">
	<table class="table  table-condensed table-striped">
    	<tr>
        	<th>���</th>
            <th>����</th>
            <th>�����γ�</th>
            <th>����ʱ��</th>
            <th>�ص�</th>
            <th>����</th>
        </tr>
        <c:forEach items="${audition_List}" var="a">
       	<tr>
        	<td>${a.audition_id}</td>
            <td>${a.student.name}</td>
            <td>${a.audition_course}</td>
         <td> <f:formatDate value="${a.audition_time}"/></td>
            <td>${a.audition_address}</td>
            <th>
           
            <a href="audition.do?getById&id=${a.audition_id}">�޸�</a> 
            <a href="audition.do?delete&id=${a.audition_id}">ɾ��</a>
            </th>
        </tr>
      </c:forEach>
    </table>
</div>
</form>
</body>
</html>
