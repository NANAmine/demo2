<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html class="no-js"> 
	<head>
		<title>维和培训基础信息查询系统</title>
		<meta name="renderer" content="webkit">
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,user-scalable=0,minimal-ui">
		<meta name="format-detection" content="telephone=no" />
		<link rel='stylesheet' type='text/css' href='assets/css/basic.css'>
		<link rel="stylesheet" type="text/css" href="assets/css/index.css" />
		<link href="assets/css/demo.css" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/icon.css">
<style type="text/css">

body {
  position: relative;
  background: #fff;
  font-family: "Segoe UI", "Lucida Grande", Helvetica, Arial, "Microsoft YaHei", FreeSans, Arimo, "Droid Sans", "wenquanyi micro hei", "Hiragino Sans GB", "Hiragino Sans GB W3", "FontAwesome", sans-serif;
  font-weight: normal;
  line-height: 1.6;
  color: #333333;
}

@font-face {
  font-family: 'FontAwesome';
  src: url('assets/fonts/fontawesome-webfont.eot?v=4.5.0');
  src: url('assets/fonts/fontawesome-webfont.eot?#iefix&v=4.5.0') format('embedded-opentype'), url('assets/fonts/fontawesome-webfont.woff2?v=4.5.0') format('woff2'), url('assets/fonts/fontawesome-webfont.woff?v=4.5.0') format('woff'), url('assets/fonts/fontawesome-webfont.ttf?v=4.5.0') format('truetype'), url('assets/fonts/fontawesome-webfont.svg?v=4.5.0#fontawesomeregular') format('svg');
  font-weight: normal;
  font-style: normal;
}


/* ==========================================================================
   Component: Flex Slider Plugin
 ============================================================================ */
.am-slider a:hover,
.am-slider a:focus {
  outline: none;
}
.am-slides,
.am-control-nav,
.am-direction-nav {
  margin: 0;
  padding: 0;
  list-style: none;
}
.am-slider {
  margin: 0;
  padding: 0;
}
.am-slider .am-slides:before,
.am-slider .am-slides:after {
  content: " ";
  display: table;
}
.am-slider .am-slides:after {
  clear: both;
}
.am-slider .am-slides > li {
  display: none;
  -webkit-backface-visibility: hidden;
  position: relative;
}
.no-js .am-slider .am-slides > li:first-child {
  display: block;
}
.am-slider .am-slides img {
  width: 100%;
  display: block;
}
.am-pauseplay span {
  text-transform: capitalize;
}
.am-slider {
  position: relative;
}
.am-viewport {
  -webkit-transition: all 1s ease;
  transition: all 1s ease;
}
.am-slider-carousel li {
  margin-right: 5px;
}
.am-control-nav {
  position: absolute;
}
.am-control-nav li {
  display: inline-block;
}
.am-control-thumbs {
  position: static;
  overflow: hidden;
}
.am-control-thumbs img {
  -webkit-transition: all 1s ease;
  transition: all 1s ease;
}
.am-slider-slide .am-slides > li {
  display: none;
  position: relative;
}
@media all and (transform-3d), (-webkit-transform-3d) {
  .am-slider-slide .am-slides > li {
    -webkit-transition: -webkit-transform 0.6s ease-in-out;
    transition: -webkit-transform 0.6s ease-in-out;
    transition: transform 0.6s ease-in-out;
    transition: transform 0.6s ease-in-out, -webkit-transform 0.6s ease-in-out;
    -webkit-backface-visibility: hidden;
            backface-visibility: hidden;
    -webkit-perspective: 1000px;
            perspective: 1000px;
  }
  .am-slider-slide .am-slides > li.next,
  .am-slider-slide .am-slides > li.active.right {
    -webkit-transform: translate3d(100%, 0, 0);
            transform: translate3d(100%, 0, 0);
    left: 0;
  }
  .am-slider-slide .am-slides > li.prev,
  .am-slider-slide .am-slides > li.active.left {
    -webkit-transform: translate3d(-100%, 0, 0);
            transform: translate3d(-100%, 0, 0);
    left: 0;
  }
  .am-slider-slide .am-slides > li.next.left,
  .am-slider-slide .am-slides > li.prev.right,
  .am-slider-slide .am-slides > li.active {
    -webkit-transform: translate3d(0, 0, 0);
            transform: translate3d(0, 0, 0);
    left: 0;
  }
}
.am-slider-slide .am-slides > .active,
.am-slider-slide .am-slides > .next,
.am-slider-slide .am-slides > .prev {
  display: block;
}
.am-slider-slide .am-slides > .active {
  left: 0;
}
.am-slider-slide .am-slides > .next,
.am-slider-slide .am-slides > .prev {
  position: absolute;
  top: 0;
  width: 100%;
}
.am-slider-slide .am-slides > .next {
  left: 100%;
}
.am-slider-slide .am-slides > .prev {
  left: -100%;
}
.am-slider-slide .am-slides > .next.left,
.am-slider-slide .am-slides > .prev.right {
  left: 0;
}
.am-slider-slide .am-slides > .active.left {
  left: -100%;
}
.am-slider-slide .am-slides > .active.right {
  left: 100%;
}
/**
  * Slider Theme: Default
  */
.am-slider-default {
  margin: 0 0 20px;
  background-color: #fff;
  border-radius: 2px;
  -webkit-box-shadow: 0 0 2px rgba(0, 0, 0, 0.15);
          box-shadow: 0 0 2px rgba(0, 0, 0, 0.15);
  /* Direction Nav */
  /* Pause/Play */
  /* Control Nav */
}
.am-slider-default .am-viewport {
  max-height: 2000px;
  -webkit-transition: all 1s ease;
  transition: all 1s ease;
}
.loading .am-slider-default .am-viewport {
  max-height: 300px;
}
.am-slider-default .carousel li {
  margin-right: 5px;
}
.am-slider-default .am-direction-nav a {
  position: absolute;
  top: 50%;
  z-index: 10;
  display: block;
  width: 36px;
  height: 36px;
  margin: -18px 0 0;
  overflow: hidden;
  opacity: 0.45;
  cursor: pointer;
  color: rgba(0, 0, 0, 0.65);
  -webkit-transition: all .3s ease;
  transition: all .3s ease;
}
.am-slider-default .am-direction-nav a:before {
  display: inline-block;
  font: normal normal normal 1.6rem/1 "FontAwesome", sans-serif;
  /*font-weight: normal; // 2
  font-style: normal; // 2
  vertical-align: baseline; // 3
  line-height: 1; // 4*/
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  -webkit-transform: translate(0, 0);
      -ms-transform: translate(0, 0);
          transform: translate(0, 0);
  width: 100%;
  color: #333333;
  content: "\f137";
  font-size: 24px!important;
  text-align: center;
  line-height: 36px!important;
  height: 36px;
}
.am-slider-default .am-direction-nav a.am-next:before {
  content: "\f138";
}
.am-slider-default .am-direction-nav .am-prev {
  left: 10px;
}
.am-slider-default .am-direction-nav .am-next {
  right: 10px;
  text-align: right;
}
.am-slider-default .am-direction-nav .am-disabled {
  opacity: 0!important;
  cursor: default;
}
.am-slider-default:hover .am-prev {
  opacity: 0.7;
  left: 10px;
}
.am-slider-default:hover .am-prev:hover {
  opacity: 1;
}
.am-slider-default:hover .am-next {
  opacity: 0.7;
  right: 10px;
}
.am-slider-default:hover .am-next:hover {
  opacity: 1;
}
.am-slider-default .am-pauseplay a {
  display: block;
  width: 20px;
  height: 20px;
  position: absolute;
  bottom: 5px;
  left: 10px;
  opacity: 0.8;
  z-index: 10;
  overflow: hidden;
  cursor: pointer;
  color: #000;
}
.am-slider-default .am-pauseplay a::before {
  font: normal normal normal 1.6rem/1 "FontAwesome", sans-serif;
  /*font-weight: normal; // 2
  font-style: normal; // 2
  vertical-align: baseline; // 3
  line-height: 1; // 4*/
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  -webkit-transform: translate(0, 0);
      -ms-transform: translate(0, 0);
          transform: translate(0, 0);
  font-size: 20px;
  display: inline-block;
  content: "\f04c";
}
.am-slider-default .am-pauseplay a:hover {
  opacity: 1;
}
.am-slider-default .am-pauseplay a.am-play::before {
  content: "\f04b";
}
.am-slider-default .am-slider-desc {
  background-color: rgba(0, 0, 0, 0.7);
  position: absolute;
  bottom: 0;
  padding: 10px;
  width: 100%;
  color: #fff;
}
.am-slider-default .am-control-nav {
  width: 100%;
  position: absolute;
  bottom: -15px;
  text-align: center;
}
.am-slider-default .am-control-nav li {
  margin: 0 6px;
  display: inline-block;
}
.am-slider-default .am-control-nav li a {
  width: 8px;
  height: 8px;
  display: block;
  background-color: #666;
  background-color: rgba(0, 0, 0, 0.5);
  line-height: 0;
  font-size: 0;
  cursor: pointer;
  text-indent: -9999px;
  border-radius: 20px;
  -webkit-box-shadow: inset 0 0 3px rgba(0, 0, 0, 0.3);
          box-shadow: inset 0 0 3px rgba(0, 0, 0, 0.3);
}
.am-slider-default .am-control-nav li a:hover {
  background-color: #333;
  background-color: rgba(0, 0, 0, 0.7);
}
.am-slider-default .am-control-nav li a.am-active {
  background-color: #000;
  background-color: #0e90d2;
  cursor: default;
}
.am-slider-default .am-control-thumbs {
  margin: 5px 0 0;
  position: static;
  overflow: hidden;
}
.am-slider-default .am-control-thumbs li {
  width: 25%;
  float: left;
  margin: 0;
}
.am-slider-default .am-control-thumbs img {
  width: 100%;
  height: auto;
  display: block;
  opacity: .7;
  cursor: pointer;
}
.am-slider-default .am-control-thumbs img:hover {
  opacity: 1;
}
.am-slider-default .am-control-thumbs .am-active {
  opacity: 1;
  cursor: default;
}
.am-slider-default .am-control-thumbs i {
  position: absolute;
}
</style>
	</head>
	
	<body>
		<header class="head_nav_met_27_1">
			<div class="container top-box">
				<div class="row">
					<div class="top-header">
						<div class="logo-box">
							<a href="https://show.metinfo.cn/m/mui090/370/" class="met-logo" title="维和培训基础信息软件系统">
								<h1 style="color: red;font-weight: bold;">维和培训基础信息查询系统</h1>
							</a>
						</div>
						<div class="pull-md-right hidden-sm-down">
							<ul class="met-langlist pull-md-left m-b-0">
							</ul>
							<div class="met-search-body pull-md-left">
								<form method='get' class="page-search-form" role="search" action=''>
									<input type='hidden' name='lang' value='cn' />
									<input type='hidden' name='class1' value='' />
									<div class="input-search">
										<button class="search-btn" type="submit">搜索</button>
										<input type="text" class="form-control" name="searchword" value="" placeholder="输入查询内容..." data-fv-notempty="true">
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
							<ul class="nav navbar-nav navlist daohang  flex" >
								<li class='nav-item'>
									<a href="main.do" title="网站首页" data-title="网站首页" class="nav-link  dropdown-toggle ">网站首页</a>
								</li>
								<li class="nav-item dropdown">
									<a href="list.html" title="教学科研" data-title="教学科研" class="nav-link dropdown-toggle " data-toggle="dropdown" data-hover="dropdown">
										教学工作</a>
								</li>
								<li class="nav-item dropdown">
									<a href="list.do" title="外事访问" data-title="外事访问" class="nav-link dropdown-toggle " data-toggle="dropdown" data-hover="dropdown">
										外事访问</a>
								</li>
								<li class="nav-item dropdown">
									<a href="list.do" title="政治工作" data-title="政治工作" class="nav-link dropdown-toggle " data-toggle="dropdown" data-hover="dropdown">
										政治工作</a>
								</li>
								<li class="nav-item dropdown">
									<a href="list.do" title="行管后勤" data-title="行管后勤" class="nav-link dropdown-toggle " data-toggle="dropdown" data-hover="dropdown">
										行管后勤</a>
								</li>
								<li class="nav-item dropdown">
									<a href="list.do" title="行管后勤" data-title="行管后勤" class="nav-link dropdown-toggle " data-toggle="dropdown" data-hover="dropdown">
										视频资料</a>
								</li>
								<li class="nav-item dropdown">
									<a href="list.do" title="行管后勤" data-title="行管后勤" class="nav-link dropdown-toggle " data-toggle="dropdown" data-hover="dropdown">
										维和图书馆</a>
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
    				<div id="banner_div" class="am-slider am-slider-default" style="width: 1310px;">
    					<ul class="am-slides">
					    	<li><img class="cover-image" src="img/demo/04.jpg"  alt="" style="height: 440px;"></li>
					    	<li><img class="cover-image" src="img/demo/17.jpg"  alt="" style="height: 440px;"></li>
					  	</ul>
                 	</div>
				</div>
			</div>
		</div>

		<section class="notice_list_met_27_1 text-xs-left" style="margin-top:5px;">
			<div class="container">
				<div class="row">
					<div class="item">
						<div class="met-index-notice">
							<div class="notice clearfix">
								<span class="notice-title col-md-2 col-xs-3">登录日志</span>
								<span class="notice-swiper col-md-10 col-xs-9 am-slider am-slider-default" id="log_div">
	                            <ul class="am-slides">
	                                <li class="notice-li">
	                                	<span>用户张建国登录[2018-08-13]</span>
									</li>
									<li class="notice-li">
										<span>用户张建国下载装备数据[2018-08-15]</span>
									</li>
									<li class="notice-li">
										<span>用户张建国下载图书数据[2018-08-15]</span>
									</li>
									<li class="notice-li">
										<span>用户李文辉登录[2018-08-23]</span>
									</li>
									<li class="notice-li">
										<span>用户魏思雨登录[2018-08-23]</span>
									</li>
								</ul>
								</span>
							</div>

						</div>
					</div>
				</div>
			</div>
		</section>
		
		<div class="news_list_met_27_1">
			<div class="container newsbox">
			<!--左边新闻(带轮播图)-->
			<div>
				<div class="item col-xs-12 col-md-8 am-slider am-slider-default" id="ad_div">
					<ul class="am-slides">
					<li>
						<a href="" title="马金旗院长赴孟加拉参加国际维和培训中心协会第16届年会" target="_self">
							<img src="img/demo/16.jpg" alt="党员年代秀 再忆入党那年" width="100%" height="380px">
						</a>
						<div class="am-slider-desc"><span class="am-text-center">马金旗院长赴孟加拉参加国际维和培训中心协会第16届年会</span></div>
					</li>
					<li>
						<a href="" title="党员年代秀 再忆入党那年" target="_self">
							<img src="img/demo/21.jpg" alt="党员年代秀 再忆入党那年" width="100%" height="380px">
						</a>
						<div class="am-slider-desc">刘金增副院长会见联合国甄选考官</div>
					</li>
					<li>
						<a href="" title="胡主任在海地执行任务" target="_self">
							<img src="img/demo/19.jpg" alt="党员年代秀 再忆入党那年" width="100%" height="380px">
						</a>
						<div class="am-slider-desc">胡主任在海地执行任务</div>
					</li>
					</ul>
	       					
	        	</div>
	        	<div class="item col-xs-12 col-md-4">
	                <div class="met-index-imgnews">
			            <ul class="right-news news-ul">
				            <div class="right-img">
						        <a href="" title="联合国动态" target="_self">
						        	<img src="img/demo/11.jpg">
						        </a>
						    </div>
						<li>
							<a href="" title="联合国举行总部翻修工程 潘基文：标志联合国重生" target="_self">
	                                                      联合国举行总部翻修工程 潘基文：标志联合国重生</a>
						</li>
						<li>
							<a href="" title=" 联合国安理会决定延长反恐执行局的任期" target="_self">
	                                                       联合国安理会决定延长反恐执行局的任期</a>
						</li>
						<li>
							<a href="" title="联合国通过42亿美元两年期预算 美国唯一反对票" target="_self">
	                                                       联合国通过42亿美元两年期预算 美国唯一反对票</a>
					    </li>
					    <li>
							<a href="" title="联合国秘书长潘基文对上任第一年的工作进行回顾" target="_self">
	                       	联合国秘书长潘基文对上任第一年的工作进行回顾</a>
						</li>
						</ul>
	    	    	</div>
				</div>
			</div>
			</div>
		</div>
		
		
		<div class="news_list_met_27_2">
			<div class="container newsbox">
				<div class="row">
					<!-- 左边新闻框 -->
					<div class="item  col-xs-12  col-lg-4">
						<div class="met-index-news ">
							<div class="title clearfix">
								<h2 class="news-h">教学工作</h2>
								<p class="news-desc"></p>

							</div>
							<ul class="news-list">
								<li>
									<a href="content.do" title="韩国驻华使馆警务参赞一行来院访问  " target=_self>
										<span>2018-07-15</span> 韩国驻华使馆警务参赞一行来院访问   </a>
								</li>
								<li>
									<a href="content.do" title="维和培训部开展假前实验室安全工作大检查  " target=_self>
										<span>2018-07-13</span> 维和培训部开展假前实验室安全工作大检查   </a>
								</li>
								<li>
									<a href="content.do" title="维和培训部召开2018年北戴河暑期实习动员大会 " target=_self>
										<span>2018-07-13</span> 维和培训部召开2018年北戴河暑期实习动员大会   </a>
								</li>
								<li>
									<a href="content.do" title="维和培训部严密组织试卷评阅工作  " target=_self>
										<span>2018-07-12</span> 维和培训部严密组织试卷评阅工作   </a>
								</li>
								<li>
									<a href="content.do" title="学报编辑部派员参加军事科学院主办首届“军事" target=_self>
										<span>2018-07-11</span> 学报编辑部派员参加军事科学院主办首届“军事...  </a>
								</li>
								<li>
									<a href="content.do" title="维和培训部教研室组织案例调研成果交流" target=_self>
										<span>2018-07-05</span> 维和培训部教研室组织案例调研成果交流   </a>
								</li>
								<li>
									<a href="content.do" title="军队指挥学科点开展研究生学位论文开题答辩评" target=_self>
										<span>2018-07-01</span> 军队指挥学科点开展研究生学位论文开题答辩评  </a>
								</li>
							</ul>
							<div class="more">
								<a href="list_2.do" title="" target='_self'>更多</a>
							</div>
						</div>
					</div>
					<!-- 左边新闻框 -->

					<!--中间新闻框-->
					<div class="item  col-xs-12 col-lg-4">
						<div class="met-index-news">
							<div class="title clearfix">
								<h2 class="news-h">科研工作</h2>
								<p class="news-desc"></p>

							</div>
							<ul class="news-list">
								<li>
									<a href="content.do" title="维和培训部举办首期“维和沙龙”活动" target=_self>
										<span>2018-07-23</span> 维和培训部举办首期“维和沙龙”活动</a>
								</li>
								<li>
									<a href="content.do" title="科研部组织召开2018年度学院非实体科研机构建设与发展工作部署会" target=_self>
										<span>2018-07-15</span> 科研部组织召开2018年度学院非实体科研机构建设与发展工作部署会 </a>
								</li>
								<li>
									<a href="content.do" title="维和培训部组织常备维和警队防暴一队复训班语言队员开展英语辩论赛" target=_self>
										<span>2018-07-03</span> 维和培训部组织常备维和警队防暴一队复训班语言队员开展英语辩论赛</a>
								</li>
								<li>
									<a href="content.do" title="维和培训部邀请南苏丹维和警察来院授课" target=_self>
										<span>2018-06-23</span> 维和培训部邀请南苏丹维和警察来院授课 </a>
								</li>
								<li>
									<a href="content.do" title="维和培训部举办习近平外交思想专题讲座" target=_self>
										<span>2018-06-18</span> 维和培训部举办习近平外交思想专题讲座 </a>
								</li>
								<li>
									<a href="content.do" title="维和培训部召开公安部常备维和警队复训教学工作准备会" target=_self>
										<span>2018-06-15</span> 维和培训部召开公安部常备维和警队复训教学工作准备会 </a>
								</li>
								<li>
									<a href="content.do" title="维和培训部邀请北京大学孟文婷博士来院授课" target=_self>
										<span>2018-06-03</span> 维和培训部邀请北京大学孟文婷博士来院授课 </a>
								</li>
							</ul>
							<div class="more">
								<a href="list.do" title="" target='_self'>更多</a>
							</div>
						</div>
					</div>

					<div class="item  col-xs-12 col-lg-4">
						<div class="met-index-news">
							<div class="title clearfix">
								<h2 class="news-h">人员查询</h2>
								<p class="news-desc"></p>

							</div>
							<ul data-plugin="nav-tabs" role="tablist">
								<li role="presentation">
									<a class="active bqy" style="margin-left: 10px" href="search_member_list.do" role="tab" aria-expanded="true" data-id="as8" target=_self>
										<img src="img/demo/12.jpg" style="margin-left: -2%;height: 195px;">
									</a>
								</li>
							</ul>

						</div>
					</div>
				</div>
			</div>
			</div>
			<div class="news_list_met_27_2" m-id='6'>
				<div class="container newsbox">	
				<div class="row">
					<!-- 左边新闻框 -->
					<div class="item col-xs-12 col-lg-4">
						<div class="met-index-news ">
							<div class="title clearfix">
								<h2 class="news-h">外事访问</h2>
								<p class="news-desc"></p>

							</div>
							<ul class="news-list">
								<li>
									<a href="content.do" title="我院学员赴江西吉安开展“中国梦 井冈情”主题活动" target=_self>
										<span>2018-08-11</span> 马院长访问孟加拉国进行学术交流</a>
								</li>
								<li>
									<a href="content.do" title="武警学院刘金增副院长会见联合国甄选考官." target=_self>
										<span>2018-08-10</span> 武警学院刘金增副院长会见联合国甄选考官  </a>
								</li>
								<li>
									<a href="content.do" title="国际红十字委员会代表到维和中心讲学交流" target=_self>
										<span>2018-08-08</span> 国际红十字委员会代表到维和中心讲学交流  </a>
								</li>
								<li>
									<a href="content.do" title="高太存副院长赴美国参加国际维和培训中心协会年会" target=_self>
										<span>2018-08-01</span> 高太存副院长赴美国参加国际维和培训中心协会年会 </a>
								</li>
								<li>
									<a href="content.do" title="武警学院李乐民政委会见联合国甄选考官 " target=_self>
										<span>2018-07-30</span> 武警学院李乐民政委会见联合国甄选考官    </a>
								</li>
								<li>
									<a href="content.do" title="胡建国主任赴马来西亚参加区域性和平支持行动研讨会 " target=_self>
										<span>2018-07-30</span> 胡建国主任赴马来西亚参加区域性和平支持行动研讨会   </a>
								</li>
								<li>
									<a href="content.do" title="何银出国参加研讨会  " target=_self>
										<span>2018-07-23</span> 何银出国参加研讨会   </a>
								</li>
							</ul>
							<div class="more">
								<a href="list.do" title="" target='_self'>更多</a>
							</div>
						</div>
					</div>

					<!--产品展示区块-->
					<!--中间新闻框-->
					<div class="item col-xs-12 col-lg-4">
						<div class="met-index-news">
							<div class="title clearfix">
								<h2 class="news-h">行管后勤</h2>
								<p class="news-desc"></p>

							</div>
							<ul class="news-list">
								<li>
									<a href="content.do" title="院务部领导到暑期工程施工一线现场办公  " target=_self>
										<span>2018-08-16</span> 院务部领导到暑期工程施工一线现场办公   </a>
								</li>
								<li>
									<a href="content.do" title="院务部召开校园总体规划设计工作座谈会  " target=_self>
										<span>2018-07-23</span> 院务部召开校园总体规划设计工作座谈会   </a>
								</li>
								<li>
									<a href="content.do" title="院领导现场指导东门广场整修收尾工作  ”" target=_self>
										<span>2018-07-15</span> 院领导现场指导东门广场整修收尾工作   </a>
								</li>
								<li>
									<a href="content.do" title="院务部邀请同济规划设计院指导院区规划设计  " target=_self>
										<span>2018-07-16</span> 院务部邀请同济规划设计院指导院区规划设计  </a>
								</li>
								<li>
									<a href="content.do" title="政治工作系召开2018年暑期工作部署会  " target=_self>
										<span>2018-06-26</span> 政治工作系召开2018年暑期工作部署会   </a>
								</li>
								<li>
									<a href="content.do" title="部队管理系召开暑假工作部署会  " target=_self>
										<span>2018-05-23</span>部队管理系召开暑假工作部署会  </a>
								</li>
								<li>
									<a href="content.do" title="院务部组织抗洪抢险救援和救灾物资运送演练活动  " target=_self>
										<span>2018-05-23</span>院务部组织抗洪抢险救援和救灾物资运送演练活动   </a>
								</li>
							</ul>
							<div class="more">
								<a href="list.do" title="" target='_self'>更多</a>
							</div>
						</div>
					</div>
					
					<div class="item  col-xs-12 col-lg-4">
						<div class="met-index-news">
							<div class="title clearfix">
								<h2 class="news-h">装备查询</h2>
								<p class="news-desc"></p>

							</div>
							<ul data-plugin="nav-tabs" role="tablist">
								<li role="presentation" style="margin-top: 1%;">
									<a class="active bqy" style="margin-left: 10px;" href="search_goods_list.do" role="tab" aria-expanded="true" data-id="as8" target=_self>
										<img src="img/demo/10.jpg" style="margin-left: -2%;height: 195px;">
									</a>
								</li>

							</ul>

						</div>
					</div>
					
					
					
				</div>
			</div>
		</div>
		
		<div class="news_list_met_27_2" m-id='6'>
				<div class="container newsbox">	
				<div class="row">				
					<!-- 左边新闻框 -->
					<div class="item col-xs-12 col-lg-8 ">
						<img src="img/demo/08.jpg" width="100%" height="195px">
					</div>
					<!-- 
					<div class="item  col-xs-12 col-lg-4">
						<div class="met-index-news">
							<div class="title clearfix">
								<h2 class="news-h">联合国动态</h2>
								<p class="news-desc"></p>

							</div>
							<ul data-plugin="nav-tabs" role="tablist">
								<li role="presentation">
									<a style="margin-left: 10px" href="login.do" target=_self>
										<img src="img/demo/07.jpg" style="margin-left: -2%;height: 195px;">
									</a>
								</li>
							</ul>

						</div>
					</div>
					 -->
					 <div class="item  col-xs-12 col-lg-4">
						<div class="met-index-news">
							<div class="title clearfix">
								<h2 class="news-h">维和图书馆</h2>
								<p class="news-desc"></p>

							</div>
							<ul data-plugin="nav-tabs" role="tablist">
								<li role="presentation" style="margin-top: 1%;">
									<a class="active bqy" style="margin-left: 10px;" href="search_books_list.do" role="tab" aria-expanded="true" data-id="as8" target=_self>
										<img src="img/demo/09.jpg" style="margin-left: -2%;height: 195px;">
									</a>
								</li>
							</ul>
						</div>
					</div>
					 
				</div>
			</div>
		</div>
		
		<div class="news_list_met_27_2" m-id='6'>
				<div class="container newsbox">	
				<div class="row">
					<!-- 左边新闻框 -->
					<div class="item col-xs-12 col-lg-4" style="margin-top: -6%;">
						<div class="met-index-news ">
							<div class="title clearfix">
								<h2 class="news-h">视频资料</h2>
								<p class="news-desc"></p>

							</div>
							<ul class="news-list">
								<li>
									<a href="content.do" title="2018年维和“励剑”综合演练视频 " target=_self>
										<span>2018-05-26</span> 2018年维和“励剑”综合演练视频 </a>
								</li>
								<li>
									<a href="content.do" title="【创文进行时】创建优美环境，共创文明城市" target=_self>
										<span>2018-03-26</span> 2018年和平3号演练视频 </a>
								</li>
								<li>
									<a href="content.do" title="2017年和平2号演练视频" target=_self>
										<span>2017-04-05</span> 2017年和平2号演练视频 </a>
								</li>
								<li>
									<a href="content.do" title="2016年和平1号演练视频" target=_self>
										<span>2016-03-23</span> 2016年和平1号演练视频</a>
								</li>
								<li>
									<a href="content.do" title="【创文进行时】创建优美环境，共创文明城市" target=_self>
										<span>2018-03-26</span> 2018年突击3号演练视频 </a>
								</li>
								<li>
									<a href="content.do" title="2017年和平2号演练视频" target=_self>
										<span>2017-04-05</span> 2017年突击2号演练视频 </a>
								</li>
								<li>
									<a href="content.do" title="2016年和平1号演练视频" target=_self>
										<span>2016-03-23</span> 2016年突击1号演练视频</a>
								</li>
							</ul>
							<div class="more">
								<a href="list.do" title="" target='_self'>更多</a>
							</div>
						</div>
					</div>

					<!--产品展示区块-->
					<!--中间新闻框-->
					<div class="item col-xs-12 col-lg-4" style="margin-top: -6%;">
						<div class="met-index-news ">
							<div class="title clearfix">
								<h2 class="news-h">政治工作</h2>
								<p class="news-desc"></p>

							</div>
							<ul class="news-list">
								<li>
									<a href="content.do" title="我院学员赴江西吉安开展“中国梦 井冈情”主题活动" target=_self>
										<span>2018-08-11</span> 我院学员赴江西吉安开展“中国梦 井冈情”主题活动 </a>
								</li>
								<li>
									<a href="content.do" title="我院学员赴安徽芜湖开展“寻访非物质文化遗产." target=_self>
										<span>2018-08-10</span> 我院学员赴安徽芜湖开展“寻访非物质文化遗产  </a>
								</li>
								<li>
									<a href="content.do" title="【廊坊市光明西道街道办事处来院进行“八一”慰问  " target=_self>
										<span>2018-08-08</span> 廊坊市光明西道街道办事处来院进行“八一”慰问  </a>
								</li>
								<li>
									<a href="content.do" title="廊坊市安次区来院进行八一慰问  " target=_self>
										<span>2018-08-01</span> 廊坊市安次区来院进行八一慰问   </a>
								</li>
								<li>
									<a href="content.do" title="人民公安报：以敢为人先的气魄勇立时代潮头   " target=_self>
										<span>2018-07-30</span> 人民公安报：以敢为人先的气魄勇立时代潮头    </a>
								</li>
								<li>
									<a href="content.do" title="院务部领导到训练基地进行八一慰问  " target=_self>
										<span>2018-07-30</span> 院务部领导到训练基地进行八一慰问   </a>
								</li>
								<li>
									<a href="content.do" title="固安县王海县长慰问训练基地官兵  " target=_self>
										<span>2018-07-23</span> 固安县王海县长慰问训练基地官兵   </a>
								</li>
							</ul>
							<div class="more">
								<a href="list.do" title="" target='_self'>更多</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="news_list_met_27_2" m-id='6'>
				<div class="container newsbox">	
				<div class="row">
					<!-- 左边新闻框 -->
					<div class="item col-xs-12 col-lg-4">
						<div class="met-index-news ">
							<div class="title clearfix">
								<h2 class="news-h">维和调研报告</h2>
								<p class="news-desc"></p>

							</div>
							<ul class="news-list">
								<li>
									<a href="content.do" title="2018年维和“励剑”综合演练视频 " target=_self>
										<span>2018-05-26</span> 2018年关于马金旗院长赴孟加拉的调研报告 </a>
								</li>
								<li>
									<a href="content.do" title="【创文进行时】创建优美环境，共创文明城市" target=_self>
										<span>2018-03-26</span> 2018年关于何银出国的调研报告 </a>
								</li>
								<li>
									<a href="content.do" title="2017年和平2号演练视频" target=_self>
										<span>2017-04-05</span> 2018年关于李民乐政委付国外的调研报告 </a>
								</li>
								<li>
									<a href="content.do" title="2016年和平1号演练视频" target=_self>
										<span>2016-03-23</span> 2018年关于王洪海主任赴国外的调研报告</a>
								</li>
								<li>
									<a href="content.do" title="【创文进行时】创建优美环境，共创文明城市" target=_self>
										<span>2018-03-26</span> 2017年关于高太存副院长赴美国的调研报告</a>
								</li>
								<li>
									<a href="content.do" title="2017年和平2号演练视频" target=_self>
										<span>2017-04-05</span> 2017年关于辛越出国参加研讨会的调研报告 </a>
								</li>
								<li>
									<a href="content.do" title="2016年和平1号演练视频" target=_self>
										<span>2016-03-23</span> 2017年关于胡建国主任出访马来西亚的调研报告</a>
								</li>
							</ul>
							<div class="more">
								<a href="list.do" title="" target='_self'>更多</a>
							</div>
						</div>
					</div>

					<!--产品展示区块-->
					<!--中间新闻框-->
					<div class="item col-xs-12 col-lg-4">
						<div class="met-index-news">
							<div class="title clearfix">
								<h2 class="news-h">维和出访成果</h2>
								<p class="news-desc"></p>

							</div>
							<ul class="news-list">
								<li>
									<a href="content.do" title="有利于金融市场扩大对外开放—央行有关负责人就“债券通”答问" target=_self>
										<span>2018-03-26</span> 蓦然回首，轻舟已过万重山——致警院  </a>
								</li>
								<li>
									<a href="content.do" title="2017年奋发镇人民政府预算基本情况说明" target=_self>
										<span>2018-03-26</span> 临别赠言  </a>
								</li>
								<li>
									<a href="content.do" title="将奋发建设成“一带一路”的“世界客都”" target=_self>
										<span>2018-03-26</span> 警院赋——送给37岁的你   </a>
								</li>
								<li>
									<a href="content.do" title="开展“六比六看”活动 掀起招商引资热潮" target=_self>
										<span>2018-03-26</span> 警院岁月，你是否也珍藏过一组数字    </a>
								</li>
								<li>
									<a href="content.do" title="全面落实企业安全生产主体责任 ——记第16个“安全生产月”活动" target=_self>
										<span>2018-03-26</span> 维和培训部组织召开2018年度上半年工作总结暨...   </a>
								</li>
								<li>
									<a href="content.do" title="国际丝贸中心被评为嘉兴市第三批重点楼宇" target=_self>
										<span>2018-03-23</span> 维和培训部组织召开2017年度上半年工作总结暨...   </a>
								</li>
								<li>
									<a href="content.do" title="腾退低效企业，助力园区升级" target=_self>
										<span>2018-03-23</span> 维和培训部组织召开2016年度上半年工作总结暨...  </a>
								</li>
							</ul>
							<div class="more">
								<a href="list.do" title="" target='_self'>更多</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="news_list_met_27_2">
			<div class="container newsbox">	
				<div class="row">
				
					<!--产品展示区块-->
					<!--中间新闻框-->			
					<div class="item col-xs-12 col-lg-4">
						<div class="met-index-news">
							<div class="title clearfix">
								<h2 class="news-h">预留模块</h2>
								<p class="news-desc"></p>

							</div>
							<ul class="news-list">
								<li>
									<a href="content.do" title="" target=_self></a>
								</li>
								<li>
									<a href="content.do" title="" target=_self></a>
								</li>
								<li>
									<a href="content.do" title="" target=_self></a>
								</li>
								<li>
									<a href="content.do" title="" target=_self></a>
								</li>
								<li>
									<a href="content.do" title="" target=_self></a>
								</li>
								<li>
									<a href="content.do" title="" target=_self></a>
								</li>
								<li>
									<a href="content.do" title="" target=_self></a>
								</li>
							</ul>
							<div class="more">
								<a href="list.do" title="" target='_self'>更多</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	

		<footer class='foot_info_met_16_1 met-foot p-y-20 border-top1' m-id='9' m-type='foot'>
			<div class="container text-xs-center">
		    		<p>武警维和培训部 版权所有</p>
				    		<p>本页面内容为网站演示数据，前台页面内容都可以在后台修改。</p>
				    		    		<div class="powered_by_metinfo">
			Powered by <b><a href="" target="_blank">yusi 6.0.0</a></b> ©2008-2018 &nbsp;<a href="" target="_blank">Yusi Inc.</a>		</div>
		<ul class="met-langlist p-0"></ul>
			</div>
		</footer>
		<script src="assets/js/jquery-2.2.0.min.js"></script>
		<script src="assets/js/amazeui.min.js"></script>
		<script src="assets/js/app.js"></script>
		<script type="text/javascript">
		
		$(function() {
			 $('#banner_div').flexslider({
				  direction: "horizontal",
				  slideshow: false,
				  controlNav: false,
				  prevText: "Previous",
				  nextText: "Next"
			 });
			 $('#log_div').flexslider({
				  direction: "vertical",
				  slideshowSpeed: 2000,
				  controlNav: false,
				  directionNav: false
			 });
			 $('#ad_div').flexslider({
				  direction: "horizontal",
				  slideshow: true,
				  directionNav: false
			 });
		});
		</script>
	</body>

</html>