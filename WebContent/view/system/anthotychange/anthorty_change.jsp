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
    	<li><a href="#">ϵͳ����</a></li>
        <li>Ȩ�ޱ��</li>
    </ul>
<form action="" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">������Ϣ</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">��ɫ���</label>
                <div class="col-sm-9">
                	<p class="form-control-static">10001</p>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">��ɫ����</label>
                <div class="col-sm-9">
                	<p class="form-control-static">��������Ա</p>
                </div>
            </div>
        </div>

    </div>
  <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">�˵���Ϣ</h5> 
  <table class="table">
  	<tr>
    	<th>һ���˵�</th>
        <th>����...���˵�</th>
    </tr>
    <tr>
    	<td>
        	<label class="checkbox-inline">
            	<input type="checkbox" value="">ϵͳ����
             </label>
        </td>
    	<td>
        	 <label class="checkbox-inline">
            	<input type="checkbox" value="">Ա������
             </label>
                	 <label class="checkbox-inline">
            	<input type="checkbox" value="">��ɫ�������
             </label>
              <label class="checkbox-inline">
            	<input type="checkbox" value="">��ɫ���
             </label>        <label class="checkbox-inline">
            	<input type="checkbox" value="">��ɫ���
             </label>        <label class="checkbox-inline">
            	<input type="checkbox" value="">��ɫ���
             </label>        <label class="checkbox-inline">
            	<input type="checkbox" value="">��ɫ���
             </label>        <label class="checkbox-inline">
            	<input type="checkbox" value="">��ɫ���
             </label>
        </td>
    </tr>    <tr>
    	<td>
        	<label class="checkbox-inline">
            	<input type="checkbox" value="">��������
             </label>
        </td>
    	<td>
        	 <label class="checkbox-inline">
            	<input type="checkbox" value="">Ա������
             </label>
                	 <label class="checkbox-inline">
            	<input type="checkbox" value="">��ɫ�������
             </label>
              <label class="checkbox-inline">
            	<input type="checkbox" value="">��ɫ���
             </label>        <label class="checkbox-inline">
            	<input type="checkbox" value="">��ɫ���
             </label>        <label class="checkbox-inline">
            	<input type="checkbox" value="">��ɫ���
             </label>        <label class="checkbox-inline">
            	<input type="checkbox" value="">��ɫ���
             </label>        <label class="checkbox-inline">
            	<input type="checkbox" value="">��ɫ���
             </label>
        </td>
    </tr>    <tr>
    	<td>
        	<label class="checkbox-inline">
            	<input type="checkbox" value="">�������
             </label>
        </td>
    	<td>
        	 <label class="checkbox-inline">
            	<input type="checkbox" value="">Ա������
             </label>
                	 <label class="checkbox-inline">
            	<input type="checkbox" value="">��ɫ�������
             </label>
              <label class="checkbox-inline">
            	<input type="checkbox" value="">��ɫ���
             </label>        <label class="checkbox-inline">
            	<input type="checkbox" value="">��ɫ���
             </label>        <label class="checkbox-inline">
            	<input type="checkbox" value="">��ɫ���
             </label>        <label class="checkbox-inline">
            	<input type="checkbox" value="">��ɫ���
             </label>        <label class="checkbox-inline">
            	<input type="checkbox" value="">��ɫ���
             </label>
        </td>
    </tr>    <tr>
    	<td>
        	<label class="checkbox-inline">
            	<input type="checkbox" value="">�������
             </label>
        </td>
    	<td>
        	 <label class="checkbox-inline">
            	<input type="checkbox" value="">Ա������
             </label>
                	 <label class="checkbox-inline">
            	<input type="checkbox" value="">��ɫ�������
             </label>
              <label class="checkbox-inline">
            	<input type="checkbox" value="">��ɫ���
             </label>        <label class="checkbox-inline">
            	<input type="checkbox" value="">��ɫ���
             </label>        <label class="checkbox-inline">
            	<input type="checkbox" value="">��ɫ���
             </label>        <label class="checkbox-inline">
            	<input type="checkbox" value="">��ɫ���
             </label>        <label class="checkbox-inline">
            	<input type="checkbox" value="">��ɫ���
             </label>
        </td>
    </tr>
  
  </table>   
       	<div class="row">
    	<div class="col-sm-5 col-sm-offset-4">
          	<input type="submit" class="btn btn-success" value="Ȩ�ޱ��"/>
            <a  href="anthorty_changelist.html" class="btn btn-warning">������һ��</a>
          
        </div>
    </div>
    
</form>        
</div>
</body>
</html>
