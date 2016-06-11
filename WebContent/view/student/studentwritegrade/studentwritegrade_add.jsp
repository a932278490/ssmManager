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
<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li><a href="#">ѧԱ����</a></li>
        <li>���ѧ���ɼ�</li>
    </ul>
</div>

<form action="grade.do?save" method="post" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">������Ϣ</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">���</label>
                <div class="col-sm-9">
                	<input type="text" name="id" readonly="readonly" class="form-control input-sm" placeholder="����Զ�����"/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">ѧԱ</label>
                <div class="col-sm-9">
                	<select name="student.id" class="form-control input-sm">
                		<option>��ѡ��</option>
                		<c:forEach items="${student_list}" var="s">
                    	<option value="${s.id }">${s.name }</option>
                    	</c:forEach>
                    </select>
                </div>
            </div>
        </div>

    </div>
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">��Ŀ</label>
                <div class="col-sm-9">
                	<input type="text" name="subject" class="form-control input-sm" placeholder="�������Ŀ"/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">�ɼ�</label>
                <div class="col-sm-9">
                	<input type="text" name="grade" class="form-control input-sm" placeholder="������ɼ�"/>
                </div>
            </div>
        </div>

    </div>
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">����ʱ��</label>
                <div class="col-sm-9">
               			<input type="date" name="time" class="form-control input-sm" placeholder="�����뿼��ʱ��"/>
                </div>
            </div>
        </div>
		 <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">������</label>
                <div class="col-sm-9">
                	<select name="staff.sid" class="form-control input-sm">
                		<option>��ѡ��</option>
                		<c:forEach items="${staff_list}" var="st">
                    	<option value="${st.sid }">${st.name }</option>
                    	</c:forEach>
                    </select>
                </div>
            </div>
        </div>

    </div>


 
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">��ͨ����</h5>
    	<div class="row">
    	<div class="col-sm-10">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">��ͨ����</label>
                <div class="col-sm-9">
                	<textarea class="form-control" name="desc"></textarea>
                </div>
            </div>
        
        </div>

    </div>
 
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit" class="btn btn-success" value="����"/>

              <a class="btn btn-warning" href="grade.do?findAll">������һ��</a>
        </div>
    </div>
</form>

</body>
</html>
