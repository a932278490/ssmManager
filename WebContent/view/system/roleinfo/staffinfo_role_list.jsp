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
<script type="text/javascript">
      $(function(){
         $("#sel").click(function(){
			var com=$("#con").val();
			if("1"==com){
				$("#context").attr("name","sname");
			}else if("2"==com){
				$("#context").attr("name","sex");
			}
			$("#con_from").submit();
		});
      });
</script>

</head>

<body>
<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li><a href="#">ϵͳ����</a></li>
        <li>Ա������</li>
    </ul>
</div>
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >
<form action="role.do?likefind" method="post" class="form-horizontal" id="con_from">
	<div class="col-sm-1" >����:</div>
    <div class="col-sm-3">
    	<select id="con" class="form-control  input-sm">
        	<option value="1">����</option>
            <option value="2">�Ա�</option>
        </select>
    </div>
    <div class="col-sm-3">
    	<input type="text" id="context" name="" class="form-control input-sm"/>
    </div>
    <input type="button" id="sel"   class="btn btn-danger"   value="��ѯ"/>
    <input type="button"   class="btn btn-success"   value="���" onClick="javascript:window.location='view/system/staffinfo/staffinfo_add.jsp?method=hid'"/>
    </form>
</div>
<div class="row" style="padding:15px; padding-top:0px; ">
	<table class="table  table-condensed table-striped">
    	<tr>
        	<th>Ա�����</th>
            <th>Ա������</th>
            <th>Ա���Ա�</th>
            <th>Ա������</th>
            <th>�绰����</th>
            <th>QQ</th>
            <th>��ְʱ��</th>
             <th>����</th>
        </tr>
        <c:forEach items="${rsList}" var="rs">
        <tr>
        	<td>${rs.sid}</td>
            <td>${rs.name}</td>
            <td>${rs.sex}</td>
            <td>${rs.age}</td>
            <td>${rs.phone}</td>
            <td>${rs.qq}</td>
            <td>${rs.hiredate}</td>
            <td>
            	<a  href="role.do?byids&id=${rs.sid}">��ɫ���</a>
            </td>
        </tr>      
        </c:forEach>
    </table>
</div>

</body>
</html>
