<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<meta charset="utf-8"/>
<title>The Skills Network | Welcome to Home page</title>
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
<!-- BEGIN THEME STYLES -->
<link href="assets/global/css/components-rounded.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/layout4/css/layout.css" rel="stylesheet" type="text/css"/>
<link id="style_color" href="assets/admin/layout4/css/themes/light.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/layout4/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="images/Bugfree.ico">

<!-- <link rel="shortcut icon" href="favicon.ico"/> -->
</head>
<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="page-header-fixed page-sidebar-closed-hide-logo ">
<!-- BEGIN HEADER -->
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
				<ul class="nav navbar-nav"> <li> <a href="">Home</a> </li> <li> <a href="">Create Group</a> </li> <li class="active"> <a href="">Hiring Manager</a> </li> <li> <a href="">Seminar</a> </li> <li> <a href="">Recruiter</a> </li> <li> <a href="">Mentoring</a> </li><li> <a href="">Trainers</a> </li> <li> <a href="">Trainee</a> </li></ul>
			</div>
		</div>
		<!-- END PAGE ACTIONS -->
		<!-- BEGIN PAGE TOP -->
		<jsp:include page="../header.jsp"></jsp:include>
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
	<div class="page-sidebar-wrapper"></div>
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
					<h1>User Profile Form <small>Educational & Personal Details</small></h1>
				</div>
				<!-- END PAGE TITLE -->
				<!-- BEGIN PAGE TOOLBAR -->
				<div class="page-toolbar">
					<!-- BEGIN THEME PANEL -->
					
					<!-- END THEME PANEL -->
				</div>
				<!-- END PAGE TOOLBAR -->
			</div>
			<!-- END PAGE HEAD -->
			<!-- END PAGE HEADER-->
			<!-- BEGIN PAGE CONTENT-->
			<div class="row">
				<div class="col-md-8 ">
					<!-- BEGIN SAMPLE FORM PORTLET-->
					<div class="portlet box blue">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-gift"></i> User Personal Details
							</div>
							<div class="tools">
								<a href="#" class="collapse">
								</a>
							</div>
						</div>
						<div class="portlet-body form">
							<form action="" method="post" role="form">
								<div class="form-body">
								<div class="form-group"> 
 										<label>Title</label>
										<div class="radio-list">
											<label class="radio-inline">
 											<input type="radio" name="radAnswer"  value="option1">Mr</label> 
 											<label class="radio-inline">
											<input type="radio" name="radAnswer"  value="option2">Mrs</label>
									</div> 
 									</div> 
								<div class="form-group">
										<label>First Name</label>
										<div class="input-group">
											<span class="input-group-addon">
											<i class="fa fa-user"></i>
											</span>
											<input type="text" name="FirstName" class="form-control" placeholder="First Name">
										</div>
									</div>
									<div class="form-group">
										<label>Last Name</label>
										<div class="input-group">
											<span class="input-group-addon">
											<i class="fa fa-user"></i>
											</span>
											<input type="text" class="form-control" placeholder="Last Name">
										</div>
										</div>
										
										
<!-- 									<div class="datepicker"> -->
										
<!-- 										<div class="datepicker-default.p">Default Dtepicker</div> -->
										
<!-- 										<div> -->
<!-- 										<div class="datepicker-default.c"><input type="" name="Password" class="form-control" placeholder="Company Name"></div> -->
<!-- 										</div> -->
										
<!-- 									</div> -->

									<div class="form-group">
										<label class="col-md-12" >Professional BackGround</label>
										<label class="col-md-4" for="exampleInputEmail22">Since</label>
										<label class="col-md-4" for="exampleInputEmail22">Company Name</label>
										<label class="col-md-4" for="exampleInputEmail22">Current Position</label>
										
									</div>
									<div class="form-group col-md-4">
										<div class="input-group">
									<div class="input-icon">
										
										<input type="text" class="form-control date-picker" size="14" placeholder="Select Date" value=""/>
										</div>
									</div>
									</div>
									<div class="form-group col-md-4">
									<div class="input-group">
									<div class="input-icon">
										
										<input type="email" class="form-control"  placeholder="Company Name">
										</div>
									</div>
									</div>
									<div class="form-group col-md-4">
									<div class="input-group">
									<div class="input-icon">
										
										<input type="email" class="form-control" id="exampleInputEmail22" placeholder="Current Position">
										</div>
									</div>
									</div>
									
<!-- 									<div class="form-group"> -->
<!-- 										<label >Password</label> -->
<!-- 										<div class="input-group"> -->
<!-- 											<input type="password" pattern=".{6,10}" title="Min 6 Max 10 Chars" name="Password" class="form-control" placeholder="Password"> -->
<!-- 											<span class="input-group-addon"> -->
<!-- 											<i class="fa fa-user"></i> -->
<!-- 											</span> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 									<div class="form-group"> -->
<!-- 										<label >Confirm Password</label> -->
<!-- 										<div class="input-group"> -->
<!-- 											<input type="password" pattern=".{6,10}" title="Min 6 Max 10 Chars" name="ConfirmPassword" class="form-control" placeholder="Confrim Password"> -->
<!-- 											<span class="input-group-addon"> -->
<!-- 											<i class="fa fa-user"></i> -->
<!-- 											</span> -->
<!-- 										</div> -->
<!-- 									</div> -->
									<div class="form-group">
										<label>Contact Number</label>
										<div class="input-icon">
										<input type="text" name="ContactNumber" class="form-control" placeholder="Contact Number">
										</div>
									</div>
<!-- 						 			<div class="form-group"> -->
<!-- 										<label>Address</label> -->
<!-- 										<textarea class="form-control" name="Address" rows="3"></textarea> -->
<!-- 									</div> -->
									<div class="form-group">
										<label>Zip Code</label>
										<div class="input-icon">
										<input type="text" name="ZipCode" class="form-control validate[required,custom[onlyNumber]] text-input" class="form-control" placeholder="Zip Code">
										</div>
									</div>
									<div class="form-group">
										<label>City</label>
										<select class="form-control" name="City">
											<option>Select</option>
											<option>Ahmedabad</option>
											<option>Gandinagar</option>
											<option>Rajkot</option>
										</select>
									</div>
																		
									<div class="form-group">
										<label>Country</label>
										<select class="form-control" onchange="print_state('state',this.selectedIndex);" id="country" name ="country"></select>
									</div>
									
									<div class="form-group">
										<label>State</label>
										<select class="form-control" placeholder="Select State" name ="state" id ="state"></select>
									</div>
									
									<div class="form-group">
										<label>Designation</label>
										<select class="form-control" name="Designation">
											<option>Select</option>
											<option>Hiring Manager</option>
											<option>Trainer</option>
											<option>Trainee</option>
										</select>
									</div>
<!-- 									<div class="form-group"> -->
<!-- 										<label for="exampleInputFile1">Image Upload</label> -->
<!-- 										<input type="file" id="exampleInputFile1"> -->
<!-- 										<p class="help-block"> -->
<!-- 											 Image size should be 400kb. -->
<!-- 										</p> -->
<!-- 									</div> -->
									
<!-- 									<div class="form-group"> -->
<!-- 										<label>Gender</label> -->
<!-- 										<div class="radio-list"> -->
<!-- 											<label class="radio-inline"> -->
<!-- 											<input type="radio" name="Male" id="optionsRadios4" value="option1" checked>Male</label> -->
<!-- 											<label class="radio-inline"> -->
<!-- 											<input type="radio" name="Female" id="optionsRadios5" value="option2">Female</label> -->
											
<!-- 										</div> -->
<!-- 									</div> -->
								</div>
								<div class="form-actions">
									<button type="submit" class="btn blue">Submit</button>
									<button type="button" class="btn default">Cancel</button>
								</div>
								
							</form>
						</div>
					</div>
					<!-- END SAMPLE FORM PORTLET-->
					<!-- BEGIN SAMPLE FORM PORTLET-->
					
					<!-- END SAMPLE FORM PORTLET-->
					<!-- BEGIN SAMPLE FORM PORTLET-->
					
					<!-- END SAMPLE FORM PORTLET-->
				</div>
				<div class="col-md-6 ">
					<!-- BEGIN SAMPLE FORM PORTLET-->
					
					<!-- END SAMPLE FORM PORTLET-->
					<!-- BEGIN SAMPLE FORM PORTLET-->
					
					<!-- END SAMPLE FORM PORTLET-->
					<!-- BEGIN SAMPLE FORM PORTLET-->
					
					<!-- END SAMPLE FORM PORTLET-->
					<!-- BEGIN SAMPLE FORM PORTLET-->
					
					<!-- END SAMPLE FORM PORTLET-->
					
					
					
				</div>
			</div>
			<div class="row ">
				<div class="col-md-12">
					<!-- BEGIN SAMPLE FORM PORTLET-->
					
					<!-- END SAMPLE FORM PORTLET-->
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
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>

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
<script src="assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="assets/admin/layout4/scripts/layout.js" type="text/javascript"></script>
<script src="assets/admin/layout4/scripts/demo.js" type="text/javascript"></script>
<script type="text/javascript" src="assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript" src="assets/global/plugins/bootstrap-daterangepicker/moment.min.js"></script>
<script type="text/javascript" src="assets/global/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
<script>
jQuery(document).ready(function() {   
   // initiate layout and plugins
   Metronic.init(); // init metronic core components
Layout.init(); // init current layout
Demo.init(); // init demo features
	$('.date-picker').datepicker();
});
</script>
<!--  Script for Country -->
<script type="text/javascript">
var country_arr = new Array("Afghanistan", "India", "USA", "Vietnam");

var s_a = new Array();
s_a[0]="";
s_a[1]="Badakhshan|Badghis|Baghlan|Balkh|Bamian|Farah|Faryab|Ghazni|Ghowr|Helmand|Herat|Jowzjan|Kabol|Kandahar|Kapisa|Konar|Kondoz|Laghman|Lowgar|Nangarhar|Nimruz|Oruzgan|Paktia|Paktika|Parvan|Samangan|Sar-e Pol|Takhar|Vardak|Zabol";
s_a[2]="Andhra Pradesh|Arunachal Pradesh|Assam|Bihar|Chhattisgarh|Goa|Gujarat|Haryana|Himachal Pradesh|Jammu and Kashmir|Jharkhand|Karnataka|Kerala|Madhya Pradesh|Maharashtra|Manipur|Meghalaya|Mizoram|Nagaland|Odisha(Orissa)|Punjab|Rajasthan|Sikkim|Tamil Nadu|Tripura|Uttar Pradesh|Uttarakhand|West Bengal";
s_a[3]="Alabama|Alaska|Arizona|Arkansas|California|Colorado|Connecticut|Delaware|Florida|Georgia|Hawaii|Idaho|Illinois|Indiana|Iowa|ansas|Kentucky|Louisiana|Maine|Maryland|Massachusetts|Michigan|Minnesota|Mississippi|Missouri|Montana|Nebraska|Nevada|New Hampshire|New Jersey|New Mexico|New York|North Carolina|North Dakota|Ohio|Oklahoma|Oregon|Pennsylvania|Rhode Island|South Carolina|South Dakota|Tennessee|Texas|Utah|Vermont|Virginia|Washington|West Virginia|Wisconsin|Wyoming";

s_a[4]="Ba Ria|Bạc Liêu|Bắc Giang|Bắc Ninh|Bảo Lộc|Biên Hòa|Bến Tre|Buôn Ma Thuột|Cà Mau|Cam Pha|Cao Lãnh|Đà Lạt|Điện Biên Phủ|Đông Hà|Đồng Hới|Hà Tĩnh|Hạ Long|Hải Dương|Hòa Bình|Hội An|Huế|Hưng Yên|Kon Tum|Lạng Sơn|Lào Cai|Long Xuyên|Móng Cái|Mỹ Tho|Nam Định|Ninh Bình|Nha Trang|Cam Ranh|Phan Rang-Tháp Chàm|Phan Thiết|Phủ Lý|Pleiku|Quảng Ngãi|Quy Nhơn|Rạch Giá|Sóc Trăng|Sơn La|Tam Kỳ|Tân An|Thái Bình|Thái Nguyên|Thanh Hóa|Trà Vinh|Tuy Hòa|Tuyen Quang|Uong Bi|Việt Trì|Vinh|Vĩnh Yên|Vĩnh Lon|Vũng Tàu|Yên Bái";

function print_country(country){
    //given the id of the <select> tag as function argument, it inserts <option> tags
    var option_str = document.getElementById(country);
    option_str.length=0;
    option_str.options[0] = new Option('Select Country','');
    option_str.selectedIndex = 0;
    for (var i=0; i<country_arr.length; i++) {
    option_str.options[option_str.length] = new Option(country_arr[i],country_arr[i]);
    }
}

function print_state(state, selectedIndex){
    var option_str = document.getElementById(state);
    option_str.length=0;    // Fixed by Julian Woods
    option_str.options[0] = new Option('Select State','');
    option_str.selectedIndex = 0;
    var state_arr = s_a[selectedIndex].split("|");
    for (var i=0; i<state_arr.length; i++) {
    option_str.options[option_str.length] = new Option(state_arr[i],state_arr[i]);
    }
}
</script>
<script language="javascript">print_country("country");</script>
<!-- END JAVASCRIPTS -->

</body>

<!-- END BODY -->


</html>