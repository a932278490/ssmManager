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
    	<li><a href="#">�༶����</a></li>
        <li>�޸İ༶</li>
    </ul>
</div>

<form action="classes.do?update" method="post" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">������Ϣ</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">�༶���</label>
                <div class="col-sm-9">
                	<input type="text" name="id" value="${classesList.id }" readonly="readonly" class="form-control input-sm" placeholder="��������"/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">�༶����</label>
                <div class="col-sm-9">
                	<input type="text" name="name" value="${classesList.name }" class="form-control input-sm" placeholder="������༶����"/>
                </div>
            </div>
        </div>

    </div>
    
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">��������</label>
                <div class="col-sm-9">
               			<input type="date" name="start" value="${classesList.start }" readonly="readonly" class="form-control input-sm" placeholder="�����뿪������"/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">��������</label>
                <div class="col-sm-9">
               		 <input type="date" name="end" value="${classesList.end }" class="form-control input-sm" placeholder="�������������"/>
                </div>
            </div>
        
        </div>

    </div>
        <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">�༶����</label>
                <div class="col-sm-9">
               			<input type="text" name="num" value="${classesList.num }" class="form-control input-sm" placeholder="������༶����"/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">��ʦ</label>
                <div class="col-sm-9">
               		 <select name="staff.sid"  class="form-control input-sm">
               		 	<c:forEach items="${staffList}" var="c">
	                     	<option ${classesList.staff.sid==c.sid? 'selected':'' } value="${c.sid }">${c.name }</option>
               		 	</c:forEach>
                     </select>
                </div>
            </div>

        </div>

    </div>
        <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">ѧ��</label>
                <div class="col-sm-9">
               	   <select name="subject.id" class="form-control input-sm">
                        <c:forEach items="${subjectList}" var="b">
	                     	<option ${classesList.subject.id==b.id? 'selected':'' } value="${b.id }">${b.name }</option>
               		 	</c:forEach>
                     </select>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">�γ̱�</label>
                <div class="col-sm-9">
               		 <select name="schedule.id" class="form-control input-sm">
                     	<c:forEach items="${scheduleList}" var="f">
	                     	<option ${classesList.schedule.id==f.id? 'selected':'' } value="${f.id }">${f.name }</option>
               		 	</c:forEach>
                     </select>
                </div>
            </div>

        </div>

    </div>
           <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">����</label>
                <div class="col-sm-9">
               	   <select name="classRoom.id" class="form-control input-sm">
                     	<c:forEach items="${classRoomList}" var="r">
	                     	<option ${classesList.classRoom.id==r.id? 'selected':'' } value="${r.id }">${r.name }</option>
               		 	</c:forEach>
                     </select>
                </div>
            </div>
        </div>

    </div>
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">����</h5>
    	<div class="row">
    	<div class="col-sm-10">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">����</label>
                <div class="col-sm-9">
                	<textarea name="desc" class="form-control">${classesList.desc }</textarea>
                </div>
            </div>
        
        </div>

    </div>
 
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit" class="btn btn-success" value="����"/>

              <a class="btn btn-warning" href="classinfo_list.html">������һ��</a>
        </div>
    </div>
</form>

</body>
</html>
