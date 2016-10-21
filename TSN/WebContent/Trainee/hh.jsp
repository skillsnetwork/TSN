<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<meta charset="utf-8"/>
<title>Skills Network | Pages - New User Profile</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description"/>
<meta content="" name="author"/>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=all" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link href="assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/pages/css/profile.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/pages/css/tasks.css" rel="stylesheet" type="text/css"/>
<!-- END PAGE LEVEL STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="assets/global/css/components-rounded.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/layout4/css/layout.css" rel="stylesheet" type="text/css"/>
<link id="style_color" href="assets/admin/layout4/css/themes/light.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/layout4/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->

<body class="page-header-fixed page-sidebar-closed page-sidebar-closed-hide-logo">
<!-- BEGIN HEADER -->
<div class="page-header navbar navbar-fixed-top">
	<!-- BEGIN HEADER INNER -->
	<div class="page-header-inner">
		<!-- BEGIN LOGO -->
		<div class="page-logo">
			<a href="index-2.html">
			<img src="assets/admin/layout4/img/logo-light.png" alt="logo" class="logo-default"/>
			</a>
			<div class="menu-toggler sidebar-toggler">
				<!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
			</div>
		</div>
		<!-- END LOGO -->
		<!-- BEGIN RESPONSIVE MENU TOGGLER -->
		<a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
		</a>
		<!-- END RESPONSIVE MENU TOGGLER -->
		<!-- BEGIN PAGE ACTIONS -->
		<!-- DOC: Remove "hide" class to enable the page header actions -->
		<div class="page-actions">
			<div class="btn-group">
				<button type="button" class="btn red-haze btn-sm dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
				<span class="hidden-sm hidden-xs">Actions&nbsp;</span><i class="fa fa-angle-down"></i>
				</button>
				<ul class="dropdown-menu" role="menu">
					<li>
						<a href="javascript:;">
						<i class="icon-docs"></i> New Post </a>
					</li>
					<li>
						<a href="javascript:;">
						<i class="icon-tag"></i> New Comment </a>
					</li>
					<li>
						<a href="javascript:;">
						<i class="icon-share"></i> Share </a>
					</li>
					<li class="divider">
					</li>
					<li>
						<a href="javascript:;">
						<i class="icon-flag"></i> Comments <span class="badge badge-success">4</span>
						</a>
					</li>
					<li>
						<a href="javascript:;">
						<i class="icon-users"></i> Feedbacks <span class="badge badge-danger">2</span>
						</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- END PAGE ACTIONS -->
		<!-- BEGIN PAGE TOP -->
		<div class="page-top">
			<!-- BEGIN HEADER SEARCH BOX -->
			<!-- DOC: Apply "search-form-expanded" right after the "search-form" class to have half expanded search box -->
			<form class="search-form" action="http://www.keenthemes.com/preview/metronic/theme/templates/admin4/extra_search.html" method="GET">
				<div class="input-group">
					<input type="text" class="form-control input-sm" placeholder="Search..." name="query">
					<span class="input-group-btn">
					<a href="javascript:;" class="btn submit"><i class="icon-magnifier"></i></a>
					</span>
				</div>
			</form>
			<!-- END HEADER SEARCH BOX -->
			<!-- BEGIN TOP NAVIGATION MENU -->
			<div class="top-menu">
				<ul class="nav navbar-nav pull-right">
					<li class="separator hide">
					</li>
					<!-- BEGIN NOTIFICATION DROPDOWN -->
					<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
					<li class="dropdown dropdown-extended dropdown-notification dropdown-dark" id="header_notification_bar">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
						<i class="icon-bell"></i>
						<span class="badge badge-success">
						7 </span>
						</a>
						<ul class="dropdown-menu">
							<li class="external">
								<h3><span class="bold">12 pending</span> notifications</h3>
								<a href="extra_profile.html">view all</a>
							</li>
							<li>
								<ul class="dropdown-menu-list scroller" style="height: 250px;" data-handle-color="#637283">
									<li>
										<a href="javascript:;">
										<span class="time">just now</span>
										<span class="details">
										<span class="label label-sm label-icon label-success">
										<i class="fa fa-plus"></i>
										</span>
										New user registered. </span>
										</a>
									</li>
									<li>
										<a href="javascript:;">
										<span class="time">3 mins</span>
										<span class="details">
										<span class="label label-sm label-icon label-danger">
										<i class="fa fa-bolt"></i>
										</span>
										Server #12 overloaded. </span>
										</a>
									</li>
									<li>
										<a href="javascript:;">
										<span class="time">10 mins</span>
										<span class="details">
										<span class="label label-sm label-icon label-warning">
										<i class="fa fa-bell-o"></i>
										</span>
										Server #2 not responding. </span>
										</a>
									</li>
									<li>
										<a href="javascript:;">
										<span class="time">14 hrs</span>
										<span class="details">
										<span class="label label-sm label-icon label-info">
										<i class="fa fa-bullhorn"></i>
										</span>
										Application error. </span>
										</a>
									</li>
									<li>
										<a href="javascript:;">
										<span class="time">2 days</span>
										<span class="details">
										<span class="label label-sm label-icon label-danger">
										<i class="fa fa-bolt"></i>
										</span>
										Database overloaded 68%. </span>
										</a>
									</li>
									<li>
										<a href="javascript:;">
										<span class="time">3 days</span>
										<span class="details">
										<span class="label label-sm label-icon label-danger">
										<i class="fa fa-bolt"></i>
										</span>
										A user IP blocked. </span>
										</a>
									</li>
									<li>
										<a href="javascript:;">
										<span class="time">4 days</span>
										<span class="details">
										<span class="label label-sm label-icon label-warning">
										<i class="fa fa-bell-o"></i>
										</span>
										Storage Server #4 not responding dfdfdfd. </span>
										</a>
									</li>
									<li>
										<a href="javascript:;">
										<span class="time">5 days</span>
										<span class="details">
										<span class="label label-sm label-icon label-info">
										<i class="fa fa-bullhorn"></i>
										</span>
										System Error. </span>
										</a>
									</li>
									<li>
										<a href="javascript:;">
										<span class="time">9 days</span>
										<span class="details">
										<span class="label label-sm label-icon label-danger">
										<i class="fa fa-bolt"></i>
										</span>
										Storage server failed. </span>
										</a>
									</li>
								</ul>
							</li>
						</ul>
					</li>
					<!-- END NOTIFICATION DROPDOWN -->
					<li class="separator hide">
					</li>
					<!-- BEGIN INBOX DROPDOWN -->
					<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
					<li class="dropdown dropdown-extended dropdown-inbox dropdown-dark" id="header_inbox_bar">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
						<i class="icon-envelope-open"></i>
						<span class="badge badge-danger">
						4 </span>
						</a>
						<ul class="dropdown-menu">
							<li class="external">
								<h3>You have <span class="bold">7 New</span> Messages</h3>
								<a href="inbox.html">view all</a>
							</li>
							<li>
								<ul class="dropdown-menu-list scroller" style="height: 275px;" data-handle-color="#637283">
									<li>
										<a href="inbox14c8.html?a=view">
										<span class="photo">
										<img src="assets/admin/layout3/img/avatar2.jpg" class="img-circle" alt="">
										</span>
										<span class="subject">
										<span class="from">
										Lisa Wong </span>
										<span class="time">Just Now </span>
										</span>
										<span class="message">
										Vivamus sed auctor nibh congue nibh. auctor nibh auctor nibh... </span>
										</a>
									</li>
									<li>
										<a href="inbox14c8.html?a=view">
										<span class="photo">
										<img src="assets/admin/layout3/img/avatar3.jpg" class="img-circle" alt="">
										</span>
										<span class="subject">
										<span class="from">
										Richard Doe </span>
										<span class="time">16 mins </span>
										</span>
										<span class="message">
										Vivamus sed congue nibh auctor nibh congue nibh. auctor nibh auctor nibh... </span>
										</a>
									</li>
									<li>
										<a href="inbox14c8.html?a=view">
										<span class="photo">
										<img src="assets/admin/layout3/img/avatar1.jpg" class="img-circle" alt="">
										</span>
										<span class="subject">
										<span class="from">
										Bob Nilson </span>
										<span class="time">2 hrs </span>
										</span>
										<span class="message">
										Vivamus sed nibh auctor nibh congue nibh. auctor nibh auctor nibh... </span>
										</a>
									</li>
									<li>
										<a href="inbox14c8.html?a=view">
										<span class="photo">
										<img src="assets/admin/layout3/img/avatar2.jpg" class="img-circle" alt="">
										</span>
										<span class="subject">
										<span class="from">
										Lisa Wong </span>
										<span class="time">40 mins </span>
										</span>
										<span class="message">
										Vivamus sed auctor 40% nibh congue nibh... </span>
										</a>
									</li>
									<li>
										<a href="inbox14c8.html?a=view">
										<span class="photo">
										<img src="assets/admin/layout3/img/avatar3.jpg" class="img-circle" alt="">
										</span>
										<span class="subject">
										<span class="from">
										Richard Doe </span>
										<span class="time">46 mins </span>
										</span>
										<span class="message">
										Vivamus sed congue nibh auctor nibh congue nibh. auctor nibh auctor nibh... </span>
										</a>
									</li>
								</ul>
							</li>
						</ul>
					</li>
					<!-- END INBOX DROPDOWN -->
					<li class="separator hide">
					</li>
					<!-- BEGIN TODO DROPDOWN -->
					<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
					<li class="dropdown dropdown-extended dropdown-tasks dropdown-dark" id="header_task_bar">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
						<i class="icon-calendar"></i>
						<span class="badge badge-primary">
						3 </span>
						</a>
						<ul class="dropdown-menu extended tasks">
							<li class="external">
								<h3>You have <span class="bold">12 pending</span> tasks</h3>
								<a href="page_todo.html">view all</a>
							</li>
							<li>
								<ul class="dropdown-menu-list scroller" style="height: 275px;" data-handle-color="#637283">
									<li>
										<a href="javascript:;">
										<span class="task">
										<span class="desc">New release v1.2 </span>
										<span class="percent">30%</span>
										</span>
										<span class="progress">
										<span style="width: 40%;" class="progress-bar progress-bar-success" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">40% Complete</span></span>
										</span>
										</a>
									</li>
									<li>
										<a href="javascript:;">
										<span class="task">
										<span class="desc">Application deployment</span>
										<span class="percent">65%</span>
										</span>
										<span class="progress">
										<span style="width: 65%;" class="progress-bar progress-bar-danger" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">65% Complete</span></span>
										</span>
										</a>
									</li>
									<li>
										<a href="javascript:;">
										<span class="task">
										<span class="desc">Mobile app release</span>
										<span class="percent">98%</span>
										</span>
										<span class="progress">
										<span style="width: 98%;" class="progress-bar progress-bar-success" aria-valuenow="98" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">98% Complete</span></span>
										</span>
										</a>
									</li>
									<li>
										<a href="javascript:;">
										<span class="task">
										<span class="desc">Database migration</span>
										<span class="percent">10%</span>
										</span>
										<span class="progress">
										<span style="width: 10%;" class="progress-bar progress-bar-warning" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">10% Complete</span></span>
										</span>
										</a>
									</li>
									<li>
										<a href="javascript:;">
										<span class="task">
										<span class="desc">Web server upgrade</span>
										<span class="percent">58%</span>
										</span>
										<span class="progress">
										<span style="width: 58%;" class="progress-bar progress-bar-info" aria-valuenow="58" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">58% Complete</span></span>
										</span>
										</a>
									</li>
									<li>
										<a href="javascript:;">
										<span class="task">
										<span class="desc">Mobile development</span>
										<span class="percent">85%</span>
										</span>
										<span class="progress">
										<span style="width: 85%;" class="progress-bar progress-bar-success" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">85% Complete</span></span>
										</span>
										</a>
									</li>
									<li>
										<a href="javascript:;">
										<span class="task">
										<span class="desc">New UI release</span>
										<span class="percent">38%</span>
										</span>
										<span class="progress progress-striped">
										<span style="width: 38%;" class="progress-bar progress-bar-important" aria-valuenow="18" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">38% Complete</span></span>
										</span>
										</a>
									</li>
								</ul>
							</li>
						</ul>
					</li>
					<!-- END TODO DROPDOWN -->
					<!-- BEGIN USER LOGIN DROPDOWN -->
					<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
					<li class="dropdown dropdown-user dropdown-dark">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
						<span class="username username-hide-on-mobile">
						Nick </span>
						<!-- DOC: Do not remove below empty space(&nbsp;) as its purposely used -->
						<img alt="" class="img-circle" src="assets/admin/layout4/img/avatar9.jpg"/>
						</a>
						<ul class="dropdown-menu dropdown-menu-default">
							<li>
								<a href="extra_profile.html">
								<i class="icon-user"></i> My Profile </a>
							</li>
							<li>
								<a href="page_calendar.html">
								<i class="icon-calendar"></i> My Calendar </a>
							</li>
							<li>
								<a href="inbox.html">
								<i class="icon-envelope-open"></i> My Inbox <span class="badge badge-danger">
								3 </span>
								</a>
							</li>
							<li>
								<a href="page_todo.html">
								<i class="icon-rocket"></i> My Tasks <span class="badge badge-success">
								7 </span>
								</a>
							</li>
							<li class="divider">
							</li>
							<li>
								<a href="extra_lock.html">
								<i class="icon-lock"></i> Lock Screen </a>
							</li>
							<li>
								<a href="login.html">
								<i class="icon-key"></i> Log Out </a>
							</li>
						</ul>
					</li>
					<!-- END USER LOGIN DROPDOWN -->
				</ul>
			</div>
			<!-- END TOP NAVIGATION MENU -->
		</div>
		<!-- END PAGE TOP -->
	</div>
	<!-- END HEADER INNER -->
</div>
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
	<!-- BEGIN SIDEBAR -->
	
	<!-- END SIDEBAR -->
	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">
			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
							<h4 class="modal-title">Modal title</h4>
						</div>
						<div class="modal-body">
							 Widget settings form goes here
						</div>
						<div class="modal-footer">
							<button type="button" class="btn blue">Save changes</button>
							<button type="button" class="btn default" data-dismiss="modal">Close</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<!-- BEGIN PAGE HEADER-->
			<!-- BEGIN PAGE HEAD -->
			<div class="page-head">
				<!-- BEGIN PAGE TITLE -->
				<div class="page-title">
					<h1>New User Profile <small>user profile page sample</small></h1>
				</div>
				<!-- END PAGE TITLE -->
				<!-- BEGIN PAGE TOOLBAR -->
				<div class="page-toolbar">
					<!-- BEGIN THEME PANEL -->
					<div class="btn-group btn-theme-panel">
						<a href="javascript:;" class="btn dropdown-toggle" data-toggle="dropdown">
						<i class="icon-settings"></i>
						</a>
						<div class="dropdown-menu theme-panel pull-right dropdown-custom hold-on-click">
							<div class="row">
								<div class="col-md-4 col-sm-4 col-xs-12">
									<h3>THEME</h3>
									<ul class="theme-colors">
										<li class="theme-color theme-color-default active" data-theme="default">
											<span class="theme-color-view"></span>
											<span class="theme-color-name">Dark Header</span>
										</li>
										<li class="theme-color theme-color-light" data-theme="light">
											<span class="theme-color-view"></span>
											<span class="theme-color-name">Light Header</span>
										</li>
									</ul>
								</div>
								<div class="col-md-8 col-sm-8 col-xs-12 seperator">
									<h3>LAYOUT</h3>
									<ul class="theme-settings">
										<li>
											 Theme Style
											<select class="layout-style-option form-control input-small input-sm">
												<option value="square" selected="selected">Square corners</option>
												<option value="rounded">Rounded corners</option>
											</select>
										</li>
										<li>
											 Layout
											<select class="layout-option form-control input-small input-sm">
												<option value="fluid" selected="selected">Fluid</option>
												<option value="boxed">Boxed</option>
											</select>
										</li>
										<li>
											 Header
											<select class="page-header-option form-control input-small input-sm">
												<option value="fixed" selected="selected">Fixed</option>
												<option value="default">Default</option>
											</select>
										</li>
										<li>
											 Top Dropdowns
											<select class="page-header-top-dropdown-style-option form-control input-small input-sm">
												<option value="light">Light</option>
												<option value="dark" selected="selected">Dark</option>
											</select>
										</li>
										<li>
											 Sidebar Mode
											<select class="sidebar-option form-control input-small input-sm">
												<option value="fixed">Fixed</option>
												<option value="default" selected="selected">Default</option>
											</select>
										</li>
										<li>
											 Sidebar Menu
											<select class="sidebar-menu-option form-control input-small input-sm">
												<option value="accordion" selected="selected">Accordion</option>
												<option value="hover">Hover</option>
											</select>
										</li>
										<li>
											 Sidebar Position
											<select class="sidebar-pos-option form-control input-small input-sm">
												<option value="left" selected="selected">Left</option>
												<option value="right">Right</option>
											</select>
										</li>
										<li>
											 Footer
											<select class="page-footer-option form-control input-small input-sm">
												<option value="fixed">Fixed</option>
												<option value="default" selected="selected">Default</option>
											</select>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- END THEME PANEL -->
				</div>
				<!-- END PAGE TOOLBAR -->
			</div>
			<!-- END PAGE HEAD -->
			<!-- BEGIN PAGE BREADCRUMB -->
			<ul class="page-breadcrumb breadcrumb">
				<li>
					<a href="index-2.html">Home</a>
					<i class="fa fa-circle"></i>
				</li>
				<li>
					<a href="#">Pages</a>
					<i class="fa fa-circle"></i>
				</li>
				<li>
					<a href="#">New User Profile</a>
				</li>
			</ul>
			<!-- END PAGE BREADCRUMB -->
			<!-- END PAGE HEADER-->
			<!-- BEGIN PAGE CONTENT-->
			<div class="row">
				<div class="col-md-12">
					<!-- BEGIN PROFILE SIDEBAR -->
					<div class="profile-sidebar" style="width: 250px;">
						<!-- PORTLET MAIN -->
						<div class="portlet light profile-sidebar-portlet">
							<!-- SIDEBAR USERPIC -->
							<div class="profile-userpic">
								<img src="assets/admin/pages/media/profile/profile_user.jpg" class="img-responsive" alt="">
							</div>
							<!-- END SIDEBAR USERPIC -->
							<!-- SIDEBAR USER TITLE -->
							<div class="profile-usertitle">
								<div class="profile-usertitle-name">
									 Marcus Doe
								</div>
								<div class="profile-usertitle-job">
									 Developer
								</div>
							</div>
							<!-- END SIDEBAR USER TITLE -->
							<!-- SIDEBAR BUTTONS -->
							<div class="profile-userbuttons">
								<button type="button" class="btn btn-circle green-haze btn-sm">Follow</button>
								<button type="button" class="btn btn-circle btn-danger btn-sm">Message</button>
							</div>
							<!-- END SIDEBAR BUTTONS -->
							<!-- SIDEBAR MENU -->
							<div class="profile-usermenu">
								<ul class="nav">
									<li class="active">
										<a href="extra_profile.html">
										<i class="icon-home"></i>
										Overview </a>
									</li>
									<li>
										<a href="extra_profile_account.html">
										<i class="icon-settings"></i>
										Account Settings </a>
									</li>
									<li>
										<a href="page_todo.html" target="_blank">
										<i class="icon-check"></i>
										Tasks </a>
									</li>
									<li>
										<a href="extra_profile_help.html">
										<i class="icon-info"></i>
										Help </a>
									</li>
								</ul>
							</div>
							<!-- END MENU -->
						</div>
						<!-- END PORTLET MAIN -->
						<!-- PORTLET MAIN -->
						<div class="portlet light">
							<!-- STAT -->
							<div class="row list-separated profile-stat">
								<div class="col-md-4 col-sm-4 col-xs-6">
									<div class="uppercase profile-stat-title">
										 37
									</div>
									<div class="uppercase profile-stat-text">
										 Projects
									</div>
								</div>
								<div class="col-md-4 col-sm-4 col-xs-6">
									<div class="uppercase profile-stat-title">
										 51
									</div>
									<div class="uppercase profile-stat-text">
										 Tasks
									</div>
								</div>
								<div class="col-md-4 col-sm-4 col-xs-6">
									<div class="uppercase profile-stat-title">
										 61
									</div>
									<div class="uppercase profile-stat-text">
										 Uploads
									</div>
								</div>
							</div>
							<!-- END STAT -->
							<div>
								<h4 class="profile-desc-title">About Marcus Doe</h4>
								<span class="profile-desc-text"> Lorem ipsum dolor sit amet diam nonummy nibh dolore. </span>
								<div class="margin-top-20 profile-desc-link">
									<i class="fa fa-globe"></i>
									<a href="http://www.keenthemes.com/">www.keenthemes.com</a>
								</div>
								<div class="margin-top-20 profile-desc-link">
									<i class="fa fa-twitter"></i>
									<a href="http://www.twitter.com/keenthemes/">@keenthemes</a>
								</div>
								<div class="margin-top-20 profile-desc-link">
									<i class="fa fa-facebook"></i>
									<a href="http://www.facebook.com/keenthemes/">keenthemes</a>
								</div>
							</div>
						</div>
						<!-- END PORTLET MAIN -->
					</div>
					<!-- END BEGIN PROFILE SIDEBAR -->
					<!-- BEGIN PROFILE CONTENT -->
					<div class="profile-content">
						<div class="row">
							<div class="col-md-6">
								<!-- BEGIN PORTLET -->
								<div class="portlet light ">
									<div class="portlet-title">
										<div class="caption caption-md">
											<i class="icon-bar-chart theme-font hide"></i>
											<span class="caption-subject font-blue-madison bold uppercase">Your Activity</span>
											<span class="caption-helper hide">weekly stats...</span>
										</div>
										<div class="actions">
											<div class="btn-group btn-group-devided" data-toggle="buttons">
												<label class="btn btn-transparent grey-salsa btn-circle btn-sm active">
												<input type="radio" name="options" class="toggle" id="option1">Today</label>
												<label class="btn btn-transparent grey-salsa btn-circle btn-sm">
												<input type="radio" name="options" class="toggle" id="option2">Week</label>
												<label class="btn btn-transparent grey-salsa btn-circle btn-sm">
												<input type="radio" name="options" class="toggle" id="option2">Month</label>
											</div>
										</div>
									</div>
									<div class="portlet-body">
										<div class="row number-stats margin-bottom-30">
											<div class="col-md-6 col-sm-6 col-xs-6">
												<div class="stat-left">
													<div class="stat-chart">
														<!-- do not line break "sparkline_bar" div. sparkline chart has an issue when the container div has line break -->
														<div id="sparkline_bar"></div>
													</div>
													<div class="stat-number">
														<div class="title">
															 Total
														</div>
														<div class="number">
															 246
														</div>
													</div>
												</div>
											</div>
											<div class="col-md-6 col-sm-6 col-xs-6">
												<div class="stat-right">
													<div class="stat-chart">
														<!-- do not line break "sparkline_bar" div. sparkline chart has an issue when the container div has line break -->
														<div id="sparkline_bar2"></div>
													</div>
													<div class="stat-number">
														<div class="title">
															 New
														</div>
														<div class="number">
															 719
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="table-scrollable table-scrollable-borderless">
											<table class="table table-hover table-light">
											<thead>
											<tr class="uppercase">
												<th colspan="2">
													 MEMBER
												</th>
												<th>
													 Earnings
												</th>
												<th>
													 CASES
												</th>
												<th>
													 CLOSED
												</th>
												<th>
													 RATE
												</th>
											</tr>
											</thead>
											<tr>
												<td class="fit">
													<img class="user-pic" src="assets/admin/layout3/img/avatar4.jpg">
												</td>
												<td>
													<a href="javascript:;" class="primary-link">Brain</a>
												</td>
												<td>
													 $345
												</td>
												<td>
													 45
												</td>
												<td>
													 124
												</td>
												<td>
													<span class="bold theme-font">80%</span>
												</td>
											</tr>
											<tr>
												<td class="fit">
													<img class="user-pic" src="assets/admin/layout3/img/avatar5.jpg">
												</td>
												<td>
													<a href="javascript:;" class="primary-link">Nick</a>
												</td>
												<td>
													 $560
												</td>
												<td>
													 12
												</td>
												<td>
													 24
												</td>
												<td>
													<span class="bold theme-font">67%</span>
												</td>
											</tr>
											<tr>
												<td class="fit">
													<img class="user-pic" src="assets/admin/layout3/img/avatar6.jpg">
												</td>
												<td>
													<a href="javascript:;" class="primary-link">Tim</a>
												</td>
												<td>
													 $1,345
												</td>
												<td>
													 450
												</td>
												<td>
													 46
												</td>
												<td>
													<span class="bold theme-font">98%</span>
												</td>
											</tr>
											<tr>
												<td class="fit">
													<img class="user-pic" src="assets/admin/layout3/img/avatar7.jpg">
												</td>
												<td>
													<a href="javascript:;" class="primary-link">Tom</a>
												</td>
												<td>
													 $645
												</td>
												<td>
													 50
												</td>
												<td>
													 89
												</td>
												<td>
													<span class="bold theme-font">58%</span>
												</td>
											</tr>
											</table>
										</div>
									</div>
								</div>
								<!-- END PORTLET -->
							</div>
							<div class="col-md-6">
								<!-- BEGIN PORTLET -->
								<div class="portlet light">
									<div class="portlet-title tabbable-line">
										<div class="caption caption-md">
											<i class="icon-globe theme-font hide"></i>
											<span class="caption-subject font-blue-madison bold uppercase">Feeds</span>
										</div>
										<ul class="nav nav-tabs">
											<li class="active">
												<a href="#tab_1_1" data-toggle="tab">
												System </a>
											</li>
											<li>
												<a href="#tab_1_2" data-toggle="tab">
												Activities </a>
											</li>
										</ul>
									</div>
									<div class="portlet-body">
										<!--BEGIN TABS-->
										<div class="tab-content">
											<div class="tab-pane active" id="tab_1_1">
												<div class="scroller" style="height: 320px;" data-always-visible="1" data-rail-visible1="0" data-handle-color="#D7DCE2">
													<ul class="feeds">
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-success">
																			<i class="fa fa-bell-o"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 You have 4 pending tasks. <span class="label label-sm label-info">
																			Take action <i class="fa fa-share"></i>
																			</span>
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 Just now
																</div>
															</div>
														</li>
														<li>
															<a href="javascript:;">
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-success">
																			<i class="fa fa-bell-o"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 New version v1.4 just lunched!
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 20 mins
																</div>
															</div>
															</a>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-danger">
																			<i class="fa fa-bolt"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 Database server #12 overloaded. Please fix the issue.
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 24 mins
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-info">
																			<i class="fa fa-bullhorn"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 New order received and pending for process.
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 30 mins
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-success">
																			<i class="fa fa-bullhorn"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 New payment refund and pending approval.
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 40 mins
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-warning">
																			<i class="fa fa-plus"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 New member registered. Pending approval.
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 1.5 hours
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-success">
																			<i class="fa fa-bell-o"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 Web server hardware needs to be upgraded. <span class="label label-sm label-default ">
																			Overdue </span>
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 2 hours
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-default">
																			<i class="fa fa-bullhorn"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 Prod01 database server is overloaded 90%.
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 3 hours
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-warning">
																			<i class="fa fa-bullhorn"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 New group created. Pending manager review.
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 5 hours
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-info">
																			<i class="fa fa-bullhorn"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 Order payment failed.
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 18 hours
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-default">
																			<i class="fa fa-bullhorn"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 New application received.
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 21 hours
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-info">
																			<i class="fa fa-bullhorn"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 Dev90 web server restarted. Pending overall system check.
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 22 hours
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-default">
																			<i class="fa fa-bullhorn"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 New member registered. Pending approval
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 21 hours
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-info">
																			<i class="fa fa-bullhorn"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 L45 Network failure. Schedule maintenance.
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 22 hours
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-default">
																			<i class="fa fa-bullhorn"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 Order canceled with failed payment.
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 21 hours
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-info">
																			<i class="fa fa-bullhorn"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 Web-A2 clound instance created. Schedule full scan.
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 22 hours
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-default">
																			<i class="fa fa-bullhorn"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 Member canceled. Schedule account review.
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 21 hours
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-info">
																			<i class="fa fa-bullhorn"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 New order received. Please take care of it.
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 22 hours
																</div>
															</div>
														</li>
													</ul>
												</div>
											</div>
											<div class="tab-pane" id="tab_1_2">
												<div class="scroller" style="height: 337px;" data-always-visible="1" data-rail-visible1="0" data-handle-color="#D7DCE2">
													<ul class="feeds">
														<li>
															<a href="javascript:;">
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-success">
																			<i class="fa fa-bell-o"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 New user registered
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 Just now
																</div>
															</div>
															</a>
														</li>
														<li>
															<a href="javascript:;">
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-success">
																			<i class="fa fa-bell-o"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 New order received
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 10 mins
																</div>
															</div>
															</a>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-danger">
																			<i class="fa fa-bolt"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 Order #24DOP4 has been rejected. <span class="label label-sm label-danger ">
																			Take action <i class="fa fa-share"></i>
																			</span>
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 24 mins
																</div>
															</div>
														</li>
														<li>
															<a href="javascript:;">
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-success">
																			<i class="fa fa-bell-o"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 New user registered
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 Just now
																</div>
															</div>
															</a>
														</li>
														<li>
															<a href="javascript:;">
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-success">
																			<i class="fa fa-bell-o"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 New user registered
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 Just now
																</div>
															</div>
															</a>
														</li>
														<li>
															<a href="javascript:;">
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-success">
																			<i class="fa fa-bell-o"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 New user registered
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 Just now
																</div>
															</div>
															</a>
														</li>
														<li>
															<a href="javascript:;">
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-success">
																			<i class="fa fa-bell-o"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 New user registered
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 Just now
																</div>
															</div>
															</a>
														</li>
														<li>
															<a href="javascript:;">
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-success">
																			<i class="fa fa-bell-o"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 New user registered
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 Just now
																</div>
															</div>
															</a>
														</li>
														<li>
															<a href="javascript:;">
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-success">
																			<i class="fa fa-bell-o"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 New user registered
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 Just now
																</div>
															</div>
															</a>
														</li>
														<li>
															<a href="javascript:;">
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-sm label-success">
																			<i class="fa fa-bell-o"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			 New user registered
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	 Just now
																</div>
															</div>
															</a>
														</li>
													</ul>
												</div>
											</div>
										</div>
										<!--END TABS-->
									</div>
								</div>
								<!-- END PORTLET -->
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<!-- BEGIN PORTLET -->
								<div class="portlet light">
									<div class="portlet-title">
										<div class="caption caption-md">
											<i class="icon-bar-chart theme-font hide"></i>
											<span class="caption-subject font-blue-madison bold uppercase">Customer Support</span>
											<span class="caption-helper">45 pending</span>
										</div>
										<div class="inputs">
											<div class="portlet-input input-inline input-small ">
												<div class="input-icon right">
													<i class="icon-magnifier"></i>
													<input type="text" class="form-control form-control-solid" placeholder="search...">
												</div>
											</div>
										</div>
									</div>
									<div class="portlet-body">
										<div class="scroller" style="height: 305px;" data-always-visible="1" data-rail-visible1="0" data-handle-color="#D7DCE2">
											<div class="general-item-list">
												<div class="item">
													<div class="item-head">
														<div class="item-details">
															<img class="item-pic" src="assets/admin/layout3/img/avatar4.jpg">
															<a href="#" class="item-name primary-link">Nick Larson</a>
															<span class="item-label">3 hrs ago</span>
														</div>
														<span class="item-status"><span class="badge badge-empty badge-success"></span> Open</span>
													</div>
													<div class="item-body">
														 Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
													</div>
												</div>
												<div class="item">
													<div class="item-head">
														<div class="item-details">
															<img class="item-pic" src="assets/admin/layout3/img/avatar3.jpg">
															<a href="#" class="item-name primary-link">Mark</a>
															<span class="item-label">5 hrs ago</span>
														</div>
														<span class="item-status"><span class="badge badge-empty badge-warning"></span> Pending</span>
													</div>
													<div class="item-body">
														 Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat tincidunt ut laoreet.
													</div>
												</div>
												<div class="item">
													<div class="item-head">
														<div class="item-details">
															<img class="item-pic" src="assets/admin/layout3/img/avatar6.jpg">
															<a href="#" class="item-name primary-link">Nick Larson</a>
															<span class="item-label">8 hrs ago</span>
														</div>
														<span class="item-status"><span class="badge badge-empty badge-primary"></span> Closed</span>
													</div>
													<div class="item-body">
														 Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh.
													</div>
												</div>
												<div class="item">
													<div class="item-head">
														<div class="item-details">
															<img class="item-pic" src="assets/admin/layout3/img/avatar7.jpg">
															<a href="#" class="item-name primary-link">Nick Larson</a>
															<span class="item-label">12 hrs ago</span>
														</div>
														<span class="item-status"><span class="badge badge-empty badge-danger"></span> Pending</span>
													</div>
													<div class="item-body">
														 Consectetuer adipiscing elit Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
													</div>
												</div>
												<div class="item">
													<div class="item-head">
														<div class="item-details">
															<img class="item-pic" src="assets/admin/layout3/img/avatar9.jpg">
															<a href="#" class="item-name primary-link">Richard Stone</a>
															<span class="item-label">2 days ago</span>
														</div>
														<span class="item-status"><span class="badge badge-empty badge-danger"></span> Open</span>
													</div>
													<div class="item-body">
														 Lorem ipsum dolor sit amet, consectetuer adipiscing elit, ut laoreet dolore magna aliquam erat volutpat.
													</div>
												</div>
												<div class="item">
													<div class="item-head">
														<div class="item-details">
															<img class="item-pic" src="assets/admin/layout3/img/avatar8.jpg">
															<a href="#" class="item-name primary-link">Dan</a>
															<span class="item-label">3 days ago</span>
														</div>
														<span class="item-status"><span class="badge badge-empty badge-warning"></span> Pending</span>
													</div>
													<div class="item-body">
														 Lorem ipsum dolor sit amet, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
													</div>
												</div>
												<div class="item">
													<div class="item-head">
														<div class="item-details">
															<img class="item-pic" src="assets/admin/layout3/img/avatar2.jpg">
															<a href="#" class="item-name primary-link">Larry</a>
															<span class="item-label">4 hrs ago</span>
														</div>
														<span class="item-status"><span class="badge badge-empty badge-success"></span> Open</span>
													</div>
													<div class="item-body">
														 Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- END PORTLET -->
							</div>
							<div class="col-md-6">
								<!-- BEGIN PORTLET -->
								<div class="portlet light tasks-widget">
									<div class="portlet-title">
										<div class="caption caption-md">
											<i class="icon-bar-chart theme-font hide"></i>
											<span class="caption-subject font-blue-madison bold uppercase">Tasks</span>
											<span class="caption-helper">16 pending</span>
										</div>
										<div class="inputs">
											<div class="portlet-input input-small input-inline">
												<div class="input-icon right">
													<i class="icon-magnifier"></i>
													<input type="text" class="form-control form-control-solid" placeholder="search...">
												</div>
											</div>
										</div>
									</div>
									<div class="portlet-body">
										<div class="task-content">
											<div class="scroller" style="height: 282px;" data-always-visible="1" data-rail-visible1="0" data-handle-color="#D7DCE2">
												<!-- START TASK LIST -->
												<ul class="task-list">
													<li>
														<div class="task-checkbox">
															<input type="hidden" value="1" name="test"/>
															<input type="checkbox" class="liChild" value="2" name="test"/>
														</div>
														<div class="task-title">
															<span class="task-title-sp">
															Present 2013 Year IPO Statistics at Board Meeting </span>
															<span class="label label-sm label-success">Company</span>
															<span class="task-bell">
															<i class="fa fa-bell-o"></i>
															</span>
														</div>
														<div class="task-config">
															<div class="task-config-btn btn-group">
																<a class="btn btn-xs default" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
																<i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
																</a>
																<ul class="dropdown-menu pull-right">
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-check"></i> Complete </a>
																	</li>
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-pencil"></i> Edit </a>
																	</li>
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-trash-o"></i> Cancel </a>
																	</li>
																</ul>
															</div>
														</div>
													</li>
													<li>
														<div class="task-checkbox">
															<input type="checkbox" class="liChild" value=""/>
														</div>
														<div class="task-title">
															<span class="task-title-sp">
															Hold An Interview for Marketing Manager Position </span>
															<span class="label label-sm label-danger">Marketing</span>
														</div>
														<div class="task-config">
															<div class="task-config-btn btn-group">
																<a class="btn btn-xs default" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
																<i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
																</a>
																<ul class="dropdown-menu pull-right">
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-check"></i> Complete </a>
																	</li>
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-pencil"></i> Edit </a>
																	</li>
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-trash-o"></i> Cancel </a>
																	</li>
																</ul>
															</div>
														</div>
													</li>
													<li>
														<div class="task-checkbox">
															<input type="checkbox" class="liChild" value=""/>
														</div>
														<div class="task-title">
															<span class="task-title-sp">
															AirAsia Intranet System Project Internal Meeting </span>
															<span class="label label-sm label-success">AirAsia</span>
															<span class="task-bell">
															<i class="fa fa-bell-o"></i>
															</span>
														</div>
														<div class="task-config">
															<div class="task-config-btn btn-group">
																<a class="btn btn-xs default" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
																<i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
																</a>
																<ul class="dropdown-menu pull-right">
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-check"></i> Complete </a>
																	</li>
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-pencil"></i> Edit </a>
																	</li>
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-trash-o"></i> Cancel </a>
																	</li>
																</ul>
															</div>
														</div>
													</li>
													<li>
														<div class="task-checkbox">
															<input type="checkbox" class="liChild" value=""/>
														</div>
														<div class="task-title">
															<span class="task-title-sp">
															Technical Management Meeting </span>
															<span class="label label-sm label-warning">Company</span>
														</div>
														<div class="task-config">
															<div class="task-config-btn btn-group">
																<a class="btn btn-xs default" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
																<i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
																</a>
																<ul class="dropdown-menu pull-right">
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-check"></i> Complete </a>
																	</li>
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-pencil"></i> Edit </a>
																	</li>
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-trash-o"></i> Cancel </a>
																	</li>
																</ul>
															</div>
														</div>
													</li>
													<li>
														<div class="task-checkbox">
															<input type="checkbox" class="liChild" value=""/>
														</div>
														<div class="task-title">
															<span class="task-title-sp">
															Kick-off Company CRM Mobile App Development </span>
															<span class="label label-sm label-info">Internal Products</span>
														</div>
														<div class="task-config">
															<div class="task-config-btn btn-group">
																<a class="btn btn-xs default" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
																<i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
																</a>
																<ul class="dropdown-menu pull-right">
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-check"></i> Complete </a>
																	</li>
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-pencil"></i> Edit </a>
																	</li>
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-trash-o"></i> Cancel </a>
																	</li>
																</ul>
															</div>
														</div>
													</li>
													<li>
														<div class="task-checkbox">
															<input type="checkbox" class="liChild" value=""/>
														</div>
														<div class="task-title">
															<span class="task-title-sp">
															Prepare Commercial Offer For SmartVision Website Rewamp </span>
															<span class="label label-sm label-danger">SmartVision</span>
														</div>
														<div class="task-config">
															<div class="task-config-btn btn-group">
																<a class="btn btn-xs default" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
																<i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
																</a>
																<ul class="dropdown-menu pull-right">
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-check"></i> Complete </a>
																	</li>
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-pencil"></i> Edit </a>
																	</li>
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-trash-o"></i> Cancel </a>
																	</li>
																</ul>
															</div>
														</div>
													</li>
													<li>
														<div class="task-checkbox">
															<input type="checkbox" class="liChild" value=""/>
														</div>
														<div class="task-title">
															<span class="task-title-sp">
															Sign-Off The Comercial Agreement With AutoSmart </span>
															<span class="label label-sm label-default">AutoSmart</span>
															<span class="task-bell">
															<i class="fa fa-bell-o"></i>
															</span>
														</div>
														<div class="task-config">
															<div class="task-config-btn btn-group">
																<a class="btn btn-xs default" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
																<i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
																</a>
																<ul class="dropdown-menu pull-right">
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-check"></i> Complete </a>
																	</li>
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-pencil"></i> Edit </a>
																	</li>
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-trash-o"></i> Cancel </a>
																	</li>
																</ul>
															</div>
														</div>
													</li>
													<li>
														<div class="task-checkbox">
															<input type="checkbox" class="liChild" value=""/>
														</div>
														<div class="task-title">
															<span class="task-title-sp">
															Company Staff Meeting </span>
															<span class="label label-sm label-success">Cruise</span>
															<span class="task-bell">
															<i class="fa fa-bell-o"></i>
															</span>
														</div>
														<div class="task-config">
															<div class="task-config-btn btn-group">
																<a class="btn btn-xs default" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
																<i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
																</a>
																<ul class="dropdown-menu pull-right">
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-check"></i> Complete </a>
																	</li>
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-pencil"></i> Edit </a>
																	</li>
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-trash-o"></i> Cancel </a>
																	</li>
																</ul>
															</div>
														</div>
													</li>
													<li class="last-line">
														<div class="task-checkbox">
															<input type="checkbox" class="liChild" value=""/>
														</div>
														<div class="task-title">
															<span class="task-title-sp">
															KeenThemes Investment Discussion </span>
															<span class="label label-sm label-warning">KeenThemes </span>
														</div>
														<div class="task-config">
															<div class="task-config-btn btn-group">
																<a class="btn btn-xs default" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
																<i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
																</a>
																<ul class="dropdown-menu pull-right">
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-check"></i> Complete </a>
																	</li>
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-pencil"></i> Edit </a>
																	</li>
																	<li>
																		<a href="javascript:;">
																		<i class="fa fa-trash-o"></i> Cancel </a>
																	</li>
																</ul>
															</div>
														</div>
													</li>
												</ul>
												<!-- END START TASK LIST -->
											</div>
										</div>
										<div class="task-footer">
											<div class="btn-arrow-link pull-right">
												<a href="javascript:;">See All Tasks</a>
											</div>
										</div>
									</div>
								</div>
								<!-- END PORTLET -->
							</div>
						</div>
					</div>
					<!-- END PROFILE CONTENT -->
				</div>
			</div>
			<!-- END PAGE CONTENT-->
		</div>
	</div>
	<!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="page-footer">
	<div class="page-footer-inner">
		 2014 &copy; Metronic by keenthemes. <a href="" title="" target="_blank">Purchase Skills Network!</a>
	</div>
	<div class="scroll-to-top">
		<i class="icon-arrow-up"></i>
	</div>
</div>

<script src="assets/global/plugins/respond.min.js"></script>
<script src="assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
<script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>

<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

<script src="assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->

<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery.sparkline.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->

<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="assets/admin/layout4/scripts/layout.js" type="text/javascript"></script>
<script src="assets/admin/layout4/scripts/demo.js" type="text/javascript"></script>
<script src="assets/admin/pages/scripts/profile.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
jQuery(document).ready(function() {       
   // initiate layout and plugins
   Metronic.init(); // init metronic core components
Layout.init(); // init current layout
Demo.init(); // init demo features\
Profile.init(); // init page demo
});
</script>
<!-- END JAVASCRIPTS -->
</body>

<!-- END BODY -->


</html>