<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
$(function(){
	$("[name=recode_time],[name=recode_ntime]").click(function(){
		WdatePicker({
			highLineWeekDay:true,
			dateFmt:'yyyy-MM-dd'
		})
	})
})

</script>
</head>

<body>
<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="margin:0px; " >
    	<li><a href="#">��������</a></li>
        <li>���ټ�¼</li>
        <li>�޸ļ�¼</li>
    </ul>
</div>

<form action="track.do?update" method="post" class="form-horizontal">
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">������Ϣ</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">���</label>
                <div class="col-sm-9">
                	<input type="text" name="recode_id" value="${track.recode_id }" class="form-control input-sm" readonly="readonly" />
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">����</label>
                <div class="col-sm-9">
                	<input type="text" name="recode_title" value="${track.recode_title }" class="form-control input-sm" placeholder="����������"/>
                </div>
            </div>
        </div>

    </div>
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">��ϵѧԱ</label>
                <div class="col-sm-9">
                	<select name="student.id"  class="form-control input-sm">
                    	<c:forEach items="${studentList}" var="s">
                    	<option value="${s.id }" ${s.id==track.recode_id?'selected="selected"':''  }>${s.name }</option>
                    	</c:forEach>
                    </select>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">����״̬</label>
                <div class="col-sm-9">
                	<select name="dictionory.id"  class="form-control input-sm">
                    	<c:forEach items="${dictionoryList}" var="d">
                    	<option value="${d.id }" ${d.id==track.dictionory.id?'selected="selected"':''  }>${d.context }</option>
                    	</c:forEach>
                    </select>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">��ϵʱ��</label>
                <div class="col-sm-9">
               		 <input type="text"  value="<f:formatDate value="${track.recode_time }"/>" name="recode_time" class="form-control input-sm" placeholder="��������ϵʱ��"/>
                </div>
            </div>
        
        </div>

    </div>
       	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">�´���ϵʱ��</label>
                <div class="col-sm-9">
               		 <input type="text" name="recode_ntime" value="<f:formatDate value="${track.recode_ntime }"/>" class="form-control input-sm" placeholder="�������´���ϵʱ��"/>
                </div>
            </div>
        
        </div>

    </div>
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">��������</h5>
    	<div class="row">
    	<div class="col-sm-10">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">��������</label>
                <div class="col-sm-9">
                	<textarea class="form-control"  name="recode_content">${track.recode_content }</textarea>
                </div>
            </div>
        
        </div>

    </div>
 
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit" class="btn btn-success" value="����"/>

              <a class="btn btn-warning" href="trackrecord_list.html">������һ��</a>
        </div>
    </div>
</form>

</body>
</html>