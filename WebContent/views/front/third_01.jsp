<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML>
<html>

	<head>
		<title>维和培训基础信息软件系统</title>
		<meta name="renderer" content="webkit">
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,user-scalable=0,minimal-ui">
		<meta name="format-detection" content="telephone=no" />
		<meta name="generator" content="MetInfo 6.0.0" data-variable="https://show.metinfo.cn/m/mui090/370/|cn|17|7|2|mui090" />
		<!--<link href="https://show.metinfo.cn/m/mui090/370/favicon.ico" rel="shortcut icon" type="image/x-icon" />-->
		<link rel='stylesheet' type='text/css' href='assets/css/basic.css'>
		<link rel="stylesheet" type="text/css" href="assets/css/index.css" />
		<link href="assets/css/demo.css" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/icon.css">
		<script src="assets/js/temdemo.js"></script>
	</head>

	<body>
		<header class="head_nav_met_27_1" m-id='1' m-type="head_nav">
			<div class="container top-box">
				<div class="row">
					<div class="top-header">
						<div class="logo-box">
							<a href="https://show.metinfo.cn/m/mui090/370/" class="met-logo" title="维和培训基础信息软件系统">
								<h1 style="color: red;font-weight: bold;">维和培训基础信息软件系统</h1>

							</a>
						</div>
						<button type="button" class="navbar-toggler hamburger hamburger-close collapsed  met-nav-toggler" data-target="#met-nav-collapse" data-toggle="collapse">
						    <span class="sr-only"></span>
						    <span class="hamburger-bar"></span>
						</button>
					</div>

				</div>
			</div>
			<div class="container" style="margin-top: -1%;">
				<div class="row">
					<nav class="navbar navbar-default box-shadow-none head_nav_met_27_1-navbar navlist">
						<div class="collapse navbar-collapse navbar-collapse-toolbar pull-md-left p-0" id="met-nav-collapse">
							<ul class="nav navbar-nav navlist daohang  flex">
								<li class='nav-item'>
									<a href="main.html" title="网站首页" data-title="网站首页" class="nav-link active ">网站首页</a>
								</li>
								<li class="nav-item dropdown">
									<c:if test="${type == 1}">
										<a href="second.html?type=1" title="教学科研" id="jiaoxue" name="1" data-title="教学科研" class="nav-link active" data-toggle="dropdown" data-hover="dropdown">
											教学科研</a>
									</c:if>
									<c:if test="${type != 1}">
									<a href="second.html?type=1" title="教学科研" id="jiaoxue" name="1" data-title="教学科研" class="nav-link dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
										教学科研</a>
									</c:if>
								</li>
								<li class="nav-item dropdown">
									<c:if test="${type == 2}">
										<a href="second.html?type=2" title="外事访问" id="waishi" name="2" data-title="外事访问" class="nav-link active " data-toggle="dropdown" data-hover="dropdown">
										外事访问</a>
									</c:if>
									<c:if test="${type != 2}">
										<a href="second.html?type=2" title="外事访问" id="waishi" name="2" data-title="外事访问" class="nav-link dropdown-toggle " data-toggle="dropdown" data-hover="dropdown">
											外事访问</a>
									</c:if>
								</li>
								<li class="nav-item dropdown">
									<c:if test="${type == 3}">
										<a href="second.html?type=3" title="政治工作" id="zhengzhi" name="3" data-title="政治工作" class="nav-link active" data-toggle="dropdown" data-hover="dropdown">
										政治工作</a>
									</c:if>
									<c:if test="${type != 3}">
										<a href="second.html?type=3" title="政治工作" id="zhengzhi" name="3" data-title="政治工作" class="nav-link dropdown-toggle " data-toggle="dropdown" data-hover="dropdown">
										政治工作</a>
									</c:if>
								</li>
								<li class="nav-item dropdown">
									<c:if test="${type == 4}">
										<a href="second.html?type=4" title="行管后勤" id="xingguan" name="4" data-title="行管后勤" class="nav-link active " data-toggle="dropdown" data-hover="dropdown">
										行管后勤</a>
									</c:if>
									<c:if test="${type != 4}">
										<a href="second.html?type=4" title="行管后勤" id="xingguan" name="4" data-title="行管后勤" class="nav-link dropdown-toggle " data-toggle="dropdown" data-hover="dropdown">
										行管后勤</a>
									</c:if>
								</li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</header>

		<div class="banner_met_27_1_box">
			<div class="container">
				<div class="row">
					<div class="banner_met_27_1 page-bg" m-id='2' m-type="banner">
						<div class="slick-slide">
							<img class="cover-image" src="img/u=584019996,984620153&fm=27&gp=0.jpg" sizes="(max-width: 767px) 767px" alt="" data-height='0|0|0' data-fade="true" data-autoplayspeed=4000>
						</div>
					</div>
				</div>
			</div>

			<main class="news_list_detail_met_16_1 met-shownews animsition">
				<div class="container">
					<div class="row">
						<div class="col-md-9 met-shownews-body" m-id='23'>
							<div class="row">
								<section class="details-title border-bottom1">
									<h1 class='m-t-10 m-b-5'><c:out value="${news.title}" /></h1>
									<div class="info font-weight-300">
										<span><c:out value="${news.time}" /></span>
									</div>
								</section>
								<section class="met-editor clearfix">
									<p><c:out value="${news.content}" /></p>
								</section>
								<div class="tag">
									<span></span>
									<a href="" title=""></a>
								</div>
								<div class='met-page p-y-30 border-top1'>
									<div class="container p-t-30 ">
										<ul class="pagination block blocks-2" '>
        <li class='page-item m-b-0 '>
            <a href='third.html' title="${pre_news.title}" class='page-link text-truncate '>
                上一页                <span aria-hidden="true" class='hidden-xs-down '>: <c:out value="${pre_news.title}" /></span>
            </a>
        </li>
        <li class='page-item m-b-0 '>
            <a href='third.html' title="${next.title}" class='page-link pull-xs-right text-truncate '>
                下一页                <span aria-hidden="true" class='hidden-xs-down '>: <c:out value="next.title" /></span>
            </a>
        </li>
    </ul>
</div>
</div>
				
                    </div>
        </div>
        
            <div class="col-md-3">
							<div class="row">
								<aside class="sidebar_met_28_1 met-sidebar panel panel-body m-b-0" boxmh-h m-id='13 ' m-type='nocontent '>
									<!--<form class='sidebar-search ' method='get ' action=" ">
										<input type='hidden ' name='lang ' value='cn ' />
										<input type='hidden ' name='class1 ' value='2 ' />
										<div class="form-group">
											<div class="input-search">
												<button type="submit" class="input-search-btn" style="background-color:#DCDEE0;">
					                               <li><a target='_self ' title="搜索" class="">搜索</a></li>
				                                </button>
												<input type="text" class="form-control" name="searchword" placeholder="search">
											</div>
										</div>
									</form>-->
									<ul class="sidebar-column list-icons">
										<li>
											<a href="second.html?type=0" title="通知公告" class="    " target='_self'>通知公告</a>
										</li>
										<li>
											<a href="second.html?type=1" title="教学科研" class=' ' target='_self ' data-toggle="collapse" data-target=".sidebar-column3-0">教学科研</a>
											
										</li>
										<li>
											<a href="second.html?type=2" title="外事访问" class=' ' target='_self ' data-toggle="collapse" data-target=".sidebar-column3-1">外事访问</a>
											
										</li>
										<li>
											<a href="second.html?type=3" title="政治工作" class=' ' target='_self ' data-toggle="collapse" data-target=".sidebar-column3-2">政治工作</a>
											
										</li>
										<li>
											<a href="second.html?type=4" title="行管后勤" class=' ' target='_self ' data-toggle="collapse" data-target=".sidebar-column3-3">行管后勤</a>
											
										</li>
									</ul>
									
								</aside>
							</div>
						</div>
		</div>
    </div>
</main>

        <div class="met-footnav text-center foot_nav_met_27_1" m-id="7" m-type='foot_nav '>
				<div class="container">
					<div class="row mob-masonry">
						<div class="col-lg-8 col-xs-12 footnav-left clearfix">
							<div class="col-md-2 col-sm-2 col-xs-6 list masonry-item">
								<h4><a href="main.html" title="网站首页" target='_self'>网站首页</a></h4>
							</div>
							<div class="col-md-2 col-sm-2 col-xs-6 list masonry-item">
								<h4><a href="second.html?type=1" title="教学科研" target='_self'>教学科研</a></h4>
							</div>
							<div class="col-md-2 col-sm-2 col-xs-6 list masonry-item">
								<h4><a href="second.html?type=2" title="外事访问" target='_self'>外事访问</a></h4>
							</div>
							<div class="col-md-2 col-sm-2 col-xs-6 list masonry-item">
								<h4><a href="second.html?type=3" title="政治工作" target='_self'>政治工作</a></h4>
							</div>
							<div class="col-md-2 col-sm-2 col-xs-6 list masonry-item">
								<h4><a href="second.html?type=4" title="行管后勤" target='_self'>行管后勤</a></h4>
							</div>
						</div>
						
					</div>
				</div>
			</div>
            
        <footer class='foot_info_met_16_1 met-foot p-y-20 border-top1 ' m-id='9 ' m-type='foot '>
	<div class="container text-xs-center">
		    		
	</div>
</footer>

		<script src="assets/js/basic.js"></script>
		<script src="assets/js/index.js"></script></body>
<script>

</script>
</html>