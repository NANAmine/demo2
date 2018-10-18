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
  <div class="am-cf am-padding">
    <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">人员查看</strong> / <small>member</small></div>
  </div>

<!-- 查询条件部分开始 -->
<form id="data_form" class="am-form" action="search_member_list.do" method="post">
<input type="hidden" name="id" id="id" value="0">
<input type="hidden" name="page_num" id="page_num" value="0">
  <div class="am-tabs am-margin" data-am-tabs>
    <ul class="am-tabs-nav am-nav am-nav-tabs">
      <li class="am-active"><a href="#tab1">基本信息</a></li>
    </ul>
    <div class="am-tabs-bd">
      <div class="am-tab-panel am-fade am-in am-active" id="tab1">
      
          <div class="am-g am-margin-top">
          	<div class="am-u-sm-1 am-u-md-1 am-text-right">
              	姓名
            </div>
            <div class="am-u-sm-2 am-u-md-2">
            	<input type="text" class="am-input-sm" name="name" id="name" value="${name}">
            </div>
            <div class="am-u-sm-1 am-u-md-1 am-text-right">
              	职位
            </div>
            <div class="am-u-sm-2 am-u-md-2 am-u-end">
            	<select id="position_id">
            			<option value="">请选择</option>
            		<c:forEach var="position" items="${position_list}" varStatus="s">
            			<c:choose>
            			<c:when test="${position_id==position.id}">  
							<option value="${position.id}" selected>${position.name}</option>   
						</c:when>
						<c:otherwise> 
							<option value="${position.id}">${position.name}</option>
				    	</c:otherwise>
				    	</c:choose>
            		</c:forEach>
            	</select>
            </div>
          </div>
          
      </div>
      <div class=" am-margin am-text-right">
	     <button type="button" id="clear_button" class="am-btn am-btn-primary am-btn-xs">清空</button>
         <button type="button" id="search_button" class="am-btn am-btn-primary am-btn-xs">查询</button>
	  </div>
    </div>
  </div>
 </form>
<!-- 查询条件部分结束 -->  
  
  <div class="am-g">
      <div class="am-u-sm-12">
  		<table id="clients_table" class="am-table am-table-striped am-table-hover table-main">
          <thead>
              <tr >
                <th class="table-title "width="20%">姓名</th>
                <th class="table-title" width="10%">性别</th>
                <th class="table-title" width="10%">年龄</th>
                <th class="table-title" width="10%">职位</th>
                <th class="table-title" width="15%">入职时间</th>
                <th class="table-title" width="15%">离职时间</th>
                <th class="table-title" width="10%">状态</th>
                <th class="table-title" width="10%">操作</th>
              </tr>
          </thead>
          <c:forEach var="member" items="${member_list}" varStatus="s">
           	  <tr class="tr_click" data_id="${member.id}">
                <td width="20%">${member.name}</td>
                <td width="10%">${member.sex}</td>
                <td width="10%">${member.age}</td>
                <td width="10%">${member.position.name}</td>
                <td width="15%"><fmt:formatDate value="${member.in_date}" pattern="yyyy-MM-dd"/></td>
                <td width="15%"><fmt:formatDate value="${member.out_date}" pattern="yyyy-MM-dd"/></td>
                <td width="10%">
                	<c:if test="${member.status == 1}">
                		在职
                	</c:if>
                	<c:if test="${member.status == 2}">
                		离职
                	</c:if>
                </td>
                <td width="10%"><a href="show_member.do?id=${member.id}">查看</a></td>
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
	 
	 //清空按钮点击事件
	 $("#clear_button").click(function(){
		 $(".tr_click").removeClass("am-active");
		 $("#id").val(0);
		 $('#data_form')[0].reset();
		 $("#name").val("");
         $("#save_button").hide();//隐藏
	 });
	
	//查询按钮点击事件
	 $("#search_button").click(function(){
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