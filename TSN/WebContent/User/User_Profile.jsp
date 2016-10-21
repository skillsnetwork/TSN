<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8"/>
<title>The Skills Network | Form Stuff - Form X-editable</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description"/>
<meta content="" name="author"/>

<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=all" rel="stylesheet" type="text/css">
<link href="../assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="../assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="../assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">

<!-- <link href="../assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"> -->
<!-- <link href="../assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/> -->//checkbox cumplusory
<!-- <link rel="stylesheet" type="text/css" href="../assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.css"/> -->
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PLUGINS USED BY X-EDITABLE -->
<link rel="stylesheet" type="text/css" href="../assets/global/plugins/select2/select2.css"/>

<link rel="stylesheet" type="text/css" href="../assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css"/>
<link rel="stylesheet" type="text/css" href="../assets/global/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css"/>
<link rel="stylesheet" type="text/css" href="../assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css"/>
<link rel="stylesheet" type="text/css" href="../assets/global/plugins/bootstrap-editable/bootstrap-editable/css/bootstrap-editable.css"/>
<link rel="stylesheet" type="text/css" href="../assets/global/plugins/bootstrap-editable/inputs-ext/address/address.css"/>
<!-- END PLUGINS USED BY X-EDITABLE -->
<!-- BEGIN THEME STYLES -->
<link href="../assets/global/css/components-rounded.css" id="style_components" rel="stylesheet" type="text/css"/> form editing css white
<link href="../assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>  tgas field in line 
<link href="../assets/admin/layout4/css/layout.css" rel="stylesheet" type="text/css"/>
<link id="style_color" href="../assets/admin/layout4/css/themes/light.css" rel="stylesheet" type="text/css"/>
<link href="../assets/admin/layout4/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>
</head>

<body class="page-header-fixed page-sidebar-closed-hide-logo ">

<div class="page-container">

	
	
	<div class="page-content-wrapper">
		<div class="page-content">
		
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
			
				</div>
			
			</div>
			
			
			<div class="portlet light">
				<div class="portlet-body">
					
					<div class="row">
						<div class="col-md-8">
							<table id="user" class="table table-striped">
							<tbody>
							<tr>
								<td style="width:50%">
									 Username
								</td>
								<td style="width:50%" >
									<a href="javascript:;" id="username" data-type="text" data-pk="1" data-original-title="Enter username">
									superuser </a>
									<i class="icon-pencil" href="javascript:;" data-placement="right"></i>
								</td>
								
							</tr>
							<tr>
								<td>
									 First name
								</td>
								<td>
									<a href="javascript:;" id="firstname" data-type="text" data-pk="1" data-placement="right" data-placeholder="Required" data-original-title="Enter your firstname">
									</a>
								</td>
								
							</tr>
							<tr>
								<td>
									 Sex
								</td>
								<td>
									<a href="javascript:;" id="sex" data-type="select" data-pk="1" data-value="" data-original-title="Select sex">
									</a>
								</td>
								
							</tr>
							<tr>
								<td>
									 Group
								</td>
								<td>
									<a href="javascript:;" id="group" data-type="select" data-pk="1" data-value="5" data-source="/groups" data-original-title="Select group">
									Admin </a>
								</td>
								
							</tr>
							<tr>
								<td>
									 Status
								</td>
								<td>
									<a href="javascript:;" id="status" data-type="select" data-pk="1" data-value="0" data-source="/status" data-original-title="Select status">
									Active </a>
								</td>
								
							</tr>
							<tr>
								<td>
									 Plan vacation?
								</td>
								<td>
									<a href="javascript:;" id="vacation" data-type="date" data-viewformat="dd.mm.yyyy" data-pk="1" data-placement="right" data-original-title="When you want vacation to start?">
									25.02.2013 </a>
								</td>
								
							</tr>
							<tr>
								<td>
									 Date of birth
								</td>
								<td>
									<a href="javascript:;" id="dob" data-type="combodate" data-value="1984-05-15" data-format="YYYY-MM-DD" data-viewformat="DD/MM/YYYY" data-template="D / MMM / YYYY" data-pk="1" data-original-title="Select Date of birth">
									</a>
								</td>
								
							</tr>
							<tr>
								<td>
									 Setup event
								</td>
								<td>
									<a href="javascript:;" id="event" data-type="combodate" data-template="D MMM YYYY HH:mm" data-format="YYYY-MM-DD HH:mm" data-viewformat="MMM D, YYYY, HH:mm" data-pk="1" data-original-title="Setup event date and time">
									</a>
								</td>
								
							</tr>
							<tr>
								<td>
									 Meeting start
								</td>
								<td>
									<a href="javascript:;" id="meeting_start" data-type="datetime" data-pk="1" data-url="/post" data-placement="right" title="Set date & time">
									15/03/2013 12:45 </a>
								</td>
								
							</tr>
							<tr>
								<td>
									 Comments
								</td>
								<td>
									<a href="javascript:;" id="comments" data-type="textarea" data-pk="1" data-placeholder="Your comments here..." data-original-title="Enter comments">awesome<br>
									 user!</a>
								</td>
								
							</tr>
							<tr>
								<td>
									 Type State
								</td>
								<td>
									<a href="javascript:;" id="state" data-type="typeahead" data-pk="1" data-placement="right" data-original-title="Start typing State..">
									</a>
								</td>
								
							</tr>
							<tr>
								<td>
									 Fresh fruits
								</td>
								<td>
									<a href="javascript:;" id="fruits" data-type="checklist" data-value="2,3" data-original-title="Select fruits">
									</a>
								</td>
								
							</tr>
							<tr>
								<td>
									 Tags
								</td>
								<td>
									<a href="javascript:;" id="tags" data-type="select2" data-pk="1" data-original-title="Enter tags">
									html, javascript </a>
								</td>
								
							</tr>
							<tr>
								<td>
									 Country
								</td>
								<td>
									<a href="javascript:;" id="country" data-type="select2" data-pk="1" data-value="BS" data-original-title="Select country">
									</a>
								</td>
								
							</tr>
							<tr>
								<td>
									 Address
								</td>
								<td>
									<a href="javascript:;" id="address" data-type="address" data-pk="1" data-original-title="Please, fill address">
									</a>
								</td>
								
							</tr>
							<tr>
								<td>
									 Notes
								</td>
								<td>
									<div id="note" data-pk="1" data-type="wysihtml5" data-toggle="manual" data-original-title="Enter notes">
										<h3>WYSIWYG</h3>
										 WYSIWYG means <i>What You See Is What You Get</i>.<br>
										 But may also refer to:
										<ul>
											<li>
												 WYSIWYG (album), a 2000 album by Chumbawamba
											</li>
											<li>
												 "Whatcha See is Whatcha Get", a 1971 song by The Dramatics
											</li>
											<li>
												 WYSIWYG Film Festival, an annual Christian film festival
											</li>
										</ul>
										<i>Source:</i>
										<a href="http://en.wikipedia.org/wiki/WYSIWYG_(disambiguation)">
										wikipedia.org </a>
									</div>
								</td>
								
							</tr>
							</tbody>
							</table>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<h3>Console <small>(all ajax requests here are emulated)</small></h3>
							<div>
								<textarea id="console" rows="8" style="width: 70%" class="form-control"></textarea>
							</div>
						</div>
					</div>
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
	
	<div class="scroll-to-top">
		<i class="icon-arrow-up"></i>
	</div>
</div>

<!-- <script src="../assets/global/plugins/respond.min.js"></script> -->
<!-- <script src="../assets/global/plugins/excanvas.min.js"></script>  -->
<!-- <script src="../assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script> -->
<!-- <script src="../assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script> -->
<!-- <script src="../assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script> -->
<!-- <script src="../assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script> -->
<!-- <script src="../assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script> -->
<!-- <script src="../assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script> -->
<!-- <script src="../assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script> -->
<!-- <script type="text/javascript" src="../assets/global/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script> -->
<!-- <script type="text/javascript" src="../assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script> -->
<!-- <script type="text/javascript" src="../assets/global/plugins/bootstrap-editable/inputs-ext/wysihtml5/wysihtml5.js"></script> // last notes editable field -->

<script src="../assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="../assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>

<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->



<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<!-- BEGIN PLUGINS USED BY X-EDITABLE -->

<script type="text/javascript" src="../assets/global/plugins/select2/select2.min.js"></script> //TAGS,HTML,CSS,JS TYPES SELECTION
<script type="text/javascript" src="../assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript" src="../keenthemes.com/preview/metronic/theme/assets/global/plugins/bootstrap-datepicker/js/locales/bootstrap-datepicker.zh-CN.html"></script>
<script type="text/javascript" src="../assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="../assets/global/plugins/moment.min.js"></script> -->//multiple selection check boxes DOB Country state
<script type="text/javascript" src="../assets/global/plugins/jquery.mockjax.js"></script>//without it not editable textfield
<script type="text/javascript" src="../assets/global/plugins/bootstrap-editable/bootstrap-editable/js/bootstrap-editable.js"></script>
<script type="text/javascript" src="../assets/global/plugins/bootstrap-editable/inputs-ext/address/address.js"></script> // Address display in text field

<!-- END X-EDITABLE PLUGIN -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="../assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="../assets/admin/layout4/scripts/layout.js" type="text/javascript"></script>
<script src="../assets/admin/layout4/scripts/demo.js" type="text/javascript"></script>
<script src="../assets/admin/pages/scripts/form-editable.js"></script>
<script>
jQuery(document).ready(function() {
// initiate layout and plugins
Metronic.init(); // init metronic core components
Layout.init(); // init current layout
Demo.init(); // init demo features
FormEditable.init();
});
</script>
<!-- END PAGE LEVEL SCRIPTS -->

</body>

<!-- END BODY -->


</html>