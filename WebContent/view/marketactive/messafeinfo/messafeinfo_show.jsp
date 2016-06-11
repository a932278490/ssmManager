<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s"  uri="http://java.sun.com/jsp/jstl/fmt"%>
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
        <li>���Ź���--></li>
        <li>�鿴��Ϣ</li>
    </ul>
</div>

<form action="" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">������Ϣ</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">������</label>
                <div class="col-sm-9">
                	<p class="form-control-static">${msg_list.staff.name}</p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">����ʱ��</label>
                <div class="col-sm-9">
                	<p class="form-control-static">
                	<s:formatDate value="${msg_list.postTime }"/>
                	</p>
                </div>
            </div>
        </div>
    </div>
    
    	<div class="row">
                <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">������</label>
                <div class="col-sm-9">
                	<p class="form-control-static">${msg_list.receiveMan }</p>
                </div>
            </div>
        </div>
        
        </div>
    
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">�绰����</label>
                <div class="col-sm-9">
                	<p class="form-control-static">${msg_list.receivePhone }</p>
                </div>
            </div>
        
        </div>


    </div>
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">����������Ϣ</h5>
    	<div class="row">
    	<div class="col-sm-10">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">��������</label>
                <div class="col-sm-9">
                	<p class="form-control-static">${msg_list.msgContent }</p>
                </div>
            </div>
        
        </div>

    </div>
 
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
   

              <a class="btn btn-warning" href="msg.do?findAll">������һ��</a>
        </div>
    </div>
</form>

</body>
</html>
