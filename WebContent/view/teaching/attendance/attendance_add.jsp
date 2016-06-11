<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
<head>
 <base href="<%=basePath%>">
<meta charset="gbk">
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>��ҳ</title>
<!-- �� Bootstrap ���� CSS �ļ� -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- jQuery�ļ��������bootstrap.min.js ֮ǰ���� -->
<script src="js/jquery.min.js"></script>
<!-- ���µ� Bootstrap ���� JavaScript �ļ� -->
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript">
	$(function(){
		$("[name=time]").click(function(){
			WdatePicker({
				highLinekWeekDay:true,
				dateFmt:'yyyy-MM-dd'
			})
		})
	})
	
	</script>
</head>

<body>

<form action="attend.do?save" class="form-horizontal" method="post">
<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li><a href="#">�������</a></li>
        <li>��ӿ���</li>
    </ul>
</div>
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">������Ϣ</h5>
	<div class="row">
    	<div class="col-xs-5">
        	<div class="form-group">
            	<label class="col-xs-3 control-label">���</label>
                <div class="col-xs-9">
                	<input type="text" name="aid" class="form-control input-sm" placeholder="��������" readonly="readonly"/>
                </div>
            </div>
        
        </div>
       
         <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">ѧԱ����</label>
                <div class="col-sm-9">
               		 <select name="student.id" class="form-control input-sm">
                     	<c:forEach items="${stuList}" var="stu">
                     	<option value="${stu.id}">${stu.name}</option>
                     	</c:forEach>
                        
                     </select>
                </div>
            </div>

        </div>
         <div class="col-xs-5">
            <div class="form-group">
            	<label class="col-xs-3 control-label">״̬</label>
                <div class="col-xs-9">
                	<input type="text" name="state" class="form-control input-sm" placeholder="������״̬"/>
                </div>
            </div>
        </div>
        
         <div class="col-xs-5">
            <div class="form-group">
            	<label class="col-xs-3 control-label">����</label>
                <div class="col-xs-9">
                	<input type="text" name="time" class="form-control input-sm" placeholder="����������"/>
                </div>
            </div>
        </div>
        
        
    </div>
    
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">����</h5>
    	<div class="row">
    	<div class="col-xs-10">
        	<div class="form-group">
            	<label class="col-xs-3 control-label">����</label>
                <div class="col-xs-9">
                	<textarea class="form-control" name="desc"></textarea>
                </div>
            </div>
        
        </div>

    </div>
 
 <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">��ע��Ϣ</h5>
    	<div class="row">
    	<div class="col-xs-10">
        	<div class="form-group">
            	<label class="col-xs-3 control-label">��ע��Ϣ</label>
                <div class="col-xs-9">
                	<textarea class="form-control" name="content"></textarea>
                </div>
            </div>
        
        </div>

    </div>
 		<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit" class="btn btn-success" value="����"/>
            <input  type="reset" class="btn  btn-danger" value="������һ��"/>
        </div>
    </div>
</form>

</body>
</html>