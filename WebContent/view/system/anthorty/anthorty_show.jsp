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

<form action="" class="form-horizontal">
 	<div class="row">
    	<div class="col-xs-9 ">
          <input type="button"   class="btn btn-success"   value="���Ȩ����Ϣ" onClick="javascript:window.location='anthorty.do?findPre'"/>
         	 <input  type="button" class="btn btn-info" value="�޸�Ȩ����Ϣ" onClick="javascript:window.location='anthorty.do?byidup&id=${byidList.aid}'"/>
        	<input  type="button" class="btn btn-danger" value="ɾ��Ȩ����Ϣ" onClick="javascript:window.location='anthorty.do?delete&id=${byidList.aid}'"/>
          
        </div>
    </div>
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">������Ϣ</h5>
	<div class="row">
    	<div class="col-xs-5">
        	<div class="form-group">
            	<label class="col-xs-3 control-label">Ȩ�ޱ��</label>
                <div class="col-xs-9">
                	<p class="form-control-static">${byidList.aid}</p>
                </div>
            </div>
        
        </div>
        <div class="col-xs-5">
            <div class="form-group">
            	<label class="col-xs-3 control-label">Ȩ������</label>
                <div class="col-xs-9">
                		<p class="form-control-static">${byidList.name}</p>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	<div class="col-xs-5">
        	<div class="form-group">
            	<label class="col-xs-3 control-label">�ϼ�Ȩ��</label>
                <div class="col-xs-9">
                	<p class="form-control-static">${byidList.parent.name}</p>
                </div>
            </div>
        
        </div>
        <div class="col-xs-5">
            <div class="form-group">
            	<label class="col-xs-3 control-label">Ȩ��URL</label>
                <div class="col-xs-9">
                	<p class="form-control-static">${byidList.url}</p>
                </div>
            </div>
        </div>
    </div>
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">��ע��Ϣ</h5>
    	<div class="row">
    	<div class="col-xs-10">
        	<div class="form-group">
            	<label class="col-xs-3 control-label">��ע</label>
                <div class="col-xs-9">
                	<p class="form-control-static">��ѯ�û���Ϣ${byidList.desc}</p>
                </div>
            </div>
        
        </div>

    </div>


</form>

</body>
</html>
