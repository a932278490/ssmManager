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
<link rel="stylesheet" href="../../../css/bootstrap.min.css">
<!-- jQuery�ļ��������bootstrap.min.js ֮ǰ���� -->
<script src="../../../js/jquery.min.js"></script>
<!-- ���µ� Bootstrap ���� JavaScript �ļ� -->
<script src="../../../js/bootstrap.min.js"></script>
</head>

<body>
<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li><a href="#">�༶����</a></li>
        <li>�γ̱�</li>
        <li>�޸Ŀγ̱�</li>
    </ul>
</div>

<form action="" method="post" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">������Ϣ</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">���</label>
                <div class="col-sm-9">
                	<input type="text" name="" class="form-control input-sm" placeholder="��������"/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">�γ̱�����</label>
                <div class="col-sm-9">
                	<input type="text" name="" class="form-control input-sm" placeholder="������γ̱�����"/>
                </div>
            </div>
        </div>

    </div>
    
    <div class="row">
    	<div class="col-sm-8">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">����һ</label>
                <div class="col-sm-9">
               			<input type="text" name="" class="form-control input-sm" placeholder="����������һ"/>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
    	<div class="col-sm-8">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">���ڶ�</label>
                <div class="col-sm-9">
               			<input type="text" name="" class="form-control input-sm" placeholder="���������ڶ�"/>
                </div>
            </div>
        </div>
    </div>
        <div class="row">
    	<div class="col-sm-8">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">������</label>
                <div class="col-sm-9">
               			<input type="text" name="" class="form-control input-sm" placeholder="������������"/>
                </div>
            </div>
        </div>
    </div>       
    <div class="row">
    	<div class="col-sm-8">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">������</label>
                <div class="col-sm-9">
               			<input type="text" name="" class="form-control input-sm" placeholder="������������"/>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	<div class="col-sm-8">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">������</label>
                <div class="col-sm-9">
               			<input type="text" name="" class="form-control input-sm" placeholder="������������"/>
                </div>
            </div>
        </div>
    </div>    
    <div class="row">
    	<div class="col-sm-8">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">������</label>
                <div class="col-sm-9">
               			<input type="text" name="" class="form-control input-sm" placeholder="������������"/>
                </div>
            </div>
        </div>
    </div>    
     <div class="row">
    	<div class="col-sm-8">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">������</label>
                <div class="col-sm-9">
               			<input type="text" name="" class="form-control input-sm" placeholder="������������"/>
                </div>
            </div>
        </div>
    </div>    
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit" class="btn btn-success" value="����"/>

              <a class="btn btn-warning" href="syllabusinfo_list.html">������һ��</a>
        </div>
    </div>
</form>

</body>
</html>
