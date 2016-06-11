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
<title>首页</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="js/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="js/bootstrap.min.js"></script>
</head>

<body>
<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li><a href="#">招生管理</a></li>
        <li>跟踪记录</li>
    </ul>
</div>
<form class="form-inline" action="track.do?likeName" method="post">
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >

     <div class="form-group">
         <label class="" for="activename">学员姓名：</label>
        <input type="text"  name="name" class="form-control" id="activename" placeholder="请输入学员姓名">
      </div>
    <div class="form-group">
         <label class="" for="activename">学员意向：</label>
		 <select name="dictionory.id" class="form-control input-sm">
		      <option value="">----请选择----</option>
         	<c:forEach items="${dictionoryList}" var="d">
    			<option value="${d.id}">${d.context}</option>
    		</c:forEach>
         	</select>	
      </div>
    <input type="submit"   class="btn btn-danger"     value="查询"/>
    <a  class="btn btn-success"  href="track.do?getStudent">添加纪录</a>
  </div>
<div class="row" style="padding:15px; padding-top:0px; ">
	<table class="table  table-condensed table-striped">
    	<tr>
        	<th>编号</th>
            <th>主题</th>
            <th>姓名</th>
            <th>内容</th>
            <th>意向状态</th>
            <th>负责人</th>
            <th>联系时间</th>
            <th>下次联系时间</th>
            <th>操作</th>
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
            <a href="track.do?getById&id=${t.recode_id}">修改</a> 
            <a href="track.do?delete&id=${t.recode_id}">删除</a>
            </th>
        </tr>
      </c:forEach>
    </table>
</div>
</form>
</body>
</html>
