<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<meta charset="utf-8"/>
<title>The Skills Network | Timeline</title>
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

<link rel="shortcut icon" href="images/Bugfree.ico">

<link href="assets/admin/pages/css/timeline.css" rel="stylesheet" type="text/css"/>
<!-- END PAGE LEVEL STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="assets/global/css/components-rounded.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/layout4/css/layout.css" rel="stylesheet" type="text/css"/>
<link id="style_color" href="assets/admin/layout4/css/themes/light.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/layout4/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>

<!-- Toaster-Notification-css/js-Begin -->
<link rel="stylesheet" href="plugins/toastr-master/build/toastr.css">
<link rel="stylesheet" href="plugins/toastr-master/build/toastr.min.css">

<script src="plugins/toastr-master/toastr.js"></script>
<script src="plugins/toastr-master/jquery.min.js"></script>
<script src="plugins/toastr-master/build/toastr.min.js"></script>
<!-- Toaster-Notification-css/js-End -->
<script>
    history.forward();
</script>

 <% String uname="";
 	String msg="";
 	String message="";
                    if(session.getAttribute("uname")==null)
                    response.sendRedirect("Home.jsp");
                    else{
                        
                    	uname = session.getAttribute("fullname").toString();
                    	message = request.getParameter("msg");

                    	if(message != null)
                    	{
                    		 msg= "Successfully logged in";
                    	}else{
                    		 msg="";
                    	}
                    }      
                    

                	if(message != null)
                	{             
        %>
        <script type="text/javascript">
                                                    $(function () {
                                                        var getMessage = function () {
                                                            var msg = ['Successfully logged in'];

                                                            return msg;
                                                        };
                                                        var shortCutFunction = 'success';

                                                        toastr.options = {
                                                            onclick: null
                                                        };

                                                        toastr[shortCutFunction](getMessage); // Wire up an event handler to a button in the toast, if it exists
                                                        
                                                        setTimeout(function () {
                                                        	
                                                            window.location.href = "Timeline.jsp";
                                                            
                                                         }, 2000);
                                                    });
        </script>
<% } %>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->

<body class="page-header-fixed page-sidebar-closed-hide-logo ">
<!-- BEGIN HEADER -->
<div class="page-header navbar navbar-fixed-top">
	<!-- BEGIN HEADER INNER -->
	
	<div class="page-header navbar navbar-fixed-top">
	<!-- BEGIN HEADER INNER -->
	
	<div class="page-header-inner">
		<!-- BEGIN LOGO -->
		<div class="page-logo">
			<a href="Index.jsp">
			<img src="assets/admin/layout4/img/Skills_Network.png" alt="logo" class="logo-default"/>
			</a>
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
				<ul class="nav navbar-nav"> 
				<li> <a href="">Home</a> </li> 
				<li> <a href="">Create Group</a> </li> 
<!-- 				<li class="active"> <a href="">Hiring Manager</a> </li>  -->
				<li> <a href="<%=request.getContextPath() %>/seminar.jsp">Seminar</a> </li> 
<!-- 				<li> <a href="">Recruiter</a> </li> <li> <a href="">Mentoring</a> </li> -->
<!-- 				<li> <a href="">Trainers</a> </li> <li> <a href="">Trainee</a> </li> -->
				<li class="dropdown">
    <a href="#" data-toggle="dropdown" class="dropdown-toggle">Role</a>

    <ul class="dropdown-menu">
      
      <li><a href="#">Hiring Manager</a></li>
      <li><a href="#">Recruiters</a></li>
      <li><a href="#">Monitoring</a></li>
      <li><a href="#">Trainers</a></li>
      <li><a href="#">Trainee</a></li>
    </ul>
  </li>
  </ul>
			</div>
		</div>
		<!-- END PAGE ACTIONS -->
		<!-- BEGIN PAGE TOP -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- END PAGE TOP -->
	</div>
	<!-- END HEADER INNER -->
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
				<% if(message != null)
        {
        	%>
<%--         	<h4 id="time" style="color:yellow"><%=msg %> </h4> --%>
       <% }else{
    	   
       }
        %>
          <%-- <h2><c:forEach items="${sessionScope.passmatch}" var="i"></c:forEach></h2>
          <h5><a style="color:white"> <span style="color:yellow"><%= uname %></span></a></h5>
          <h5>Designation: Front-End Developer</h5> --%>
					<h1>Timeline <small></small></h1>
				</div>
				<!-- END PAGE TITLE -->
				<!-- BEGIN PAGE TOOLBAR -->
				
				<!-- END PAGE TOOLBAR -->
			</div>
			<!-- END PAGE HEAD -->
			<!-- BEGIN PAGE BREADCRUMB -->
			
			<!-- END PAGE BREADCRUMB -->
			<!-- END PAGE HEADER-->
			<!-- BEGIN PAGE CONTENT-->
			<div class="timeline">
			
				<!-- TIMELINE ITEM -->
				<div class="timeline-item"><c:forEach items="${sessionScope.passmatch}" var="i">
					<div class="timeline-badge">
						<img class="timeline-badge-userpic" src="assets/admin/pages/media/users/avatar80_1.jpg">
					</div>
					<div class="timeline-body">
						<div class="timeline-body-arrow">
						</div>
						<div class="timeline-body-head"> 
							<div class="timeline-body-head-caption">
							
								<a href="javascript:;" class="timeline-body-title font-blue-madison">${i.firstname} ${i.lastname}</a>
								<span class="timeline-body-time font-grey-cascade">Posted at 7:45 PM</span>
							</div>
							
						</div>
						<div class="timeline-body-content"><c:forEach items="${sessionScope.BlogList}" var="i">
							<span class="font-grey-cascade">
							${i.taskdescription}
						</c:forEach></div>
					</div></c:forEach>
				</div>
				<!-- END TIMELINE ITEM -->
				<!-- TIMELINE ITEM -->
				
				<!-- END TIMELINE ITEM -->
				<!-- TIMELINE ITEM WITH GOOGLE MAP -->
				<div class="timeline-item">
					<div class="timeline-badge">
						<img class="timeline-badge-userpic" src="assets/admin/pages/media/users/avatar80_3.jpg">
					</div>
					<div class="timeline-body">
						<div class="timeline-body-arrow">
						</div>
						<div class="timeline-body-head">
							<div class="timeline-body-head-caption">
								<a href="javascript:;" class="timeline-body-title font-blue-madison">Carles Puyol</a>
								<span class="timeline-body-time font-grey-cascade">Added office location at 2:50 PM</span>
							</div>
							<div class="timeline-body-head-actions">
								<div class="btn-group">
									<button class="btn btn-circle btn-default btn-sm dropdown-toggle" type="button" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
									Actions <i class="fa fa-angle-down"></i>
									</button>
									<ul class="dropdown-menu pull-right" role="menu">
										<li>
											<a href="javascript:;">Action </a>
										</li>
										<li>
											<a href="javascript:;">Another action </a>
										</li>
										<li>
											<a href="javascript:;">Something else here </a>
										</li>
										<li class="divider">
										</li>
										<li>
											<a href="javascript:;">Separated link </a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="timeline-body-content">
							<div id="gmap_polygons" class="gmaps">
							</div>
						</div>
					</div>
				</div>
				<!-- END TIMELINE ITEM WITH GOOGLE MAP -->
				<!-- TIMELINE ITEM -->
				<div class="timeline-item">
					<div class="timeline-badge">
						<div class="timeline-icon">
							<i class="icon-user-following font-green-haze"></i>
						</div>
					</div>
					<div class="timeline-body">
						<div class="timeline-body-arrow">
						</div>
						<div class="timeline-body-head">
							<div class="timeline-body-head-caption">
								<span class="timeline-body-alerttitle font-red-intense">You have new follower</span>
								<span class="timeline-body-time font-grey-cascade">at 11:00 PM</span>
							</div>
							<div class="timeline-body-head-actions">
								<div class="btn-group">
									<button class="btn btn-circle grey-salsa btn-sm dropdown-toggle" type="button" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
									Actions <i class="fa fa-angle-down"></i>
									</button>
									<ul class="dropdown-menu pull-right" role="menu">
										<li>
											<a href="javascript:;">Action </a>
										</li>
										<li>
											<a href="javascript:;">Another action </a>
										</li>
										<li>
											<a href="javascript:;">Something else here </a>
										</li>
										<li class="divider">
										</li>
										<li>
											<a href="javascript:;">Separated link </a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="timeline-body-content">
							<span class="font-grey-cascade">
							You have new follower <a href="javascript:;">Ivan Rakitic</a>
							</span>
						</div>
					</div>
				</div>
				<!-- END TIMELINE ITEM -->
				<!-- TIMELINE ITEM -->
				<div class="timeline-item">
					<div class="timeline-badge">
						<img class="timeline-badge-userpic" src="assets/admin/pages/media/users/avatar80_1.jpg">
					</div>
					<div class="timeline-body">
						<div class="timeline-body-arrow">
						</div>
						<div class="timeline-body-head">
							<div class="timeline-body-head-caption">
								<a href="javascript:;" class="timeline-body-title font-blue-madison">Andres Iniesta</a>
								<span class="timeline-body-time font-grey-cascade">Replied at 7:45 PM</span>
							</div>
							<div class="timeline-body-head-actions">
							</div>
						</div>
						<div class="timeline-body-content">
							<span class="font-grey-cascade">
							Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. </span>
						</div>
					</div>
				</div>
				<!-- END TIMELINE ITEM -->
				<!-- TIMELINE ITEM -->
				<div class="timeline-item">
					<div class="timeline-badge">
						<img class="timeline-badge-userpic img-circle" src="assets/admin/pages/media/users/avatar80_2.jpg">
					</div>
					<div class="timeline-body">
						<div class="timeline-body-arrow">
						</div>
						<div class="timeline-body-head">
							<div class="timeline-body-head-caption">
								<a href="javascript:;" class="timeline-body-title font-blue-madison">Vanessa Bond</a>
								<span class="timeline-body-time font-grey-cascade">Posted new post at 5:10 PM</span>
							</div>
							<div class="timeline-body-head-actions">
							</div>
						</div>
						<div class="timeline-body-content">
							<span class="font-grey-cascade">
							<p>
								<img class="timeline-body-img pull-right" src="assets/admin/pages/media/blog/4.jpg" alt="">
								Caulie dandelion maize lentil collard greens radish arugula sweet pepper water spinach kombu courgette lettuce. Celery coriander bitterleaf epazote radicchio shallot winter purslane collard greens spring onion squash lentil. Artichoke salad bamboo shoot black-eyed pea brussels sprout garlic kohlrabi. coriander bitterleaf epazote radicchio shallot winter purslane collard.
							</p>
							<p>
								 Coriander bitterleaf epazote radicchio shallot winter purslane collard. Caulie dandelion maize lentil collard greens radish arugula sweet pepper water spinach kombu courgette lettuce. Celery coriander bitterleaf epazote radicchio shallot winter purslane collard greens spring onion squash lentil. Artichoke salad bamboo shoot black-eyed pea brussels sprout garlic kohlrabi.
							</p>
							<p>
								<img class="timeline-body-img pull-left" src="assets/admin/pages/media/blog/6.jpg" alt=""> Caulie dandelion maize lentil collard greens radish arugula sweet pepper water spinach kombu courgette lettuce. Celery coriander bitterleaf epazote radicchio shallot winter purslane collard greens spring onion squash lentil. Artichoke salad bamboo shoot black-eyed pea brussels sprout garlic kohlrabi radicchio shallot winter purslane collard greens spring onion squash lentil.
							</p>
							<p>
								 Coriander bitterleaf epazote radicchio shallot winter purslane collard. Caulie dandelion maize lentil collard greens radish arugula sweet pepper water spinach kombu courgette lettuce. Celery coriander bitterleaf epazote radicchio shallot winter purslane collard greens spring onion squash lentil. Artichoke salad bamboo shoot black-eyed pea brussels sprout garlic kohlrabi.
							</p>
							</span>
						</div>
					</div>
				</div>
				<!-- END TIMELINE ITEM -->
				<!-- TIMELINE ITEM -->
				<div class="timeline-item">
					<div class="timeline-badge">
						<div class="timeline-icon">
							<i class="icon-docs font-red-intense"></i>
						</div>
					</div>
					<div class="timeline-body">
						<div class="timeline-body-arrow">
						</div>
						<div class="timeline-body-head">
							<div class="timeline-body-head-caption">
								<span class="timeline-body-alerttitle font-green-haze">Server Report</span>
								<span class="timeline-body-time font-grey-cascade">Yesterday at 11:00 PM</span>
							</div>
							<div class="timeline-body-head-actions">
								<div class="btn-group dropup">
									<button class="btn btn-circle green-haze btn-sm dropdown-toggle" type="button" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
									Actions <i class="fa fa-angle-down"></i>
									</button>
									<ul class="dropdown-menu pull-right" role="menu">
										<li>
											<a href="javascript:;">Action </a>
										</li>
										<li>
											<a href="javascript:;">Another action </a>
										</li>
										<li>
											<a href="javascript:;">Something else here </a>
										</li>
										<li class="divider">
										</li>
										<li>
											<a href="javascript:;">Separated link </a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="timeline-body-content">
							<span class="font-grey-cascade">
							Lorem ipsum dolore sit amet <a href="javascript:;">Ispect</a>
							</span>
						</div>
					</div>
				</div>
				<!-- END TIMELINE ITEM -->
				
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
		 2014 &copy;  <a href="" title="" target="_blank"></a>
	</div>
	<div class="scroll-to-top">
		<i class="icon-arrow-up"></i>
	</div>
</div>
<!-- END FOOTER -->



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
<script src="http://maps.google.com/maps/api/js?sensor=false" type="text/javascript"></script>
<script src="assets/global/plugins/gmaps/gmaps.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<script src="assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="assets/admin/layout4/scripts/layout.js" type="text/javascript"></script>
<script src="assets/admin/layout4/scripts/demo.js" type="text/javascript"></script>
<script src="assets/admin/pages/scripts/timeline.js" type="text/javascript"></script>
<script>
jQuery(document).ready(function() {       
   // initiate layout and plugins
   Metronic.init(); // init metronic core components
Layout.init(); // init current layout
Demo.init(); // init demo features
Timeline.init(); // init timeline page
});
</script>
<!-- END JAVASCRIPTS -->

</body>

<!-- END BODY -->


</html>