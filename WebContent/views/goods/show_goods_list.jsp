<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!-- <title>维和培训基础信息软件系统</title> -->
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

<%-- <jsp:include page="/manage_header.do" flush="true"/>

<div class="am-cf admin-main">
  <!-- sidebar start -->
  <jsp:include page="/manage_tree.do" flush="true"></jsp:include>
  <!-- sidebar end --> --%>


<!-- content start -->



<div class="admin-content">
  <div class="am-cf am-padding">
    <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">装备管理</strong> / <small>goods</small></div>
  </div>

<!-- 查询条件部分开始 -->
<form id="data_form" class="am-form" action="show_goods_list.do" method="post">
<input type="hidden" name="id" id="id" value="0">
<input type="hidden" name="page_num" id="page_num" value="0">
  <div class="am-tabs am-margin" data-am-tabs>
    <ul class="am-tabs-nav am-nav am-nav-tabs">
      <li class="am-active"><a href="#tab1">基本信息</a></li>
    </ul>
    <div class="am-tabs-bd">
      <div class="am-tab-panel am-fade am-in am-active">
      
          <div class="am-g am-margin-top">
          	<div class="am-u-sm-1 am-u-md-1 am-text-right">
              	归属大类
            </div>
            <div class="am-u-sm-2 am-u-md-2">
            	<select id="class_id" onchange="change(this.options[this.options.selectedIndex].value)">
            		<option value="">请选择</option>
            		<c:forEach var="goodsClass" items="${goodsClass_list}" varStatus="s">
            			<c:choose>
            			<c:when test="${class_id==goodsClass.id}">  
							<option value="${goodsClass.id}" selected>${goodsClass.name}</option>   
						</c:when>
						<c:otherwise> 
							<option value="${goodsClass.id}">${goodsClass.name}</option>
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
            		<option value="">请选择</option>
            		<%-- <c:forEach var="goodsSubClass" items="${goodsSubClass_list}" varStatus="s">
            			<c:choose>
            			<c:when test="${sub_class_id==goodsSubClass.id}">  
							<option value="${goodsSubClass.id}" selected>${goodsSubClass.name}</option>   
						</c:when>
						<c:otherwise> 
							<option value="${goodsSubClass.id}">${goodsSubClass.name}</option>
				    	</c:otherwise>
				    	</c:choose>
            		</c:forEach> --%>
            	</select>
            </div>
            <div class="am-u-sm-1 am-u-md-1 am-text-right">
              	编号
            </div>
            <div class="am-u-sm-2 am-u-md-2">
            	<input type="text" class="am-input-sm" name="code" id="code" value="${code}">
            </div>
            <div class="am-u-sm-1 am-u-md-1 am-text-right">
              	名称
            </div>
            <div class="am-u-sm-2 am-u-md-2">
            	<input type="text" class="am-input-sm" name="name" id="name" value="${name}">
            </div>
          </div>
          
          <div class="am-g am-margin-top">
          	<div class="am-u-sm-1 am-u-md-1 am-text-right">
              	购买时间
            </div>
            <div class="am-u-sm-2 am-u-md-2">
            	<input type="text" class="am-input-sm" name="buy_date" id="buy_date" value="${buy_date}" data-am-datepicker readonly required>
            </div>
          	<div class="am-u-sm-1 am-u-md-1 am-text-right">
              	价格
            </div>
            <div class="am-u-sm-2 am-u-md-2">
            	<input type="text" class="am-input-sm" name="price" id="price" value="${price}">
            </div>
            <div class="am-u-sm-1 am-u-md-1 am-text-right">
              	状态
            </div>
            <div class="am-u-sm-2 am-u-md-2">
            	<select id="status" name="status">
            		<option value="">请选择</option>
            		<option value="1">正常</option>
            		<option value="2">维护</option>
            		<option value="3">报废</option>
            		<option value="4">其他</option>
            	</select>
            </div>
            <div id="off_date_title_div" class="am-u-sm-1 am-u-md-1 am-text-right">
              	报废时间
            </div>
            <div id="off_date_div" class="am-u-sm-2 am-u-md-2">
            	<input type="text" class="am-input-sm" name="off_date" id="off_date" value="${off_date}" data-am-datepicker readonly required>
            </div>
          </div>
          
          <div class="am-g am-margin-top">
          	<div class="am-u-sm-1 am-u-md-1 am-text-right">
              	厂家信息
            </div>
            <div class="am-u-sm-11 am-u-md-11">
            	<textarea class="" rows="5" name="remark" id="remark"></textarea>
            </div>
          </div>
      </div>
      <div class=" am-margin am-text-right">
	     <button type="button" id="clear_button" class="am-btn am-btn-primary am-btn-xs">清空</button>
         <button type="button" id="search_button" class="am-btn am-btn-primary am-btn-xs">查询</button>
	     <button type="button" id="save_button" class="am-btn am-btn-primary am-btn-xs">修改</button>
	     <button type="button" id="add_button" class="am-btn am-btn-primary am-btn-xs">新增</button>
	     <button type="button" id="delete_button" class="am-btn am-btn-primary am-btn-xs">删除</button>
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
                <th class="table-title "width="10%">编号</th>
                <th class="table-title" width="20%">名称</th>
                <th class="table-title" width="10%">类别</th>
                <th class="table-title" width="15%">购买时间</th>
                <th class="table-title" width="15%">报废时间</th>
                <th class="table-title" width="10%">价格</th>
                <th class="table-title" width="5%">状态</th>
              </tr>
          </thead>
          <c:forEach var="goods" items="${goods_list}" varStatus="s">
           	  <tr class="tr_click" data_id="${goods.id}">
                <td width="10%">${goods.code}</td>
                <td width="20%">${goods.name}</td>
                <td width="10%">${goods.goodsSubClass.name}</td>
                <td width="20%"><fmt:formatDate value="${goods.buy_date}" pattern="yyyy-MM-dd"/></td>
                <td width="20%"><fmt:formatDate value="${goods.off_date}" pattern="yyyy-MM-dd"/></td>
                <td width="10%">${goods.price}</td>
                <td width="5%">
                	<c:if test="${goods.status == 1}">
                		正常
                	</c:if>
                	<c:if test="${goods.status == 2}">
                		维护
                	</c:if>
                	<c:if test="${goods.status == 3}">
                		报废
                	</c:if>
                	<c:if test="${goods.status == 4}">
                		其他
                	</c:if>
                </td>
                
              </tr>
          </c:forEach> 
        </table>
        </div>
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
	//页面初始化时默认新增机构，所以隐藏保存按钮
	$("#save_button").hide();//隐藏
	$("#delete_button").hide();
	
	$("#off_date_title_div").hide();
	$("#off_date_div").hide();
	//保存按钮点击事件
	$("#save_button").click(function() {
		var price
		if($("#price").val() == ""){
			price = 0;
		}
		else{
			price = $("#price").val();
		}
		var saveData={"id":$("#id").val(),"code":$("#code").val(),"name":$("#name").val(),"price":price,"remark":$("#remark").val(),"status":$("#status").val()};
		$.ajax({
			contentType:"application/json",
		    type : "POST",
		    url : "<%=request.getContextPath()%>/add_goods.do?buy_date="+$("#buy_date").val()+"&off_date="+$("#off_date").val()+"&sub_class_id="+$("#sub_class_id").val(),
		    data : JSON.stringify(saveData),
		    dataType: "json",
		    success : function(data) {
		        if(data.flag=="1"){
		        	$("#id").val(data.id);
		        	//var t01 = $("#clients_table tr").length;
		        	//$("#clients_table tr:gt(0):eq(t01-1)").remove();
		        	console.log(saveData);
		        	$("#data_form").submit();
		            alert("保存成功！");
		        }
		        else{
		            alert("保存失败！");
		        }
		    },
		    error :function(){
		        alert("网络连接出错！");
		    }
		});
	});
	 
	 //机构列表点击事件
	 $(".tr_click").click(function(){
		 $.ajax({
				contentType:"application/json",
			    type : "GET",
			    url : "<%=request.getContextPath()%>/get_goods.do?id="+$(this).attr("data_id"),
			    dataType: "json",
			    success : function(data) {
			        if(data.flag=="1"){
			        	$("#code").val(data.goods.code);
			        	$("#name").val(data.goods.name);
			        	$("#buy_date").val(data.buy_date);
			        	$("#price").val(data.goods.price);
			        	$("#off_date").val(data.off_date);
			        	$("#class_id").val(data.goods.goodsSubClass.goodsClass.id);
			        	$("#sub_class_id").val(data.goods.goodsSubClass.id);
			        	$("#status").val(data.goods.status);
			        	$("#remark").val(data.goods.remark);
			        	$("#id").val(data.goods.id);
			        }
			        else{
			            alert("查询失败！");
			        }
			    },
			    error :function(){
			        alert("网络连接出错！");
			    }
			});
		 $(".tr_click").removeClass("am-active");
		 $(this).addClass("am-active");
         $("#save_button").show();//显示
         $("#delete_button").show();
	 });
	 
	 //清空按钮点击事件
	 $("#clear_button").click(function(){
		 $(".tr_click").removeClass("am-active");
		 $("#id").val(0);
		 $('#data_form')[0].reset();
		 $("#name").val("");
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
		 $("#id").val(0);
		 $("#save_button").click();	 
		 $(".tr_click").removeClass("am-active");
	 });
	
	//查询按钮点击事件
	 $("#search_button").click(function(){
		 $("#data_form").submit();
	 });
	
	 $("#status").change(function(){
		 if($(this).val() == 3){
			$("#off_date_title_div").show();
			$("#off_date_div").show();
		 }
	 });
});

function choose_page(i){
	$("#page_num").val(i);
	console.log(i)
	console.log($("#page_num").val())
	$('#data_form')[0].reset();
	$("#data_form").submit();
}

//时间日期转换成string
function data_string(str, value) {
    if (value == "yyyy-MM-dd hh:mm:ss") {
        var d = eval('new ' + str.substr(1, str.length - 2));
        var ar_date = [d.getFullYear(), d.getMonth() + 1, d.getDate(), d.getHours(), d.getMinutes(), d.getSeconds()];
        for (var i = 0; i < ar_date.length; i++) ar_date[i] = dFormat(ar_date[i]);
        return ar_date.slice(0, 3).join('-') + ' ' + ar_date.slice(3).join(':');
        function dFormat(i) { return i < 10 ? "0" + i.toString() : i; }
    }
    else if (value == "yyyy-MM-dd") {
        var d = eval('new ' + str.substr(1, str.length - 2));
        var ar_date = [d.getFullYear(), d.getMonth() + 1, d.getDate()];
        for (var i = 0; i < ar_date.length; i++) ar_date[i] = dFormat(ar_date[i]);
        return ar_date.join('-');
        function dFormat(i) { return i < 10 ? "0" + i.toString() : i; }
    }
}
function change(id){
	console.log(id)
	 $.ajax({
			contentType:"application/json",
		    type : "GET",
		    url : "<%=request.getContextPath()%>/searchGoodsSubClasses2.do?id="+id+"",
		    dataType: "json",
		    success : function(data) {
		    	console.log(data.pageBean_sub_class[0].name);
		    	//$("#sub_class_id option[index='0']").remove(); 
		    	//$("#sub_class_id option:last").remove();
		        //console.log(data.pageBean_sub_class[1].name);
		        $('#sub_class_id').empty();
		        $("#sub_class_id").append("<option value=''>请选择</option>");
		        for(var i=0;i<data.pageBean_sub_class.length;i++){
		        	$("#sub_class_id").append("<option value="+data.pageBean_sub_class[i].id+">"+data.pageBean_sub_class[i].name+"</option>");
		        }
		        
		    },
		    error :function(){
		        alert("网络连接出错！");
		    }
		});
}
</script>
</body>
</html>