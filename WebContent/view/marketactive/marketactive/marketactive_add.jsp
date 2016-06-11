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
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
$(function(){
	$("[name=starDate],[name=endDate]").click(function(){
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
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li>Ӫ������--></li>
        <li>Ӫ���--></li>
        <li>��ӻ</li>
    </ul>
</div>

<form action="act.do?save" method="post" class="form-horizontal">
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">������Ϣ</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">���</label>
                <div class="col-sm-9">
                	<input type="text" name="id" class="form-control input-sm" disabled="disabled" value="${seq }"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">�����</label>
                <div class="col-sm-9">
                	<input type="text" name="activeName" class="form-control input-sm" placeholder="����������"/>
                </div>
            </div>
        </div>
    </div>
    	<!--��ʼ -->
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">��ʼʱ��</label>
                <div class="col-sm-9">
                	<input type="text" name="starDate" class="form-control input-sm" placeholder="�����뿪ʼʱ��"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">�״̬</label>
                <div class="col-sm-5">
                	<select name="activeState.id" class="form-control input-sm">
                    <c:forEach items="${state_list }" var="s">    
                        <option value="${s.id }">${s.context }</option>
                    </c:forEach>
                    </select>
                </div>
            </div>
        </div>
    </div>
   <!--���� -->
       	<!--��ʼ -->
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">����ʱ��</label>
                <div class="col-sm-9">
                	<input type="text" name="endDate" class="form-control input-sm" placeholder="���������ʱ��"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">�����</label>
                <div class="col-sm-5">
                	<select name="activeType.id" class="form-control input-sm">
    				<c:forEach items="${type_list }" var="t">            	
                    	<option value="${t.id }">${t.context }</option>
					</c:forEach>
                    </select>
                </div>
            </div>
        </div>
    </div>
   <!--���� -->
    <!--��ʼ -->
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">�ɱ�Ԥ��</label>
                <div class="col-sm-6">
                	<input type="text" name="costEmtimente" class="form-control input-sm" placeholder="������ɱ�Ԥ��"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">ʵ�ʳɱ�</label>
                <div class="col-sm-6">
                	<input type="text" name="realCost" class="form-control input-sm" placeholder="������ʵ�ʳɱ�"/>
                </div>
            </div>
        </div>
    </div>
   <!--���� -->
   <!--��ʼ -->
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">Ԥ�ڷ�Ӧ</label>
                <div class="col-sm-6">
                	 	<select name="reflect.id" class="form-control input-sm">
                	 	<c:forEach items="${reaction_list }" var="r">
                        <option value="${r.id }">${r.context }</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">Ԥ��ѧԱ</label>
                <div class="col-sm-6">
                	<input type="text" name="expectStudent" class="form-control input-sm" placeholder="������Ԥ��ѧԱ"/>
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
                	<textarea class="form-control" name="activeDescription"></textarea>
                </div>
            </div>
        
        </div>

    </div>
 
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit" class="btn btn-success" value="����"/>
            <a class="btn btn-warning" href="act.do?findAll">������һ��</a>
        </div>
    </div>
</form>

</body>
</html>
