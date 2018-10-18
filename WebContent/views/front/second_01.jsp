<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML>
<html>

	<head>
		<title>维和培训基础信息软件管理系统</title>
		<meta name="renderer" content="webkit">
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,user-scalable=0,minimal-ui">
		<meta name="format-detection" content="telephone=no" />
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
							<a href="main.html" class="met-logo" title="维和培训基础信息软件系统">
								<h1 style="color: red;font-weight: bold;">维和培训基础信息软件系统</h1>
							</a>
							</a>
						</div>
						<div class="pull-md-right hidden-sm-down">
							<ul class="met-langlist pull-md-left m-b-0">
							</ul>
							<div class="met-search-body pull-md-left">
								<form method='get' class="page-search-form" role="search" action='second.html'>
									<input type='hidden' name='type' value='${type}' />
									<div class="input-search">
										<button class="search-btn" type="submit">搜索</button>
										<input type="text" id="search" class="form-control" name="keyword" value="" placeholder="输入查询内容..." data-fv-notempty="true">
									</div>
								</form>
							</div>
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
									<a href="main.html" title="网站首页" data-title="网站首页" class="nav-link dropdown-toggle ">网站首页</a>
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
							<img class="cover-image" src="${banner_url}" sizes="(max-width: 767px) 767px" alt="" data-height='0|0|0' data-fade="true" data-autoplayspeed=4000>
						</div>
					</div>
				</div>
			</div>

			<main class="news_list_page_met_28_1 met-news">
				<div class="container">
					<div class="row">
						<div class="col-md-9 met-news-body">
							<div class="row">
								<div class="met-news-list">
									<ul class="ulstyle met-pager-ajax imagesize" data-scale='400x400' m-id='12'>
										<c:forEach var="news_lists" items="${news_list}" begin="1" end="6">
											<li class='border-bottom1'>
												<h4>
												<a href="third.html?id=${news_lists.id}" title="${news_lists.title}" target=_self><c:out value="news_lists.title"></c:out></a>
											</h4>
												<p class="des font-weight-300">
													<c:out value="${news_lists.content}"></c:out>
												</p>
												<p class="info font-weight-300">
													<span><c:out value="${news_lists.time}"></c:out></span>
												</p>
											</li>
										</c:forEach>
									</ul>
								<form id="form1" method='get' class="page-search-form" role="search" action='second.html'>
									<input type='hidden' name='type' value='${type}' />
									<input type='hidden' name='pagenum' value='${page.currentPage}' />
									<div class='m-t-20 text-xs-center hidden-sm-down' m-type="nosysdata" style="margin-bottom: 10px;text-align: center;">
										<div class='met_pager'>
												<c:choose>
													<c:when test="${page.currentPage==1}">
														<li class="am-disabled">
															<a href=" " class='PreSpan'>上一页</a>
														</li>
													</c:when>
													<c:when test="${page.currentPage!=1}">
														<li>
															<a href="javascript:void(0)" class='PreSpan' onclick="choose_page(${page.currentPage-1})">上一页</a>
														</li>
													</c:when>
												</c:choose>
												<c:forEach var="i" begin="1" end="${page.totalPage}" step="1">
													<c:choose>
														<c:when test="${page.currentPage==i}">
															<li class="am-active">
																<a href="javascript:void(0)">
																	<c:out value="${i}" />
																</a>
															</li>
														</c:when>
														<c:when test="${page.currentPage!=i}">
															<li>
																<a href="javascript:void(0)" onclick="choose_page(${i})">
																	<c:out value="${i}" />
																</a>
															</li>
														</c:when>
													</c:choose>
												</c:forEach>
												<c:choose>
													<c:when test="${page.currentPage==page.totalPage}">
														<li class="am-disabled">
															<a href="#" class='NextSpan'>下一页</a>
														</li>
													</c:when>
													<c:when test="${page.currentPage!=page.totalPage}">
														<li>
															<a href="javascript:void(0)" class='NextSpan' onclick="choose_page(${page.currentPage+1})">下一页</a>
														</li>
													</c:when>
												</c:choose>
											<!--<span class='PageText'>转至第</span>
											<input type='text' style="width: 5%;" id='metPageT' name="page" data-pageurl='index.php?lang=cn&class2=3&page=||1' value='1' />页
											<button type="submit">跳转</button>-->
										</div>
									</div>
								</form>
								</div>
							</div>
						</div>

						<div class="col-md-3">
							<div class="row">
								<aside class="sidebar_met_28_1 met-sidebar panel panel-body m-b-0" boxmh-h m-id='13' m-type='nocontent'>
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
										
																				<li>
											<button class="am-btn am-btn-danger am-btn-sm">学历教育</button>
										</li>
										<li>
											<button class="am-btn am-btn-danger am-btn-sm">维和培训</button>
											
										</li>
										<li>
											<button class="am-btn am-btn-danger am-btn-sm">在职培养</button>
											
										</li>
									</ul>

								</aside>
							</div>
						</div>
					</div>
				</div>
			</main>

			<div class="met-footnav text-center foot_nav_met_27_1" m-id="7" m-type='foot_nav'>
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

			<footer class='foot_info_met_16_1 met-foot p-y-20 border-top1' m-id='9' m-type='foot'>
				<div class="container text-xs-center">

				</div>
			</footer>
			<script src="assets/js/basic.js"></script>
			<script src="assets/js/index.js"></script>
	</body>
	<script>
		function choose_page(pagenum){
			$("#form1").submit(pagenum);
		}
		
	</script>

</html>