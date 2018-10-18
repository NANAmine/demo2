<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
	<div class="am-offcanvas-bar admin-offcanvas-bar">
		<ul class="am-list admin-sidebar-list">
			<li><a href="main.do"><span class="am-icon-sign-out"></span> 首页</a></li>
			<li class="admin-parent">
				<a class="am-cf" data-am-collapse="{target: '#collapse-nav'}"><span class="am-icon-bars"></span> 系统管理<span class="am-icon-angle-right am-fr am-margin-right"></span></a>
				<ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav">
					<li><a href="show_add_user.do" class="am-cf"><span class="am-icon-child"></span> 用户管理</a></li>
					<li><a href="show_add_system_cfg.do" class="am-cf"><span class="am-icon-cog"></span> 首页管理</a></li>
					<li><a href="show_goodsClass_list.do" class="am-cf"><span class="am-icon-sitemap"></span> 装备大类</a></li>
					<li><a href="show_goodsSubClass_list.do" class="am-cf"><span class="am-icon-sitemap"></span> 装备小类</a></li>
					<li><a href="show_syslog_list.do" class="am-cf"><span class="am-icon-edit"></span> 系统日志</a></li>
				</ul>
			</li>
			<li class="admin-parent">
				<a class="am-cf" data-am-collapse="{target: '#collapse-nav1'}"><span class="am-icon-bars"></span> 信息管理<span class="am-icon-angle-right am-fr am-margin-right"></span></a>
				<ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav1">
					<li><a href="show_content_list.do" class="am-cf"><span class="am-icon-pencil-square"></span> 事件管理</a>
					<li><a href="show_books_list.do"" class="am-cf"><span class="am-icon-book"></span> 书籍管理</a>
					<li><a href="show_member_list.do"" class="am-cf"><span class="am-icon-users"></span> 人员管理</a>
					<li><a href="show_goods_list.do" class="am-cf"><span class="am-icon-industry"></span> 装备管理</a></li>
				</ul>
			</li>
			<li class="admin-parent">
				<a class="am-cf" data-am-collapse="{target: '#collapse-nav2'}"><span class="am-icon-bars"></span> 信息查看<span class="am-icon-angle-right am-fr am-margin-right"></span></a>
				<ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav2">
					<li><a href="search_books_list.do" class="am-cf"><span class="am-icon-book"></span> 书籍查看</a>
					<li><a href="search_member_list.do" class="am-cf"><span class="am-icon-users"></span> 人员查看</a>
					<li><a href="search_goods_list.do" class="am-cf"><span class="am-icon-industry"></span> 装备查看</a></li>
				</ul>
			</li>
		</ul>
	
	<div class="am-panel am-panel-default admin-sidebar-panel">
      <div class="am-panel-bd">
        <p><span class="am-icon-bookmark"></span> 公告</p>
        <p>暂无公告</p>
      </div>
    </div>
    
	</div>
</div>