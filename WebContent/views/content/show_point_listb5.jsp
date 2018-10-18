<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>维和培训基础信息软件系统</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="assets/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
  <link rel="stylesheet" href="assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="assets/css/admin.css">
</head>
<style>
   th{
   font-weight:normal
   }
</style>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

<jsp:include page="/manage_header.do" flush="true"/>

<div class="am-cf admin-main">
  <!-- sidebar start -->
  <jsp:include page="/manage_tree.do" flush="true"></jsp:include>
  <!-- sidebar end -->

<!-- content start -->
  <div class="admin-content">
    <div class="admin-content-body">
      <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf">
          <strong class="am-text-primary am-text-lg">事件展示</strong> /
          <small>Event Show</small>
        </div>
      </div>

      <hr/>

      <div class="am-g">
        <div class="am-u-sm-12 am-u-sm-centered">
          <h3>事件名称：<span>外事事务接待</span></h3>
          <hr/>
        </div>
        <div class="am-u-sm-12 am-u-sm-centered ">
          <h3>开始日期：<span>2018-03-13</span></h3>
          <hr/>
        </div>
         <div class="am-u-sm-12 am-u-sm-centered ">
          <h3>结束日期：<span>2018-03-25</span></h3>
          <hr/>
        </div>
        <div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4">
          <h3>相关附件</h3>
          <ol>
            <li>软件开发项目介绍及相关文档<a href="http://jsbin.com/kijiqu/1/edit?html,output" target="_blank">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp下载</a> </li>
            <li>软件开发项目介绍及相关文档<a href="http://jsbin.com/kijiqu/1/edit?html,output" target="_blank">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp下载</a> </li>
            <li>软件开发项目介绍及相关文档<a href="http://jsbin.com/kijiqu/1/edit?html,output" target="_blank">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp下载</a> </li>
          </ol>
        </div>
      </div>
    </div>


  </div>
  <!-- content end -->

</div>

<a href="#" class="am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}">
  <span class="am-icon-btn am-icon-th-list"></span>
</a>

<jsp:include page="/manage_foot.do" flush="true"/>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="assets/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="assets/js/amazeui.min.js"></script>
<script src="assets/js/app.js"></script>
<script type="text/javascript">
$(function() {
	//查询按钮点击事件
	 $("#search_button").click(function(){
		 if($("#province_id").val()==0){
			 alert("请选择省/州");
			 return;
		 }
		 $("#data_form").submit();
	 });
});

function choose_page(i){
	$("#page_num").val(i);
	$('#data_form')[0].reset();
	$("#data_form").submit();
}
</script>
</body>
</html>