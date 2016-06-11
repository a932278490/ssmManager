<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>����</title>
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
    	<li><a href="#">�������</a></li>
         <li>���Ա��нˮ��Ϣ</li>
  
    </ul>
</div>

<form action="stasal.do?saves" method="post" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">������Ϣ</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">������</label>
                <div class="col-sm-9">
                	<input type="text" readonly="readonly" value="��¼�û�" class="form-control input-sm" />
                	<input type="hidden" name="stasid.sid" value="1"/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">��ȡ��</label>
                <div class="col-sm-9">
                	<select name="staid.sid" class="form-control input-sm" >
                		<c:forEach items="${staffAll}" var="s">
                    	<option value="${s.sid }" >${s.name }</option>
                    	</c:forEach>
                    </select>
                </div>
            </div>
        </div>

    </div>
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">����нˮ</label>
                <div class="col-sm-9">
               			<input type="text" name="totsal" class="form-control input-sm" placeholder="�����뱾��нˮ"/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">�۳����</label>
                <div class="col-sm-9">
               		 <input type="text" name="desal"  class="form-control input-sm" placeholder="������۳����"/>
                </div>
            </div>
        
        </div>

    </div>
        	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">ʵ�ʷ���нˮ</label>
                <div class="col-sm-9">
               			<input type="text" name="resal" class="form-control input-sm" placeholder="������ʵ�ʷ���нˮ"/>
                </div>
            </div>
        </div>
    

    </div>

 
     <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">��ע��Ϣ</h5>
    	<div class="row">
    	<div class="col-sm-10">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">��ע��Ϣ</label>
                <div class="col-sm-9">
                	<textarea name="remark" class="form-control"></textarea>
                </div>
            </div>
        
        </div>

    </div>
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit" class="btn btn-success" value="����"/>

              <a class="btn btn-warning" href="stasal.do?findall">������һ��</a>
        </div>
    </div>
</form>

</body>
</html>