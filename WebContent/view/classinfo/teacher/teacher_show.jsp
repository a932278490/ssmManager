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
        <li>��ʦ����</li>
        <li>�鿴��ʦ��Ϣ</li>
    </ul>
</div>

<form action="" class="form-horizontal">
   	<div class="row">
    	<div class="col-sm-5 col-sm-offset-4">
        	<a href="staffinfo_update.html" class="btn btn-success" >�޸�</a>
            <input  type="reset" class="btn  btn-danger" value="ɾ��"/>
            <input  type="reset" class="btn btn-warning" value="������һ��"/>
        </div>
    </div>
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">������Ϣ</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">���</label>
                <div class="col-sm-9">
                	<p class="form-control-static">10001</p>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">����</label>
                <div class="col-sm-9">
                	<p class="form-control-static">����</p>
                </div>
            </div>
        </div>

    </div>
    <!-- ��ʼ2 -->
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">����</label>
                <div class="col-sm-5">
                	<p class="form-control-static">18</p>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">�Ա�</label>
                <div class="col-sm-4">
                	<p class="form-control-static">��</p>
                </div>
            </div>
        </div>
    </div>
    <!-- ����2 -->
    <!-- ��ʼ3 -->
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">����</label>
                <div class="col-sm-6">
                	<p class="form-control-static">�Ϻ�</p>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">���֤</label>
                <div class="col-sm-9">
               <p class="form-control-static">5001231010xxxxxxxxx</p>
                </div>
            </div>
        </div>
    </div>
    <!-- ����3 -->
        <!-- ��ʼ4 -->
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">��������</label>
                <div class="col-sm-9">
                	 <p class="form-control-static">2001-01-01</p>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">�칫�绰</label>
                <div class="col-sm-9">
                 <p class="form-control-static">0123-123131231-11</p>
                </div>
            </div>
        </div>
    </div>
    <!-- ����4 -->
    <!-- ��ʼ4 -->
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">�����ʼ�</label>
                <div class="col-sm-9">
                	  <p class="form-control-static">0xxxxxxx@qq.com</p>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">�ƶ��绰</label>
                <div class="col-sm-9">
               	 <p class="form-control-static">14233993345</p>
                </div>
            </div>
        </div>
    </div>
    <!-- ����4 -->    
    <!-- ��ʼ5 -->
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">��ͥסַ</label>
                <div class="col-sm-9">
                	<p class="form-control-static">�Ϻ��ֶ�����xxx��xxx��</p>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">QQ</label>
                <div class="col-sm-9">
              		 <p class="form-control-static">xxxxxxx</p>
                </div>
            </div>
        </div>
    </div>
    <!-- ����5 -->    
    <!-- ��ʼ6 -->
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">��ְʱ��</label>
                <div class="col-sm-9">
                	 <p class="form-control-static">2014-10-29 24:41:12</p>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">����ˮƽ</label>
                <div class="col-sm-6">
                		<p class="form-control-static">��ʿ</p>
                </div>
            </div>
        </div>
    </div>
    <!-- ����6 -->   
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">��ע��Ϣ</h5>
    	<div class="row">
    	<div class="col-sm-10">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">��ע</label>
                <div class="col-sm-9">
                		<p class="form-control-static">�������ϳ�����������ϳ�����������ϳ�����������ϳ�����������ϳ�����������ϳ�����������ϳ�����������ϳ�����������ϳ�����������ϳ�����������ϳ�����</p>
                </div>
            </div>
        
        </div>

    </div>
        <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">�˺���Ϣ</h5>
    	<div class="row">
        	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">�˺�</label>
                <div class="col-sm-9">
                	<p class="form-control-static">admin</p>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">����</label>
                <div class="col-sm-9">
                	<p class="form-control-static">admin123456</p>
                </div>
            </div>
        </div>
    </div>
   	<div class="row">
    	<div class="col-sm-5 col-sm-offset-4">
          	<a href="staffinfo_update.html" class="btn btn-success" >�޸�</a>
            <input  type="reset" class="btn  btn-danger" value="ɾ��"/>
            <input  type="reset" class="btn btn-warning" value="������һ��"/>
        </div>
    </div>
</form>

</body>
</html>
