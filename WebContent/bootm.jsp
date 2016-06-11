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
<title>首页</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="js/jquery-1.9.0.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="js/exporting.js"></script>
<script src="js/highcharts.js"></script>
<script type="text/javascript">
	$(function() {
				 var chart;
				$('#int').highcharts({
					chart : {
						type : 'column'
					},
					title : {
						text : ''
					},
					xAxis : {
						categories : ['完全没兴趣', '意向中', '意向低','意向强','意向非常强']
					},
					yAxis : {
						title : {
							text : '人数'
						}
					},
					series : [{
						name : '意向状态',
						data : [1, 3, 4,8,10]
					}]
				});
				$(document).ready(function () {
    	
    	// Build the chart
        $('#distribution').highcharts({
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false
            },
            title: {
                text: '学员分布图'
            },
            tooltip: {
        	    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: false
                    },
                    showInLegend: true
                }
            },
            series: [{
                type: 'pie',
                name: '人员比例',
                data: [
                    ['已报名学员',7],
                    {
                        name: '未领取学员',
                        y:4,
                        sliced: true,
                        selected: true
                    },
                    ['已领取学员',5],
                    ['无效学员', 11],
                ]
            }]
        });
    });
			$('#province').highcharts({
        chart: {
            type: 'area'
        },
        title: {
            text: '学员分布图'
        },
        xAxis: {
            labels: {
                formatter: function() {
                    return this.value; // clean, unformatted number for year
                }
            }
        },
        tooltip: {
            pointFormat: '<b>{point.y:,.0f}</b><br>位置: {point.x}'
        },
        xAxis: {
			            categories: ['河南', '河北', '北京','天津','日本','美国']
			       },
        series: [{
            name: '省份',
            data: [10,20,50,10,90,50]
        }]
    });
			});
</script>
</head>

<body>

<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style=" padding:0px; padding-left:20px;" >
  <li ><a href="#">首页</a></li>
  <li>工作台</li>
</ul>
</div>

<div class="row " style="padding:1px; margin:0px;"  >
	<div class="col-sm-8">
        <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>学员意向状态
          </div>
              <div class="panel-body" id="int">
               
              </div>
        </div>
    </div>
 	<div class="col-sm-4">
            <div class="panel panel-default">
          <div class="panel-heading"  style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>关键试图
          </div>
   <table class="table table-bordered">
	<tr>
    	<th>视图</th>
        <th>模块</th>
        <th>数量</th>
    </tr>
    
    	<tr>
    	<td>正式学员</td>
        <td>学员</td>
        <td>1523</th>
    </tr><tr>
    	<td>跟踪学员</td>
        <td>学员</td>
        <td>1523</th>
    </tr><tr>
    	<td>试听学员</td>
        <td>学员</td>
        <td>1523</th>
    </tr>
	</table>  
        </div>
    </div>

	<div class="col-sm-6">
        <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>学员分布图
          </div>
              <div class="panel-body" id="distribution">
               
              </div>
        </div>
    </div>
	<div class="col-sm-6">
        <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>学员分布图
          </div>
              <div class="panel-body" id="province">
               
              </div>
        </div>
    </div>
 	<div class="col-sm-4">
            <div class="panel panel-default">
          <div class="panel-heading"  style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>今日联系
          </div>
   <table class="table table-bordered" >
	<tr >
    	<th>联系人</th>
        <th>电话好吗</th>
     
    </tr>
    <tr>
    	<td>无语</td>
        <td>1522355214</td>
    </tr>
	</table>  
        </div>
    </div>
 	<div class="col-sm-4">
            <div class="panel panel-default">
          <div class="panel-heading"  style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>今日联系
          </div>
   <table class="table table-bordered" >
	<tr >
    	<th>联系人</th>
        <th>电话好吗</th>
     
    </tr>
    <tr>
    	<td>无语</td>
        <td>1522355214</td>
    </tr>
	</table>  
        </div>
    </div>
     	<div class="col-sm-4">
            <div class="panel panel-default">
          <div class="panel-heading"  style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>公告
          </div>
		  <div class="panel-body">公告</div>	
        </div>
    </div>
</div>



</body>
</html>
