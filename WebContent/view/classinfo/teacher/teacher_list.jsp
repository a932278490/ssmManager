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
<link rel="stylesheet" href="../../../css/bootstrap.min.css">
<!-- jQuery�ļ��������bootstrap.min.js ֮ǰ���� -->
<script src="../../../js/jquery.min.js"></script>
<!-- ���µ� Bootstrap ���� JavaScript �ļ� -->
<script src="../../../js/bootstrap.min.js"></script>


</head>

<body>
<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li><a href="#">ϵͳ����</a></li>
        <li>��ʦ����</li>
    </ul>
</div>
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >
<form class="form-inline">

    <div class="form-group">
         <label class="" for="activename">������</label>
     
        	<select class="form-control  input-sm">
        	<option>����</option>
            <option>�Ա�</option>
        </select>
            <input type="text"  class="form-control input-sm"/>
      </div>
  
    <input type="button"   class="btn btn-danger"   value="��ѯ"/>
    <input type="button"   class="btn btn-success"   value="���" onClick="javascript:window.location='teacher_add.html'"/>
    </form>
</div>
<div class="row" style="padding:15px; padding-top:0px; ">
	<table class="table  table-condensed table-striped">
    	<tr>
        	<th>��ʦ���</th>
            <th>��ʦ����</th>
            <th>��ʦ�Ա�</th>
            <th>��ʦ����</th>
            <th>�绰����</th>
            <th>QQ</th>
            <th>��ְʱ��</th>
             <th>����</th>
        </tr>
        <tr>
        	<td><a href="teacher_show.html">1001</a></td>
            <td>����</td>
            <td>��</td>
            <td>18</td>
            <td>989899999</td>
            <td>123456</td>
            <td>2014-10-27</td>
            <td>
            	<a  href="teacher_update.html">�޸�</a>
                <a  href="�޸�">ɾ��</a>
            </td>
        </tr>        <tr>
        	<td>1001</td>
            <td>����</td>
            <td>��</td>
            <td>18</td>
            <td>989899999</td>
            <td>123456</td>
            <td>2014-10-27</td>
            <td>
            	<a  href="teacher_update.html">�޸�</a>
                <a  href="�޸�">ɾ��</a>
            </td>
        </tr>        <tr>
        	<td>1001</td>
            <td>����</td>
            <td>��</td>
            <td>18</td>
            <td>989899999</td>
            <td>123456</td>
            <td>2014-10-27</td>
            <td>
            	<a  href="teacher_update.html">�޸�</a>
                <a  href="�޸�">ɾ��</a>
            </td>
        </tr>    <tr>
        	<td>1001</td>
            <td>����</td>
            <td>��</td>
            <td>18</td>
            <td>989899999</td>
            <td>123456</td>
            <td>2014-10-27</td>
            <td>
            	<a  href="�޸�">�޸�</a>
                <a  href="�޸�">ɾ��</a>
            </td>
        </tr>    <tr>
        	<td>1001</td>
            <td>����</td>
            <td>��</td>
            <td>18</td>
            <td>989899999</td>
            <td>123456</td>
            <td>2014-10-27</td>
            <td>
            	<a  href="�޸�">�޸�</a>
                <a  href="�޸�">ɾ��</a>
            </td>
        </tr>
          
    </table>
</div>

</body>
</html>
