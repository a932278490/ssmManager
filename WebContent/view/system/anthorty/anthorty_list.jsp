<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>��ҳ</title>
		<!-- �� Bootstrap ���� CSS �ļ� -->
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<!-- jQuery�ļ��������bootstrap.min.js ֮ǰ���� -->
		<script src="js/jquery.min.js">
</script>
		<!-- ���µ� Bootstrap ���� JavaScript �ļ� -->
		<script src="js/bootstrap.min.js">
</script>
		<link rel="stylesheet" href="css/dtree.css">
		<script src="js/dtree.js">
</script>
	</head>

	<body>
		<div style="padding: 0px; margin: 0px;">
			<ul class="breadcrumb" style="margin: 0px;">
				<li>
					<a href="#">ϵͳ����</a>
				</li>
				<li>
					Ȩ�޹���
				</li>
			</ul>
		</div>
		<div class="row">
			<div class="col-sm-2" style="padding-left: 30px;">
				<script type="text/jscript">

$.post("anthorty.do?findparent", function(data) {
	var mydata = eval("(" + data + ")");
	d = new dTree('d');
	d.add(0, -1, '��Ŀ¼');
	for ( var i = 0; i < mydata.length; i++) {
		var t = mydata[i];
		d.add(t.aid, 0, t.name, '', "��ʾ", "mainframe");
		for ( var k = 0; k < t.childrens.length; k++) {
			var ds = t.childrens[k];
			d.add(100+ds.aid,t.aid,ds.name,ds.url + '&id=' + ds.aid, "��ʾ",
					"mainframe");
		}
	}
	  
	$("#aa").html("" + d);
});
</script>
				<div id="aa"></div>
			</div>
			<div class="col-sm-10">
				<iframe id="mainframe" name="mainiframe"
					style="width: 100%; border: 0px;"></iframe>
				<script type="text/javascript">
var height = jQuery(window).height() - 50;
jQuery("#mainframe").attr("height", height + "px");
jQuery("#mainframe").attr("src", "anthorty.do?findPre");
</script>

			</div>

		</div>


	</body>
</html>
