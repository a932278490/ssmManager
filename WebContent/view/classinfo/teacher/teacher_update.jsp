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
        <li>�޸Ľ�ʦ</li>
    </ul>
</div>

<form action="" class="form-horizontal">
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit" class="btn btn-success" value="����"/>
            <input  type="reset" class="btn  btn-danger" value="ȡ��"/>
        </div>
    </div>
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">������Ϣ</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">���</label>
                <div class="col-sm-9">
                	<input type="text" value="10001" name="" class="form-control input-sm" placeholder="��������"/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">����</label>
                <div class="col-sm-9">
                	<input type="text" value="����" name="" class="form-control input-sm" placeholder="����������"/>
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
                	<input type="text" value="18" name="" class="form-control input-sm" placeholder="����������"/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">�Ա�</label>
                <div class="col-sm-4">
                		<select class="form-control input-sm" >
                        	<option>����</option>
                            <option selected>��</option>
                            <option>Ů</option>
                        </select>
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
                	<input type="text" name=""  value="�Ϻ�" class="form-control input-sm" placeholder="�����뼮��"/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">���֤</label>
                <div class="col-sm-9">
                <input type="text" name="" value="5001231010xxxxxxxxx" class="form-control input-sm" placeholder="���������֤����"/>
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
                	<input type="text" name="" value="2001-01-01" class="form-control input-sm" placeholder="�������������"/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">�칫�绰</label>
                <div class="col-sm-9">
                <input type="text" name="" value="0123-123131231-11" class="form-control input-sm" placeholder="������칫�绰"/>
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
                	<input type="text" name="" value="0xxxxxxx@qq.com" class="form-control input-sm" placeholder="����������ʼ�"/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">�ƶ��绰</label>
                <div class="col-sm-9">
                <input type="text" name="" value="14233993345" class="form-control input-sm" placeholder="�������ƶ��绰"/>
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
                	<input type="text" name="" value="�Ϻ��ֶ�����xxx��xxx��" class="form-control input-sm" placeholder="�������ͥסַ "/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">QQ</label>
                <div class="col-sm-9">
                <input type="text" name="" value="xxxxxxxxx" class="form-control input-sm" placeholder="������QQ"/>
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
                	<input type="text" name="" value="2014-10-29 24:41:12" class="form-control input-sm" placeholder="��������ְʱ�� "/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">����ˮƽ</label>
                <div class="col-sm-6">
                		<select class="form-control input-sm" >
                        	<option>����</option>
                            <option selected>��ʿ</option>
                            <option>˶ʿ</option>
                            <option>����</option>
                        </select>
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
                	<textarea class="form-control">
                    �������ϳ�����������ϳ�����������ϳ�����������ϳ�����������ϳ�����������ϳ�����������ϳ�����������ϳ�����������ϳ�����������ϳ�����������ϳ�����
                    </textarea>
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
                	<input type="text" name="" class="form-control input-sm" placeholder="�������˺� "  value="admin"/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">����</label>
                <div class="col-sm-9">
                <input type="password" name="" class="form-control input-sm" value="admin123456" placeholder="����������"/>
                </div>
            </div>
        </div>
    </div>
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit" class="btn btn-success" value="����"/>
            <input  type="reset" class="btn  btn-danger" value="ȡ��"/>
        </div>
    </div>
</form>

</body>
</html>
