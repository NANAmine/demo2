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
  <link rel="stylesheet" href="assets/css/webuploader.css">
<style>
.wu-example {
    position: relative;
    padding: 45px 15px 15px;
    margin: 15px 0;
    background-color: #fafafa;
    box-shadow: inset 0 3px 6px rgba(0, 0, 0, .05);
    border-color: #e5e5e5 #eee #eee;
    border-style: solid;
    border-width: 1px 0;
}
.wu-example:after {
    position: absolute;
    top: 15px;
    left: 15px;
    font-size: 12px;
    font-weight: bold;
    color: #bbb;
    text-transform: uppercase;
    letter-spacing: 1px;
}

#picker {
    display: inline-block;
    line-height: 1.428571429;
    vertical-align: middle;
    margin: 0 12px 0 0;
}
#picker .webuploader-pick {
    padding: 6px 12px;
    display: block;
}

#picker_file {
    display: inline-block;
    line-height: 1.428571429;
    vertical-align: middle;
    margin: 0 12px 0 0;
}
#picker_file .webuploader-pick {
    padding: 6px 12px;
    display: block;
}

#picker_video {
    display: inline-block;
    line-height: 1.428571429;
    vertical-align: middle;
    margin: 0 12px 0 0;
}
#picker_video .webuploader-pick {
    padding: 6px 12px;
    display: block;
}

.uploader-list {
    width: 100%;
    overflow: hidden;
}
.file-item {
    float: left;
    position: relative;
    margin: 0 20px 20px 0;
    padding: 4px;
}
.file-item .error {
    position: absolute;
    top: 4px;
    left: 4px;
    right: 4px;
    background: red;
    color: white;
    text-align: center;
    height: 20px;
    font-size: 14px;
    line-height: 23px;
}
.file-item .info {
    position: absolute;
    left: 4px;
    bottom: 4px;
    right: 4px;
    height: 20px;
    line-height: 20px;
    text-indent: 5px;
    background: rgba(0, 0, 0, 0.6);
    color: white;
    overflow: hidden;
    white-space: nowrap;
    text-overflow : ellipsis;
    font-size: 12px;
    z-index: 10;
}
.upload-state-done:after {
    content:"\f00c";
    font-family: FontAwesome;
    font-style: normal;
    font-weight: normal;
    line-height: 1;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    font-size: 32px;
    position: absolute;
    bottom: 0;
    right: 4px;
    color: #4cae4c;
    z-index: 99;
}
.file-item .progress {
    position: absolute;
    right: 4px;
    bottom: 4px;
    height: 3px;
    left: 4px;
    height: 4px;
    overflow: hidden;
    z-index: 15;
    margin:0;
    padding: 0;
    border-radius: 0;
    background: transparent;
}
.file-item .progress span {
    display: block;
    overflow: hidden;
    width: 0;
    height: 100%;
    background: #d14 url(../images/progress.png) repeat-x;
    -webit-transition: width 200ms linear;
    -moz-transition: width 200ms linear;
    -o-transition: width 200ms linear;
    -ms-transition: width 200ms linear;
    transition: width 200ms linear;
    -webkit-animation: progressmove 2s linear infinite;
    -moz-animation: progressmove 2s linear infinite;
    -o-animation: progressmove 2s linear infinite;
    -ms-animation: progressmove 2s linear infinite;
    animation: progressmove 2s linear infinite;
    -webkit-transform: translateZ(0);
}
</style>
</head>
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
    <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">书籍录入</strong> / <small>books</small></div>
  </div>
  <div class="am-g">
      <div class="am-u-sm-12">
      	<form class="am-form">
      	<input type="hidden" name="id" id="id" value="0">
		    <div class="am-g doc-am-g">
 				<div class="am-u-sm-3 am-u-md-3 am-u-lg-3">
 					<label for="doc-ta-1">书名</label>
 					<input type="text" id="name">
		      	</div>
		      	<div class=" am-u-sm-3 am-u-md-3 am-u-lg-3">
		      		<label for="doc-ta-1">编号</label>
 					<input type="text" id="code">
		      	</div>
		      	<div class="am-u-sm-3 am-u-md-3 am-u-lg-3">
 					<label for="doc-ta-1">作者</label>
 					<input type="text" id="author">
		      	</div>
		      	<div class=" am-u-sm-3 am-u-md-3 am-u-lg-3">
		      		<label for="doc-ta-1">价格</label>
 					<input type="text" id="price">
		      	</div>
			</div>
			<div class="am-g doc-am-g">
 				<div class="am-u-sm-3 am-u-md-3 am-u-lg-3">
 					<label for="doc-ta-1">出版时间</label>
 					<input type="text" id="publish_date" data-am-datepicker readonly required>
 					
		      	</div>
		      	<div class="am-u-sm-6 am-u-md-6 am-u-lg-6 am-u-end">
 					<label for="doc-ta-1">出版社</label>
 					<input type="text" id="publish_company">
		      	</div>
			</div>
		  
		    <div class="am-margin am-text-right">
		     	<button type="button" id="save_button" class="am-btn am-btn-primary am-btn-xs">保存</button>
			</div>
		</form>

		    <div class="am-form-group">
		    <label for="doc-ta-1">文件上传</label>
		    	<c:forEach var="file" items="${file_list}" varStatus="s">
	        	<li id="upload_file_${file.id}">
		            <a href="${file.path}">${file.file_name}</a>&nbsp;&nbsp;<a href="##" class="am-icon-remove" onclick="remove(${file.id})"></a>
		        </li>
		        </c:forEach>
	          	<div id="uploader_file" class="wu-example">
				    <!--用来存放文件信息-->
				    <div id="thelist_file" class="uploader-list"></div>
				    <div class="btns">
				        <div id="picker_file">选择文件</div>
				        <button id="ctlBtn_file" class="btn btn-default">开始上传</button>
				    </div>
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
<script src="assets/js/webuploader.nolog.js"></script>
<script type="text/javascript">
function remove(id){
	$.ajax({
		contentType:"application/json",
	    type : "get",
	    url : "<%=request.getContextPath()%>/delete_file.do?id="+id,
	    dataType: "json",
	    success : function(data) {
	        if(data.flag=="1"){
	            alert("删除成功！");
	            $("#upload_file_"+id).remove();
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
$(function(){ 
	$("#sub_class_div").hide();
    
    //--------------file-----------------
	var $list_file=$("#thelist_file");   //这几个初始化全局的百度文档上没说明，好蛋疼。 
	var $btn_file =$("#ctlBtn_file");   //开始上传
	var state = 'pending';
    var uploader_file = WebUploader.create({
		
	    // swf文件路径
	    swf: 'assets/js/Uploader.swf',
	    formData: {
	        file_type: 2,
	        content_id: $("#id").val()
	    },
	
	    // 文件接收服务端。
	    server: 'upload_file.do',
	
	    // 选择文件的按钮。可选。
	    // 内部根据当前运行是创建，可能是input元素，也可能是flash.
	    pick: '#picker_file',
	
	    // 不压缩image, 默认如果是jpeg，文件上传前会压缩一把再上传！
	    resize: false,
	    accept: {
	        title: 'Files',
	        extensions: 'rar,zip,doc,xls,docx,xlsx,pdf',
            mimeTypes: '.rar,.zip,.doc,.xls,.docx,.xlsx,.pdf'
	    },
	    method:'POST'
	});
  	//当有文件被添加进队列的时候
	uploader_file.on( 'fileQueued', function( file ) {
		$list_file.append( '<div id="' + file.id + '" class="item">' +
	        '<h4 class="info">' + file.name + '</h4>' +
	        '<p class="state">等待上传...</p>' +
	    '</div>' );
	});
    
  	//文件上传过程中创建进度条实时显示。
	uploader_file.on( 'uploadProgress', function( file, percentage ) {
	    var $li = $( '#'+file.id ),
	        $percent = $li.find('.progress .progress-bar');
	
	    // 避免重复创建
	    if ( !$percent.length ) {
	        $percent = $('<div class="progress progress-striped active">' +
	          '<div class="progress-bar" role="progressbar" style="width: 0%">' +
	          '</div>' +
	        '</div>').appendTo( $li ).find('.progress-bar');
	    }
	
	    $li.find('p.state').text('上传中');
	
	    $percent.css( 'width', percentage * 100 + '%' );
	});
	
	uploader_file.on( 'uploadSuccess', function( file,response) {
		alert(response.msg);
	    $( '#'+file.id ).find('p.state').text('已上传');
	});
	
	uploader_file.on( 'uploadError', function( file ) {
	    $( '#'+file.id ).find('p.state').text('上传出错');
	});
	
	uploader_file.on( 'uploadComplete', function( file ) {
	    $( '#'+file.id ).find('.progress').fadeOut();
	});
	
	uploader_file.on( 'all', function( type ) {
        if ( type === 'startUpload' ) {
            state = 'uploading';
        } else if ( type === 'stopUpload' ) {
            state = 'paused';
        } else if ( type === 'uploadFinished' ) {
            state = 'done';
        }

        if ( state === 'uploading' ) {
            $btn_file.text('暂停上传');
        } else {
            $btn_file.text('开始上传');
        }
    });

    $btn_file.on( 'click', function() {
        if ( state === 'uploading' ) {
            uploader_file.stop();
        } else {
            uploader_file.upload();
        }
    });
    
    
  //保存按钮点击事件
	$("#class_id").change(function(){
		alert($("#class_id").val());
		if($("#class_id").val() == "1"){
			$("#sub_class_div").show();
		}
		else{
			$("#sub_class_id").val("");
			$("#sub_class_div").hide();
		}
	});
    
  	//保存按钮点击事件
	$("#save_button").click(function() {
		var saveData={"id":$("#id").val(),"name":$("#name").val(),"code":$("#code").val(),"price":$("#price").val(),"publish_company":$("#publish_company").val(),"author":$("#author").val(),"description":$("#description").val()};
		$.ajax({
			contentType:"application/json",
		    type : "POST",
		    url : "<%=request.getContextPath()%>/add_books.do?publish_date="+$("#publish_date").val(),
		    data : JSON.stringify(saveData),
		    dataType: "json",
		    success : function(data) {
		        if(data.flag=="1"){
		        	$("#id").val(data.id);
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
});
</script>
</body>
</html>