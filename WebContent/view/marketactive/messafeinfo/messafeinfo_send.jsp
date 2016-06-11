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
<script src="nicEdit/nicEdit.js"></script>
<script type="text/javascript">
	bkLib.onDomLoaded(function(){nicEditors.allTextAreas()});
	$(function(){
			$("#modelSelect").change(function(){
				var id=$("#modelSelect").val();
				$.post("msg.do?findId",{modelId:id},function(data){
				nicEditors.findEditor("messafeContent").setContent(data);
				})
			})	
		});
</script>
</head>

<body>
<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li>Ӫ������--></li>
        <li>���Ź���--></li>
        <li>������Ϣ</li>
    </ul>
</div>

<form action="msg.do?save" class="form-horizontal" method="post">

    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">������Ϣ</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">ģ��</label>
                <div class="col-sm-9">
                	<select name="" class="form-control input-sm" id="modelSelect">
            			<option value="0" selected="">----��ѡ��----</option>
                	<c:forEach items="${tem_list}" var="t">
                        <option value="${t.id }">${t.tempTittle }</option>
                    </c:forEach>
                    </select>
                </div>
            </div>
        
        </div>
    </div>
    
    	<div class="row">
                <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">������</label>
                <div class="col-sm-9">
                	<input type="text" name="receiveMan" class="form-control input-sm" placeholder="�����������"/>
                </div>
            </div>
        </div>
        
        </div>
    
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">�绰����</label>
                <div class="col-sm-9">
                	<input type="text" name="receivePhone" class="form-control input-sm"  placeholder="������绰����"/>
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
                	<textarea class="form-control" name="msgContent" id="messafeContent"></textarea>
                </div>
            </div>
        
        </div>

    </div>
 
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit" class="btn btn-success" value="����"/>

              <a class="btn btn-warning" href="msg.do?findAll">������һ��</a>
        </div>
    </div>
</form>

</body>
</html>
