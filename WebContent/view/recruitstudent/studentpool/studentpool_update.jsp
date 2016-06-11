<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    	<li><a href="#">��������</a></li>
        <li>ѧԱ��</li>
        <li>�޸�ѧԱ��Ϣ</li>
    </ul>
</div>

<form action="student.do?updateStudent" method="post" class="form-horizontal">
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit" class="btn btn-success" value="�޸�"/>
            <a class="btn btn-warning" href="studentpool_list.html">������һ��</a>
        </div>
    </div>
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">������Ϣ</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">���</label>
                <div class="col-sm-9">
                	<input type="text" name="id" value="${stuPool.id}" readonly="readonly" class="form-control input-sm" placeholder="��������"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">����</label>
                <div class="col-sm-9">
                	<input type="text" name="name" value="${stuPool.name}" class="form-control input-sm" placeholder="����������"/>
                </div>
            </div>
        </div>
    </div>
    	<!--��ʼ -->
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">�Ա�</label>
                <div class="col-sm-4">
                	<select  name="sex" class="form-control input-sm" >
                    	<option>����</option>
                        <option>��</option>
                        <option>Ů</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">����</label>
                <div class="col-sm-5">
                	<input type="text" name="age" value="${stuPool.age}" class="form-control input-sm" placeholder="����������"/>
                </div>
            </div>
        </div>
    </div>
   <!--���� -->
       	<!--��ʼ -->
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">�ֻ�����</label>
                <div class="col-sm-9">
                	<input type="text" name="phone" value="${stuPool.phone}" class="form-control input-sm" placeholder="�������ֻ�����"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">�����ʼ�</label>
                <div class="col-sm-9">
                	<input type="text" name="email" value="${stuPool.email}" class="form-control input-sm" placeholder="����������ʼ�"/>
                </div>
            </div>
        </div>
    </div>
   <!--���� -->
    <!--��ʼ -->
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">���֤</label>
                <div class="col-sm-9">
                	<input type="text" name="idcard" value="${stuPool.idcard}"  class="form-control input-sm" placeholder="���������֤"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">��ͥ��ַ</label>
                <div class="col-sm-9">
                	<input type="text" name="address" value="${stuPool.address}" class="form-control input-sm" placeholder="�������ͥ��ַ"/>
                </div>
            </div>
        </div>
    </div>
   <!--���� -->
   <!--��ʼ -->
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">��������</label>
                <div class="col-sm-9">
                	<input  type="date" name="birthday" value="<f:formatDate value="${stuPool.birthday}" pattern='yyyy-MM-dd'/>" class="form-control input-sm" placeholder="�������������"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">����ԺУ</label>
                <div class="col-sm-9">
                	<input type="text" name="school" value="${stuPool.school}" class="form-control input-sm" placeholder="����������ԺУ"/>
                </div>
            </div>
        </div>
    </div>
   <!--���� -->
      <!--��ʼ -->
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">QQ����</label>
                <div class="col-sm-9">
                	<input type="text" name="qq" value="${stuPool.qq}" class="form-control input-sm" placeholder="������QQ����"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">�ҳ�����</label>
                <div class="col-sm-9">
                	<input type="text" name="parentname" value="${stuPool.parentname}" class="form-control input-sm" placeholder="������ҳ�����"/>
                </div>
            </div>
        </div>
    </div>
   <!--���� -->
         <!--��ʼ -->
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">ʡ��</label>
                <div class="col-sm-9">
                	<input type="text" name="province" value="${stuPool.province}" class="form-control input-sm" placeholder="������ʡ��"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">�ҳ��绰</label>
                <div class="col-sm-9">
                	<input type="text" name="parentphone" value="${stuPool.parentphone}" class="form-control input-sm" placeholder="������ҳ��绰"/>
                </div>
            </div>
        </div>
    </div>
   <!--���� -->
            <!--��ʼ -->
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">����</label>
                <div class="col-sm-9">
                	<input type="text" name="city" value="${stuPool.city}" class="form-control input-sm" placeholder="���������"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">����״̬</label>
                <div class="col-sm-6">
                	<select name="dictionory.id" class="form-control input-sm">
                	 <option value="">----���޸�----</option>
                	<c:forEach items="${dst}" var="d">
                    	<option value="${d.id}">${d.context}</option>
                    </c:forEach>
                    </select>
                </div>
            </div>
        </div>
    </div>
   <!--���� -->
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">������Ϣ</h5>
    	<div class="row">
    	<div class="col-sm-10">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">������Ϣ</label>
                <div class="col-sm-9">
                	<textarea class="form-control" name="desc">${stuPool.desc}</textarea>
                </div>
            </div>
        
        </div>

    </div>
 
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit" class="btn btn-success" value="�޸�"/>
            <a class="btn btn-warning" href="studentpool_list.html">������һ��</a>
        </div>
    </div>
</form>

</body>
</html>
