<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    	<li><a href="#">ϵͳ����</a></li>
        <li>Ա������</li>
        <li>�޸�Ա��</li>
    </ul>
</div>

<form action="staff.do?update" class="form-horizontal" method="post">
   
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">������Ϣ</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">���</label>
                <div class="col-sm-9">
                	<input type="text" value="${staffbyid.sid}" name="sid" class="form-control input-sm" placeholder="��������"/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">����</label>
                <div class="col-sm-9">
                	<input type="text" value="${staffbyid.name}" name="name" class="form-control input-sm" placeholder="����������"/>
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
                	<input type="text" value="${staffbyid.age}" name="age" class="form-control input-sm" placeholder="����������"/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">�Ա�</label>
                <div class="col-sm-4">
                	
                		<select class="form-control input-sm" name="sex">
                        	<option ${staffbyid.sex=='����' ? 'selected':'' }>����</option>
                            <option ${staffbyid.sex=='��' ? 'selected':'' }>��</option>
                            <option ${staffbyid.sex=='Ů' ? 'selected':'' }>Ů</option>
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
                	<input type="text" name="place"  value="${staffbyid.place}" class="form-control input-sm" placeholder="�����뼮��"/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">���֤</label>
                <div class="col-sm-9">
                <input type="text" name="idcard" value="${staffbyid.idcard}" class="form-control input-sm" placeholder="���������֤����"/>
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
                	<input type="date" name="birthday" value="<fmt:formatDate value='${staffbyid.birthday}'/>" class="form-control input-sm" placeholder="�������������"/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">�칫�绰</label>
                <div class="col-sm-9">
                <input type="text" name="office" value="${staffbyid.office}" class="form-control input-sm" placeholder="������칫�绰"/>
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
                	<input type="text" name="email" value="${staffbyid.email}" class="form-control input-sm" placeholder="����������ʼ�"/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">�ƶ��绰</label>
                <div class="col-sm-9">
                <input type="text" name="phone" value="${staffbyid.phone}" class="form-control input-sm" placeholder="�������ƶ��绰"/>
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
                	<input type="text" name="address" value="${staffbyid.address}" class="form-control input-sm" placeholder="�������ͥסַ "/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">QQ</label>
                <div class="col-sm-9">
                <input type="text" name="qq" value="${staffbyid.qq}" class="form-control input-sm" placeholder="������QQ"/>
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
                	<input type="date" name="hiredate" value="<fmt:formatDate value='${staffbyid.hiredate}'/>" class="form-control input-sm" placeholder="��������ְʱ�� "/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">����ˮƽ</label>
                <div class="col-sm-6">
                		<select class="form-control input-sm" name="edulevel">
                		    <option ${staffbyid.edulevel == '˶ʿ' ? 'selected':''}>˶ʿ</option>
                        	<option ${staffbyid.edulevel == '����' ? 'selected':''}>����</option>
                            <option ${staffbyid.edulevel == '��ʿ' ? 'selected':''}>��ʿ</option>
                            <option ${staffbyid.edulevel == '����' ? 'selected':''}>����</option>
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
                	<textarea class="form-control" name="desc">
                	${staffbyid.desc}
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
                	<input type="text" name="number" class="form-control input-sm" placeholder="�������˺� "  value="${staffbyid.number}"/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">����</label>
                <div class="col-sm-9">
                <input type="password" name="password" class="form-control input-sm" value="${staffbyid.password}" placeholder="����������"/>
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
