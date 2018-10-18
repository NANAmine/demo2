<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	</head>
<style>
.am-btn {
  display: inline-block;
  margin-bottom: 0;
  padding: 0.5em 1em;
  vertical-align: middle;
  font-size: 1.6rem;
  font-weight: normal;
  line-height: 1.2;
  text-align: center;
  white-space: nowrap;
  background-image: none;
  border: 1px solid transparent;
  border-radius: 0;
  cursor: pointer;
  outline: none;
  -webkit-appearance: none;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  -webkit-transition: background-color 300ms ease-out, border-color 300ms ease-out;
  transition: background-color 300ms ease-out, border-color 300ms ease-out;
}
.am-btn:focus,
.am-btn:active:focus {
  outline: thin dotted;
  outline: 1px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
.am-btn:hover,
.am-btn:focus {
  color: #444;
  text-decoration: none;
}
.am-btn:active,
.am-btn.am-active {
  background-image: none;
  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.15);
          box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.15);
}
.am-btn.am-disabled,
.am-btn[disabled],
fieldset[disabled] .am-btn {
  pointer-events: none;
  border-color: transparent;
  cursor: not-allowed;
  opacity: 0.45;
  -webkit-box-shadow: none;
          box-shadow: none;
}
.am-btn.am-round {
  border-radius: 1000px;
}
.am-btn.am-radius {
  border-radius: 2px;
}

.am-btn-danger {
  color: #fff;
  background-color: #dd514c;
  border-color: #dd514c;
}
a.am-btn-danger:visited {
  color: #fff;
}
.am-btn-danger:hover,
.am-btn-danger:focus,
.am-btn-danger:active,
.am-btn-danger.am-active,
.am-active .am-btn-danger.am-dropdown-toggle {
  color: #fff;
  border-color: #c62b26;
}
.am-btn-danger:hover,
.am-btn-danger:focus {
  background-color: #d7342e;
}
.am-btn-danger:active,
.am-btn-danger.am-active,
.am-active .am-btn-danger.am-dropdown-toggle {
  background-image: none;
  background-color: #be2924;
}
.am-btn-danger.am-disabled,
.am-btn-danger[disabled],
fieldset[disabled] .am-btn-danger,
.am-btn-danger.am-disabled:hover,
.am-btn-danger[disabled]:hover,
fieldset[disabled] .am-btn-danger:hover,
.am-btn-danger.am-disabled:focus,
.am-btn-danger[disabled]:focus,
fieldset[disabled] .am-btn-danger:focus,
.am-btn-danger.am-disabled:active,
.am-btn-danger[disabled]:active,
fieldset[disabled] .am-btn-danger:active,
.am-btn-danger.am-disabled.am-active,
.am-btn-danger[disabled].am-active,
fieldset[disabled] .am-btn-danger.am-active {
  background-color: #dd514c;
  border-color: #dd514c;
}
.am-btn-group .am-btn-danger,
.am-btn-group-stacked .am-btn-danger {
  border-color: #d93c37;
}

/* button size */
.am-btn-xs {
  font-size: 1.2rem;
}
.am-btn-sm {
  font-size: 1.4rem;
}
.am-btn-lg {
  font-size: 1.8rem;
}
.am-btn-xl {
  font-size: 2rem;
}
.hope {
	color: #fff;
	font-size: 1.6rem;
    background: #dd514c;
    padding: 20px 0;
}
</style>
	
	<!--[if lte IE 8]>
<div class="text-xs-center m-b-0 bg-blue-grey-100 alert">
    <button type="button" class="close" aria-label="Close" data-dismiss="alert">
        <span aria-hidden="true">×</span>
    </button>
    你正在使用一个 <strong>过时</strong> 的浏览器。请 <a href=https://browsehappy.com/ target=_blank>升级您的浏览器</a>，以提高您的体验。</div>
<![endif]-->

	<body>
		<header class="head_nav_met_27_1" m-id='1' m-type="head_nav">
			<div class="container top-box">
				<div class="row">
					<div class="top-header">
						<div class="logo-box">
							<a href="main.do" class="met-logo" title="维和培训基础信息软件系统">
								<h1 style="color: red;font-weight: bold;">维和培训基础信息软件系统</h1>
							</a>
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
							<img class="cover-image" src="img/demo/14.jpg" sizes="(max-width: 767px) 767px" alt="" data-height='0|0|0' data-fade="true" data-autoplayspeed=4000>
						</div>
					</div>
				</div>
			</div>
			<br>
			<main class="news_list_page_met_28_1 met-news">
				<div class="container">
					<div class="row">
						<div class="col-md-9 met-news-body">
							<div class="row">
								<div class="met-news-list">						
									<ul class="ulstyle met-pager-ajax imagesize" data-scale='400x400' m-id='12'>
										<li class='border-bottom1'>
											<h4>
											<a href="content.do" title="2017年奋发镇人民政府预算基本情况说明" target=_self>韩国驻华使馆警务参赞一行来院访问 </a></h4>
											<p class="des font-weight-300">
											7月11日下午，韩国驻华使馆警务参赞金男炫一行3人来院参观访问，着重了解中国维和警察培训中心的培训课程设置、训练装备和场地设施。维和培训部胡建国主任、封卓政委等领导会见了来宾，并进行了友好深入的会谈交流。我国驻韩使馆候任警务参赞、北京市公安局国际警务联络处寇波处长参加了会见。
											</p>
											<p class="info font-weight-300">
												<span>2018-03-23</span>
												<span></span>
												<span><i class="icono-eye" style="width: 15px;height: 15px;" aria-hidden="true"></i>1</span>
											</p>
										</li>
										<!-- 极简模式 -->
										<li class='border-bottom1'>
											<h4>
			<a href="content.do" title="2017年奋发镇人民政府预算基本情况说明" target=_self>维和培训部开展假前实验室安全工作大检查</a>
		</h4>
											<p class="des font-weight-300">
											根据学院假前实验室安全检查工作安排，7月12日上午，消防指挥系开展了假前实验室安全检查工作。消防指挥系副主任刘立文、教学办公室主任潘兴军、实验实训中心副主任梁强、抢险救援教研室主任王振雄、核生化消防教研室主任胡定煜及各实验室负责人和教学办公室相关人员参加了此次安全检查工作。
											</p>
											<p class="info font-weight-300">
												<span>2018-03-23</span>
												<span></span>
												<span><i class="icono-eye" style="width: 15px;height: 15px;"  aria-hidden="true"></i>0</span>
											</p>
										</li>
										<!-- 极简模式 -->
										<li class='border-bottom1'>
											<h4>
			<a href="content.do" title="2016年奋发镇人民政府结算基本情况说明" target=_self>维和培训部召开2018年北戴河暑期实习动员大会</a>
		</h4>
											<p class="des font-weight-300">
											首先，徐志达主任传达了《关于做好北戴河暑期安保任务的通知》的相关要求，对执勤规范、日常管理、后勤保障等方面进行说明。而后，学员和队干部代表分别进行了表态发言，对此次安保任务表明了坚定决心。最后，张平部长对全体参勤人员提出了四点希望和要求：一是树立忠诚警魂，坚定必胜信念。二是遵守各项纪律，确保绝对安全。三是认真学习总结，提升业务本领。四是强化组织管理，凝聚军心士气。
											</p>
											<p class="info font-weight-300">
												<span>2018-03-23</span>
												<span></span>
												<span><i class="icono-eye" style="width: 15px;height: 15px;"  aria-hidden="true"></i>0</span>
											</p>
										</li>
										<!-- 极简模式 -->
										<li class='border-bottom1'>
											<h4>
			<a href="content.do" title="2014奋发镇政府信息公开工作年度报告" target=_self>维和培训部严密组织试卷评阅工作</a>
		</h4>
											<p class="des font-weight-300">
											一是严格落实试卷保管制度，按照制度要求，由教研室主任亲自负责试卷的集中统一保管工作，每次试卷评阅前和结束后，都存入试卷保管专用柜，严禁任何人员单独接触试卷；二是严格遵守试卷评阅程序，各教研室分别组织人员进行集体评阅，保证每份试卷阅卷教师不少于3人，分题进行流水评阅；三是严格把握试卷评分标准，各教研室考前集体研究，严密制定参考答案和评分细则，评阅中统一给分标准，严格进行试卷评阅。
											</p>
											<p class="info font-weight-300">
												<span>2018-03-23</span>
												<span></span>
												<span><i class="icono-eye" style="width: 15px;height: 15px;"  aria-hidden="true"></i>0</span>
											</p>
										</li>
										<!-- 极简模式 -->
										<li class='border-bottom1'>
											<h4>
			<a href="content.do" title="2015奋发镇政府信息公开工作年度报告" target=_self>学报编辑部派员参加军事科学院主办首届“军事...</a>
		</h4>
											<p class="des font-weight-300">
											考前，灭火指挥教研室夏登友主任组织召开了试卷评阅及复核工作部署会，教研室全体教师参加了会议。会上，夏登友主任首先组织大家学习了试卷评阅及复核工作方案等文件精神，并就历年试卷评阅及复核中发现的主要问题进行剖析说明，进一步统一了试卷评阅及复核工作标准。考试结束后，教研室教师统一到教务处密封试卷，全体阅卷人员统一在系320教师发展中心进行集体评阅试卷。
											</p>
											<p class="info font-weight-300">
												<span>2018-03-23</span>
												<span></span>
												<span><i class="icono-eye" style="width: 15px;height: 15px;"  aria-hidden="true"></i>0</span>
											</p>
										</li>
									</ul>
									<div class='m-t-20 text-xs-center hidden-sm-down' m-type="nosysdata" style="margin-bottom: 10px;text-align: center;">
										<div class='met_pager'><button onclick="uppage()" class='PreSpan'>上一页</button>
											<a href='' class='Ahover'>1&nbsp;</a><button class='NextSpan' onclick="downpage()">下一页</button>
											<span class='PageText'>转至第</span>
											<input type='text' style="width: 5%;" id='metPageT' data-pageurl='index.php?lang=cn&class2=3&page=||1' value='1' />页
											<input type='button' id='metPageB' value='跳转' />
										</div>
									</div>
									<div class="met_pager met-pager-ajax-link hidden-md-up" data-plugin="appear" data-animate="slide-bottom" data-repeat="false" m-type="nosysdata">
										<button type="button" class="btn btn-primary btn-block btn-squared ladda-button" id="met-pager-btn" data-plugin="ladda" data-style="slide-left" data-url="" data-page="1">
            				        	<i class="icon wb-chevron-down m-r-5" aria-hidden="true"></i>
            				    		</button>
									</div>
								</div>
							</div>
						</div>

						<div class="col-md-3">
							<div class="row">
								<aside class="sidebar_met_28_1 met-sidebar panel panel-body m-b-0" boxmh-h m-id='13' m-type='nocontent'>
									<form class='sidebar-search' method='get' action=" ">
										<input type='hidden' name='lang' value='cn' />
										<input type='hidden' name='class1' value='2' />
										<div class="form-group">
											<div class="input-search">
												<button type="submit" class="input-search-btn" style="background-color:#DCDEE0;">
					                               <li><a target='_self ' title="搜索" class="">搜索</a></li>
				                                </button>
												<input type="text" class="form-control" name="searchword" placeholder="search">
											</div>
										</div>
									</form>
									<ul class="sidebar-column list-icons">
										<li>
											<button class="am-btn am-btn-danger am-btn-sm">2018年</button>
											
										</li>
										<li>
											<button class="am-btn am-btn-danger am-btn-sm">2017年</button>
											
										</li>
										<li>
											<button class="am-btn am-btn-danger am-btn-sm">2016年</button>
											
										</li>
										<li>
											<button class="am-btn am-btn-danger am-btn-sm">2015年</button>
											
										</li>
										<li>
											<button class="am-btn am-btn-danger am-btn-sm">2014年</button>
											
										</li>
										
									</ul>
								</aside>
							</div>
						</div>
					</div>
				</div>
			</main>

			<footer class='foot_info_met_16_1 met-foot p-y-20 border-top1' m-id='9' m-type='foot'>
			<div class="container text-xs-center">
		    		<p>武警维和培训部 版权所有</p>
				    		<p>本页面内容为网站演示数据，前台页面内容都可以在后台修改。</p>
				    		    		<div class="powered_by_metinfo">
			Powered by <b><a href="" target="_blank">yusi 6.0.0</a></b> ©2008-2018 &nbsp;<a href="" target="_blank">Yusi Inc.</a>		</div>
		<ul class="met-langlist p-0"></ul>
			</div>
		</footer>
		<script src="assets/js/jquery-1.6.2.min.js"></script>
	</body>
	<script>
	</script>

</html>