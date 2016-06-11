<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>�ɷ�</title>
<!-- �� Bootstrap ���� CSS �ļ� -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- jQuery�ļ��������bootstrap.min.js ֮ǰ���� -->
<script src="js/jquery.min.js"></script>
<!-- ���µ� Bootstrap ���� JavaScript �ļ� -->
<script src="js/bootstrap.min.js"></script>
   <script type="text/javascript">
   	function total(){
   		//Ӧ�����
   		var shouldAmount = $("#shouldAmount").val();
   		//�Żݽ��
   		var discountAmount = $("#discountAmount").val();
   		//ʵ�����
   		var realAmount = $("#realAmount").val();
   		
   		var amount = shouldAmount-discountAmount-realAmount;
   		$("#debtAmount").val(amount);
   	}
   
   </script>
</head>
<body>

<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li><a href="#">�������</a></li>
        <li>ѧԱ�ɷ�</li>
    </ul>
</div>

<form action="stupay.do?addstupay" method="post" class="form-horizontal">
<input type="hidden" name="staff.sid" value="1">
<input type="hidden" name="student.id" value="${thisstu.id}"/>
   	<div class="row">
    	<div class="col-sm-9">
 
            <a class="btn btn-warning" href="stupay.do?findstu">������һ��</a>
        </div>
    </div>
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">������Ϣ</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">���</label>
                <div class="col-sm-9">
                <p class="form-control-static">${thisstu.id}</p>
                	
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">����</label>
                <div class="col-sm-9">
                 <p class="form-control-static">${thisstu.name}</p>
                	
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
                 <p class="form-control-static">${thisstu.sex}</p>
                
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">����</label>
                <div class="col-sm-5">
                 <p class="form-control-static">${thisstu.age}</p>
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
                  <p class="form-control-static">${thisstu.phone}</p>
                     </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">�����ʼ�</label>
                <div class="col-sm-9">
                <p class="form-control-static">${thisstu.email}</p>
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
                  <p class="form-control-static">${thisstu.idcard}</p>
                	                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">��ͥ��ַ</label>
                <div class="col-sm-9">
                 <p class="form-control-static">${thisstu.address}</p>
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
                 <p class="form-control-static"><f:formatDate value="${thisstu.birthday}"/> </p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">����ԺУ</label>
                <div class="col-sm-9">
                    <p class="form-control-static">${thisstu.school}</p>
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
                   <p class="form-control-static">${thisstu.qq}</p>
                 </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">�ҳ�����</label>
                <div class="col-sm-9">
                 <p class="form-control-static">${thisstu.parentname}</p>
                 </div>
            </div>
        </div>
    </div>
   <!--���� -->
   <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">ѧԱ�ɷ���</h5>
 
       <!--��ʼ -->
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">�ɷ����</label>
                <div class="col-sm-9">
               		<input type="text" name="situatic" class="form-control input-sm" placeholder="������ɷ����"/>
                 </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">�ɷѷ�ʽ</label>
                <div class="col-sm-9">
                  <select name='method.id'class='form-control  input-sm'>
                  <option value=''>��ѡ��</option>
                  <c:forEach items="${pay_type}" var="type">
                  <option value='${type.id}'>${type.context}</option>
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
            	<label class="col-sm-3 control-label">�ɷ�ʱ��</label>
                <div class="col-sm-9">
               		<input type="date" name="time" class="form-control input-sm" placeholder="������ɷ����"/>
                 </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">Ӧ�����</label>
                <div class="col-sm-9">
                  <input type="text" name="should" id="shouldAmount" readonly="readonly" value="${shouldpay}" class="form-control input-sm" placeholder="������ɷ����"/>
                 </div>
            </div>
        </div>
    </div>
   <!--���� -->
       <!--��ʼ -->
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">�Żݽ��</label>
                <div class="col-sm-9">
               		<input type="text" name="disamount"  id="discountAmount" class="form-control input-sm" placeholder="������ɷ����"/>
                 </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">ʵ�����</label>
                <div class="col-sm-9">
                  <input type="text" name="real" onblur="total()"  id="realAmount" class="form-control input-sm" placeholder="������ɷ����"/>
                 </div>
            </div>
        </div>
    </div>
   <!--���� -->

       <!--��ʼ -->
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">Ƿ��</label>
                <div class="col-sm-9">
               		<input type="text" name="debt"  id="debtAmount" class="form-control input-sm" placeholder="������ɷ����"/>
                 </div>
            </div>
        </div>

    </div>
   <!--���� -->
        <!--��ʼ -->
    	<div class="row">
    	<div class="col-sm-10">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">��ע</label>
                <div class="col-sm-9">
               		<textarea name="desc" class="form-control"></textarea>
                 </div>
            </div>
        </div>

    </div>
   <!--���� -->
   	<div class="row">
    	<div class="col-sm-9 ">
    			
 			 <a class="btn btn-warning" href="stupay.do?findstu">������һ��</a>
 			  <input type="submit" class="btn btn-success"  value="ѧԱ�ɷ�"/>
        </div>
    </div>
</form>

</body>
</html>