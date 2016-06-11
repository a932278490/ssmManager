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
<title>首页</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="js/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="js/bootstrap.min.js"></script>

<body>
<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li><a href="#">招生管理</a></li>
        <li>试听记录</li>
    </ul>
</div>
<form class="form-inline" action="audition.do?likeName" method="post">
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >

     <div class="form-group">
         <label class="" for="activename">学员姓名：</label>
        <input type="text"  name="name" class="form-control" id="activename" placeholder="请输入学员姓名">
      </div>
    <div class="form-group">
         <label class="" for="activename">试听课程：</label>
		   <input type="text" name="couse" class="form-control" id="activename" placeholder="请输入试听课程">	
      </div>
    <input type="submit"   class="btn btn-danger"   value="查询"/>
    <a  class="btn btn-success"  href="audition.do?getStudent">添加纪录</a>
    
</div>
<div class="row" style="padding:15px; padding-top:0px; ">
	<table class="table  table-condensed table-striped">
    	<tr>
        	<th>编号</th>
            <th>姓名</th>
            <th>试听课程</th>
            <th>试听时间</th>
            <th>地点</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${audition_List}" var="a">
       	<tr>
        	<td>${a.audition_id}</td>
            <td>${a.student.name}</td>
            <td>${a.audition_course}</td>
         <td> <f:formatDate value="${a.audition_time}"/></td>
            <td>${a.audition_address}</td>
            <th>
           
            <a href="audition.do?getById&id=${a.audition_id}">修改</a> 
            <a href="audition.do?delete&id=${a.audition_id}">删除</a>
            </th>
        </tr>
      </c:forEach>
    </table>
</div>
</form>
</body>
</html>
