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

<form id="data_form" class="am-form" action="show_content_list.do" method="post">
<input type="hidden" name="id" id="id" value="0">
<input type="hidden" name="page_num" id="page_num" value="0">
<div class="admin-content">
  <div class="am-cf am-padding">
    <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">事件管理</strong> / <small>event</small></div>
  </div>

<!-- 查询条件部分开始 -->
  <div class="am-tabs am-margin" data-am-tabs>
    <ul class="am-tabs-nav am-nav am-nav-tabs">
      <li class="am-active"><a href="#tab1">基本信息</a></li>
    </ul>
    <div class="am-tabs-bd">
      <div class="am-tab-panel am-fade am-in am-active" id="tab1">
      
          <div class="am-g am-margin-top">
          	<div class="am-u-sm-1 am-u-md-1 am-text-right">
              	归属大类
            </div>
            <div class="am-u-sm-2 am-u-md-2">
            	<select id="class_id">
            		<option value="0">请选择</option>
            		<c:forEach var="contentClass" items="${content_class_list}" varStatus="s">
            			<c:choose>
            			<c:when test="${sub_class_id==contentClass.id}">  
							<option value="${contentClass.id}" selected>${contentClass.name}</option>   
						</c:when>
						<c:otherwise> 
							<option value="${contentClass.id}">${contentClass.name}</option>
				    	</c:otherwise>
				    	</c:choose>
            		</c:forEach>
            	</select>
            </div>
          	<div class="am-u-sm-1 am-u-md-1 am-text-right">
              	归属小类
            </div>
            <div class="am-u-sm-2 am-u-md-2">
            	<select id="sub_class_id">
            		<option value="0">请选择</option>
            		<c:forEach var="contentClass" items="${content_sub_class_list}" varStatus="s">
            			<c:choose>
            			<c:when test="${sub_class_id==contentClass.id}">  
							<option value="${contentClass.id}" selected>${contentClass.name}</option>   
						</c:when>
						<c:otherwise> 
							<option value="${contentClass.id}">${contentClass.name}</option>
				    	</c:otherwise>
				    	</c:choose>
            		</c:forEach>
            	</select>
            </div>
            <div class="am-u-sm-1 am-u-md-1 am-text-right">
              	关键字
            </div>
            <div class="am-u-sm-3 am-u-md-3 am-u-end">
            	<input type="text" class="am-input-sm" name="title" id="title" value="${title}">
            </div>
          </div>
          
      </div>
      <div class=" am-margin am-text-right">
	     <button type="button" id="clear_button" class="am-btn am-btn-primary am-btn-xs">清空</button>
         <button type="button" id="search_button" class="am-btn am-btn-primary am-btn-xs">查询</button>
          <button type="button" id="add_button" class="am-btn am-btn-primary am-btn-xs">新增</button>
	  </div>
    </div>
  </div>
<!-- 查询条件部分结束 -->  
  
  <div class="am-g">
      <div class="am-u-sm-12">
  		<table id="clients_table" class="am-table am-table-striped am-table-hover table-main">
          <thead>
              <tr>
              	<th class="table-title" width="10%">分类</th>
                <th class="table-title" width="70%">标题</th>
                <th class="table-title" width="10%">时间</th>
                <th class="table-title" width="10%">操作</th>
              </tr>
          </thead>
          <c:forEach var="content" items="${content_list}" varStatus="s">
           	  <tr class="tr_click" data_id="${content.id}">
                <td width="10%">${content.contentClass.name}</td>
                <td width="70%">${content.title}</td>
                <td width="10%"><fmt:formatDate value="${content.create_date}" pattern="yyyy-MM-dd"/></td>
                <td width="10%">
					<a href="show_content.do?id=${content.id}">查看</a>|<a href="javascript:void(0)" onclick="delete_content(${content.id})">删除</a>
                </td>
              </tr>
          </c:forEach> 
        </table>
        <div class="am-cf">
  		共 ${page.allRow} 条记录	
		  <div class="am-fr">
		    <ul class="am-pagination">
		      <c:choose>
		      <c:when test="${page.currentPage==1}">
		      <li class="am-disabled"><a href="#">«</a></li>
		      </c:when>
		      <c:when test="${page.currentPage!=1}">
		      <li><a href="javascript:void(0)" onclick="choose_page(${page.currentPage-1})">«</a></li>
		      </c:when>
		      </c:choose>
		      <c:forEach var="i" begin="1" end="${page.totalPage}" step="1">
		      <c:choose>
		      <c:when test="${page.currentPage==i}">
		      <li class="am-active"><a href="javascript:void(0)"><c:out value="${i}"/></a></li>
		      </c:when>
		      <c:when test="${page.currentPage!=i}">
		      <li><a href="javascript:void(0)" onclick="choose_page(${i})"><c:out value="${i}"/></a></li>
		      </c:when>
		      </c:choose>
		      </c:forEach>
		      <c:choose>
		      <c:when test="${page.currentPage==page.totalPage}">
		      <li class="am-disabled"><a href="#">»</a></li>
		      </c:when>
		      <c:when test="${page.currentPage!=page.totalPage}">
		      <li><a href="javascript:void(0)" onclick="choose_page(${page.currentPage+1})">»</a></li>
		      </c:when>
		      </c:choose>
		    </ul>
		  </div>
		</div>

      </div>
    </div>
</div>
<!-- content end -->
 </form>
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
	 //页面初始化时默认新增机构，所以隐藏保存按钮
	 
	 //清空按钮点击事件
	 $("#clear_button").click(function(){
		 $('#data_form')[0].reset();
		 $("#class_id").val("");
		 $("#sub_class_id").val("");
		 $("#title").val("");
         $("#save_button").hide();//隐藏
	 });
	 //删除按钮
	  $("#delete_button").click(function(){
		 $.ajax({
				contentType:"application/json",
			    type : "GET",
			    url : "<%=request.getContextPath()%>/delete_goods.do?id="+$("#id").val()+"",
			    dataType: "json",
			    success : function(data) {
			        if(data.flag=="1"){
			        	$("#clear_button").click();
			        	$("#data_form").submit();
			        	alert("删除成功！");
			        }
			        else{
			            alert("删除失败！");
			        }
			    },
			    error :function(){
			        alert("网络连接出错！");
			    }
			});
		 $(".tr_click").removeClass("am-active");
		 $(this).addClass("am-active");
         $("#save_button").show();//显示
	 });
	 
	//新增按钮点击事件
	 $("#add_button").click(function(){
		 window.location.href="show_add_content.do";
	 });
	
	 //查询按钮点击事件
	 $("#search_button").click(function(){
		 $("#data_form").submit();
	 });
	
});

function delete_content(i){
	$.ajax({
		contentType:"application/json",
	    type : "GET",
	    url : "<%=request.getContextPath()%>/delete_content.do?id="+i,
	    dataType: "json",
	    success : function(data) {
	        if(data.flag=="1"){
	        	$("#clear_button").click();
	        	$("#data_form").submit();
	        	alert("删除成功！");
	        }
	        else{
	            alert("删除失败！");
	        }
	    },
	    error :function(){
	        alert("网络连接出错！");
	    }
	});
}

function choose_page(i){
	$("#page_num").val(i);
	$('#data_form')[0].reset();
	$("#data_form").submit();
}

</script>
</body>
</html>