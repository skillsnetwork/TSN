<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>The Skills Network - Social Network HTML Template</title>

<!-- Fonts Online -->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800,300' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>

<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=all" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" type="text/css" href="assets/global/plugins/select2/select2.css"/>
<link rel="stylesheet" type="text/css" href="assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css"/>
<link rel="stylesheet" type="text/css" href="assets/global/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css"/>
<link rel="stylesheet" type="text/css" href="assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css"/>
<link rel="stylesheet" type="text/css" href="assets/global/plugins/bootstrap-editable/bootstrap-editable/css/bootstrap-editable.css"/>
<link rel="stylesheet" type="text/css" href="assets/global/plugins/bootstrap-editable/inputs-ext/address/address.css"/>
<!-- END PLUGINS USED BY X-EDITABLE -->
<!-- BEGIN THEME STYLES -->
<link href="assets/global/css/components-rounded.css" id="style_components" rel="stylesheet" type="text/css"/> 
<link href="assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>  
<link href="assets/admin/layout4/css/layout.css" rel="stylesheet" type="text/css"/>
<link id="style_color" href="assets/admin/layout4/css/themes/light.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/layout4/css/custom.css" rel="stylesheet" type="text/css"/>

<link rel="shortcut icon" href="images/Bugfree.ico">

<!-- Style Sheet -->
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/user-main-style.css">
<link rel="stylesheet" href="css/userprofile.css">

<%String uname="";
                    if(session.getAttribute("uname")==null)
                    response.sendRedirect("Home.jsp");
                    else{
                        
                    	uname = session.getAttribute("fullname").toString();
                    }           
                                    
        %>
        
        

</head>

<body>
<div id="main-wrapper"> 
  
  <!-- Top Toolbar -->
  <div class="toolbar">
    <div class="uou-block-1a blog">
      <div class="container">
        <div class="search"> <a href="#" class="toggle fa fa-search"></a>
          <form action="#">
            <input type="text" class="search-input" placeholder="Search ...">
            <input type="submit" value="">
          </form>
        </div>
        <ul class="social">
          <li><a href="#" class="fa fa-facebook"></a></li>
          <li><a href="#" class="fa fa-twitter"></a></li>
          <li><a href="#" class="fa fa-google-plus"></a></li>
        </ul>
        <ul class="authentication">
          <li><a href="logout.jsp">Logout</a></li>
          
        </ul>        
      </div>
    </div>
    <!-- end .uou-block-1a --> 
  </div>
  <!-- end toolbar -->
  
  <div class="box-shadow-for-ui">
    <div class="uou-block-2b">
      <div class="container"> <a href="#" class="logo"><img src="images/bugfree_logo.jpg" alt=""></a> <a href="#" class="mobile-sidebar-button mobile-sidebar-toggle"><span></span></a>
        <nav class="nav">
          <ul class="sf-menu">
            <li><a href="Home.jsp"><i class="fa  fa-home"></i></a></li>
            <li> <a href="listing-filter.jsp">Professionals</a> </li>
            <li> <a href="Home.jsp">Pages</a>
              <ul>
                <li><a href="profilecompany.jsp">Profile Company</a></li>
                <li><a href="profile_company-no-tabs.html">Profile Company No Tabs</a></li>
                <li><a href="user-dashboard(connections)(hotkeys-disabled).html">User Dashboard 1</a></li>
                <li><a href="user-dashboard(connections)(hotkeys-enabled).html">User Dashboard 2</a></li>
                <li><a href="user-dashboard(followers).html">User Dashboard 3</a></li>
                <li><a href="user-dashboard(following).html">User Dashboard 4</a></li>
                <li><a href="blog-post.jsp">Blog Post</a></li>                
              </ul>
            </li>
            <li class="active"> <a href="user-profile(layout-1).jsp">User Profile</a></li>
            <li><a href="blog.jsp">Blog</a></li>
            <li><a href="gui-kit.html">GUI KIT</a></li>
          </ul>
        </nav>
      </div>
    </div>
    <!-- end .uou-block-2b --> 
  </div>
  <!-- end .uou-block-2b -->
  
  <div class="compny-profile"> 
    <!-- SUB Banner -->
    <div class="profile-bnr user-profile-bnr">
      <div class="container">
        <div class="pull-left">
          <h2><c:forEach items="${sessionScope.passmatch}" var="i">${i.firstName}${i.lastname}</c:forEach></h2>
          <h5><a style="color:white">username : <span style="color:yellow"><%= uname %></span> </a>Front-End Developer</h5>
        </div>
        
        <!-- Top Riht Button -->
        <div class="right-top-bnr">
          <div class="connect"> <a href="#." data-toggle="modal" data-target="#myModal"><i class="fa fa-user-plus"></i> Connect</a> <a href="#."><i class="fa fa-share-alt"></i> Share</a>
            <div class="bt-ns"> <a href="#."><i class="fa fa-bookmark-o"></i> </a> <a href="#."><i class="fa fa-envelope-o"></i> </a> <a href="#."><i class="fa fa-exclamation"></i> </a> </div>
          </div>
        </div>
      </div>
      
      <!-- Modal POPUP -->
      <div class="modal fade" id="myModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="container">
              <h6><a class="close" href="#." data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></a> Send Message</h6>
              
              <!-- Forms -->
              <form action="#">
                <ul class="row">
                  <li class="col-xs-6">
                    <input type="text" placeholder="First Name ">
                  </li>
                  <li class="col-xs-6">
                    <input type="text" placeholder="Last Name">
                  </li>
                  <li class="col-xs-6">
                    <input type="text" placeholder="Country">
                  </li>
                  <li class="col-xs-6">
                    <input type="text" placeholder="Email">
                  </li>
                  <li class="col-xs-12">
                    <textarea placeholder="Your Message"></textarea>
                  </li>
                  <li class="col-xs-12">
                    <button class="btn btn-primary">Send message</button>
                  </li>
                </ul>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <!-- Profile Company Content -->
    <div class="profile-company-content user-profile main-user" data-bg-color="f5f5f5">
      <div class="container">
        <div class="row"> 
          
          <!-- Nav Tabs -->
          <div class="col-md-12">
            <ul class="nav nav-tabs">
              <li class="active"><a data-toggle="tab" href="#profile">Profile</a></li>
              <li><a data-toggle="tab" href="#jobs">Jobs</a></li>
              <li><a data-toggle="tab" href="#contact">Contact</a></li>
              <li><a data-toggle="tab" href="#portfolio">Portfolio</a></li>
              <li><a data-toggle="tab" href="#blog-tab">Blog Posts</a></li>
              <li><a data-toggle="tab" href="#Con-tab">Connections</a></li>
              <li><a data-toggle="tab" href="#flowrs-tabs">Followers (241)</a></li>
              <li><a data-toggle="tab" href="#foll-tabs">Following</a></li>
            </ul>
          </div>
          
          <!-- Tab Content -->
          <div class="col-md-12">
            <div class="tab-content"> 
              
              <!-- PROFILE -->
              <div id="profile" class="tab-pane fade in active">
                <div class="row">
                  <div class="col-md-12">
                    <div class="profile-main">
                      <h3>About</h3>
                      <div class="profile-in">
                        <div class="media-left">
                          <div class="img-profile"> <img class="media-object" src="images/avatar-1.jpg" alt=""> </div>
                        </div>
                        <div class="media-body">
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit, maxime, excepturi, mollitia, voluptatibus similique aliquidautem 
                            laudantium sapiente ad enim ipsa modi labo rum accusantium deleniti neque architecto vitae.<br>
                            <br>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea, nihil, dolores, culpa ullam vero ipsum placeat accusamus nemo
                            itate id molestiae consectetur quae pariatur repudi andae vel ex quaerat nam iusto aliquid laborum quia adipisci aut ut imcati 
                            nisi deleniti tempore maxime sequi fugit reiciendis libero quo. Rerum, assumenda. <br>
                            <br>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem, at nemo inventore temporibus corporis suscipit.</p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-8"> 
                    
                    <!-- Skills -->
                    <div class="sidebar">
                      <h5 class="main-title">Skills</h5>
                      <div class="job-skills"> 
                        
                        <!-- Logo Design -->
                        <ul class="row">
                          <li class="col-sm-3">
                            <h6><i class="fa fa-plus "></i> HTML5 and Css3</h6>
                          </li>
                          <li class="col-sm-9">
                            <div class="progress">
                              <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;"> </div>
                            </div>
                          </li>
                        </ul>
                        
                        <!-- Logo Design -->
                        <ul class="row">
                          <li class="col-sm-3">
                            <h6><i class="fa fa-plus"></i> Logo Design</h6>
                          </li>
                          <li class="col-sm-9">
                            <div class="progress">
                              <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;"> </div>
                            </div>
                          </li>
                        </ul>
                        
                        <!-- Logo Design -->
                        <ul class="row">
                          <li class="col-sm-3">
                            <h6><i class="fa fa-plus"></i> Web Design</h6>
                          </li>
                          <li class="col-sm-9">
                            <div class="progress">
                              <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 90%;"> </div>
                            </div>
                          </li>
                        </ul>
                        
                        <!-- UI / UX -->
                        <ul class="row">
                          <li class="col-sm-3">
                            <h6><i class="fa fa-plus"></i> UI/UX</h6>
                          </li>
                          <li class="col-sm-9">
                            <div class="progress">
                              <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 80%;"> </div>
                            </div>
                            <p>Preferred languages are Arabic, French & Italian. Proin nibh augue, suscipit asce lerisque sed, lacinia in, mi.</p>
                          </li>
                        </ul>
                      </div>
                    </div>
                    
                    <!-- Professional Details -->
                    <div class="sidebar">
                      <h5 class="main-title">Similar Professionals</h5>
                      
                      <!-- Similar -->
                      <div class="similar">
                        <div class="media">
                          <div class="media-left">
                            <div class="inn-simi"> <img class="media-object" src="images/med-avatar.jpg" alt=""> <a href="#">Profile </a> </div>
                          </div>
                          <div class="media-body">
                            <h5>Media heading</h5>
                            <p>SEO Specialist - New York, USA</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit, maxime, excepturi, mollitia, 
                              voluptatibus similique aliquid a dolores autem laudantium sapiente ad enim ipsa modi laborum 
                              accusantium deleniti neque architecto vitae.</p>
                            
                            <!-- Share -->
                            <div class="share-w"><a href="#."><i class="fa fa-bookmark-o"></i></a> <a href="#."><i class="fa fa-envelope-o"></i></a> <a href="#."><i class="fa fa-eye"></i></a></div>
                          </div>
                        </div>
                        
                        <!-- Similar -->
                        <div class="media">
                          <div class="media-left">
                            <div class="inn-simi"> <img class="media-object" src="images/med-avatar.jpg" alt=""> <a href="#">Profile </a> </div>
                          </div>
                          <div class="media-body">
                            <h5>Denise Walsh</h5>
                            <p>SEO Specialist - New York, USA</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit, maxime, excepturi, mollitia, 
                              voluptatibus similique aliquid a dolores autem laudantium sapiente ad enim ipsa modi laborum 
                              accusantium deleniti neque architecto vitae.</p>
                            
                            <!-- Share -->
                            <div class="share-w"><a href="#."><i class="fa fa-bookmark-o"></i></a> <a href="#."><i class="fa fa-envelope-o"></i></a> <a href="#."><i class="fa fa-eye"></i></a></div>
                          </div>
                        </div>
                        
                        <!-- Similar -->
                        <div class="media">
                          <div class="media-left">
                            <div class="inn-simi"> <img class="media-object" src="images/med-avatar.jpg" alt=""> <a href="#">Profile </a> </div>
                          </div>
                          <div class="media-body">
                            <h5>Denise Walsh</h5>
                            <p>SEO Specialist - New York, USA</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit, maxime, excepturi, mollitia, 
                              voluptatibus similique aliquid a dolores autem laudantium sapiente ad enim ipsa modi laborum 
                              accusantium deleniti neque architecto vitae.</p>
                            
                            <!-- Share -->
                            <div class="share-w"><a href="#."><i class="fa fa-bookmark-o"></i></a> <a href="#."><i class="fa fa-envelope-o"></i></a> <a href="#."><i class="fa fa-eye"></i></a></div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  <!-- Col -->
                  <div class="col-md-4"> 
                    
                    <!-- Professional Details -->
                    <div class="sidebar">
                      <h5 class="main-title">Professional Details
                     
									<i class="icon-pencil" href="javascript:;" data-placement="right"></i>
                      </h5>
                      <div class="sidebar-information">
                       <c:forEach items="${sessionScope.passmatch}" var="i">
                       
                      <form action="<%=request.getContextPath()%>/ProfileController?flag=update&ID=${i.id}" method="post">
                       
                        <ul class="single-category" >
                          <li class="row">
                            <h6 class="title col-xs-6">First Name</h6>
                            <input type="hidden" name="Hdnfirstname" value=""/>
                            <span class="subtitle col-xs-6"><a href="javascript:;"  id="firstname"  class="x-editable" data-placement="right" data-type="text" data-pk="1"  data-placeholder="Required" data-original-title="Enter your firstname">
								${i.firstName}</a></span></li>
                          <li class="row">
                            <h6 class="title col-xs-6">Last Name</h6>
                           <input type="hidden" name="Hdnlastname" value=""/>
                            <span class="subtitle col-xs-6"><a href="javascript:;" id="lastname" class="x-editable" data-placement="right" data-type="text" data-pk="1" data-original-title="Enter username">
									${i.lastname}</a></span></li>
					    <li class="row">
                            <h6 class="title col-xs-6">Location</h6>
                          
                            <span class="subtitle col-xs-6"><a href="javascript:;" id="address" class="x-editable" data-placement="right"  data-type="address" data-pk="1" data-original-title="Please, fill address">
									</a></span></li>
                          <li class="row">
                            <h6 class="title col-xs-6">Experiance Since</h6>
                          
                            <span class="subtitle col-xs-6"><a href="javascript:;" id="experienceSince" class="x-editable" data-placement="right"  data-type="combodate" data-template="D MMM YYYY" data-format="YYYY-MM-DD" data-viewformat="MMM D, YYYY" data-pk="1" data-original-title="Select Date/Month/year ">
									</a></span></li>
						<li class="row">
                            <h6 class="title col-xs-6">Company Name</h6>
                            <input type="hidden" name="HdncompanyName" value=""/>
                            <span class="subtitle col-xs-6"><a href="javascript:;" id="companyName" class="x-editable" data-type="text" data-pk="1" data-placement="right" data-placeholder="Required" data-original-title="Enter your Current Company Name">
								</a></span></li>	
						<li class="row">
                            <h6 class="title col-xs-6">Company Address</h6>
                          
                            <span class="subtitle col-xs-6"><a href="javascript:;" id="companyAddress" class="x-editable" data-type="address" data-pk="1" data-placement="right" data-placeholder="Required" data-original-title="Enter your Current Company Address">
								</a></span></li>
										
                         <li class="row">
                            <h6 class="title col-xs-6">Country</h6>
                          
                            <span class="subtitle col-xs-6"><a href="javascript:;" id="country" data-placement="right" data-type="select2" data-pk="1"  data-original-title="Select country">
									</a></span></li> 
						<li class="row">
                            <h6 class="title col-xs-6">Gender</h6>
                            
                            <span class="subtitle col-xs-6"><a href="javascript:;" id="gender" data-placement="right" data-type="select2" data-pk="1" data-original-title="Enter tags"></a></span></li>
                          <li class="row">
                            <h6 class="title col-xs-6">Career Lavel</h6>
                          
                            <span class="subtitle col-xs-6"><a href="javascript:;" id="group" data-type="select2" data-pk="1"  data-source="/groups" data-original-title="Select group">
									Admin </a></span></li>
                          <li class="row">
                            <h6 class="title col-xs-6">Phone</h6>
                        
                            <span class="subtitle col-xs-6"><a href="javascript:;" id="phone" class="x-editable" data-placement="right" data-type="text" data-pk="1" data-placement="right" data-placeholder="Required" data-original-title="Enter your Contact Number">
								${i.phone}</a></span></li>
                          <li class="row">
                            <h6 class="title col-xs-6">E-mail</h6>
                          
                            <span class="subtitle col-xs-6"><a href="javascript:;" id="email" class="x-editable" data-placement="right" data-type="text" data-pk="1" data-placement="right" data-placeholder="Required" data-original-title="Enter your Email Address">
								${i.email}</a></span></li>
                          <li class="row">
                            <h6 class="title col-xs-6">Website</h6>
                            
                            <span class="subtitle col-xs-6"><a href="javascript:;" id="website" class="x-editable" data-placement="right" data-type="text" data-pk="1" data-value="www.abc.com" data-placement="right" data-placeholder="Required" data-original-title="Enter your Website Name">
								</a></span></li>
						   </ul>
						   <button class="btn btn-primary" type="submit"  value="submit">Update</button>
                         </form>
                        </c:forEach>
                      </div>
                    </div>
                    
                    <!-- Rating -->
                    <div class="sidebar">
                      <h5 class="main-title">Rating</h5>
                      <div class="sidebar-information">
                        <ul class="single-category com-rate">
                          <li class="row">
                            <h6 class="title col-xs-6">Expertise:</h6>
                            <span class="col-xs-6"><i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i></span> </li>
                          <li class="row">
                            <h6 class="title col-xs-6">Knowledge:</h6>
                            <span class="col-xs-6"><i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-half-o"></i> <i class="fa fa-star-o"></i></span> </li>
                          <li class="row">
                            <h6 class="title col-xs-6">Quality::</h6>
                            <span class="col-xs-6"><i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i></span> </li>
                          <li class="row">
                            <h6 class="title col-xs-6">Price:</h6>
                            <span class="col-xs-6"><i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i></span> </li>
                          <li class="row">
                            <h6 class="title col-xs-6">Services:</h6>
                            <span class="col-xs-6"><i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i></span> </li>
                        </ul>
                      </div>
                    </div>
                    
                    <!-- Social Profiles -->
                    <div class="sidebar">
                      <h5 class="main-title">Social Profiles</h5>
                      <ul class="socil">
                        <li><a href="#."><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#."><i class="fa fa-google-plus"></i></a></li>
                        <li><a href="#."><i class="fa fa-linkedin"></i></a></li>
                        <li><a href="#."><i class="fa fa-twitter"></i></a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              
              <!-- Jobs -->
              <div id="jobs" class="tab-pane fade">
                <div class="header-listing">
                  <h6>Sort by</h6>
                  <div class="custom-select-box">
                    <select name="order" class="custom-select">
                      <option value="0">Most popular</option>
                      <option value="1">The latest</option>
                      <option value="2">The best rating</option>
                    </select>
                  </div>
                  <ul class="listing-views">
                    <li class="active"><a href="#"><i class="fa fa-list"></i></a></li>
                    <li><a href="#"><i class="fa fa-th"></i></a></li>
                    <li><a href="#"><i class="fa fa-th-large"></i></a></li>
                  </ul>
                </div>
                <div class="listing listing-1">
                  <div class="listing-section">
                    <div class="listing-ver-3">
                      <div class="listing-heading">
                        <h5>Front-End Web Developer</h5>
                        <ul class="bookmark list-inline">
                          <li><a href="#"><i class="fa fa-bookmark"></i></a></li>
                          <li><a href="#"><i class="fa fa-eye"></i></a></li>
                          <li><a href="#"><i class="fa fa-share"></i></a></li>
                        </ul>
                      </div>
                      <div class="listing-inner">
                        <div class="listing-content">
                          <h6 class="title-company">Mars Planet Telecommunications Inc.</h6>
                          <span class="location"> <i class="fa fa-map-marker"></i> Manhattan, New york, USA </span> <span class="type-work full-time"> Full Time </span>
                          <p>Proin gravida nibh vel velit auctor aliquet aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio pellentesque habitant morbi tristique senectus et netus et malesuada. <a href="single_job.html">read more</a></p>
                          <h6 class="title-tags">Skills required:</h6>
                          <ul class="tags list-inline">
                            <li><a href="#">Javascript</a></li>
                            <li><a href="#">Wordpress</a></li>
                            <li><a href="#">Presta</a></li>
                            <li><a href="#">Sass</a></li>
                          </ul>
                        </div>
                      </div>
                      <div class="listing-tabs">
                        <ul>
                          <li><a href="#"><i class="fa fa-envelope"></i> email@mail.com</a></li>
                          <li><a href="#"><i class="fa fa-phone"></i> 012 345 678</a></li>
                          <li><a href="#"><i class="fa fa-globe"></i> www.webstite.com</a></li>
                          <li class="share-button"> <a href="#"><i class="fa fa-share"></i> Share</a>
                            <div class="contact-share">
                              <ul>
                                <li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter-square"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus-square"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
                              </ul>
                            </div>
                          </li>
                        </ul>
                      </div>
                    </div>
                    <div class="listing-ver-3">
                      <div class="listing-heading">
                        <h5>Front-End Web Developer</h5>
                        <ul class="bookmark list-inline">
                          <li><a href="#"><i class="fa fa-bookmark"></i></a></li>
                          <li><a href="#"><i class="fa fa-eye"></i></a></li>
                          <li><a href="#"><i class="fa fa-share"></i></a></li>
                        </ul>
                      </div>
                      <div class="listing-inner">
                        <div class="listing-content">
                          <h6 class="title-company">Mars Planet Telecommunications Inc.</h6>
                          <span class="location"> <i class="fa fa-map-marker"></i> Manhattan, New york, USA </span> <span class="type-work full-time"> Full Time </span>
                          <p>Proin gravida nibh vel velit auctor aliquet aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio pellentesque habitant morbi tristique senectus et netus et malesuada. <a href="single_job.html">read more</a></p>
                          <h6 class="title-tags">Skills required:</h6>
                          <ul class="tags list-inline">
                            <li><a href="#">Javascript</a></li>
                            <li><a href="#">Wordpress</a></li>
                            <li><a href="#">Presta</a></li>
                            <li><a href="#">Sass</a></li>
                          </ul>
                        </div>
                      </div>
                      <div class="listing-tabs">
                        <ul>
                          <li><a href="#"><i class="fa fa-envelope"></i> email@mail.com</a></li>
                          <li><a href="#"><i class="fa fa-phone"></i> 012 345 678</a></li>
                          <li><a href="#"><i class="fa fa-globe"></i> www.webstite.com</a></li>
                          <li class="share-button"> <a href="#"><i class="fa fa-share"></i> Share</a>
                            <div class="contact-share">
                              <ul>
                                <li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter-square"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus-square"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
                              </ul>
                            </div>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              
              <!-- Contact -->
              <div id="contact" class="tab-pane fade">
                <div class="profile-main">
                  <h3>Contact the Company</h3>
                  <div class="profile-in">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate quis tenetur velit! Provident eum molestias aperiam suscipit distinctio ipsum cupiditate quasi, dolor sunt, cum reprehenderit quibusdam, repellendus eaque, quas magni.</p>
                    <form action="#">
                      <input type="text" placeholder="Name & Surname">
                      <input type="text" placeholder="E-mail address">
                      <input type="text" placeholder="Phone Number">
                      <textarea placeholder="Your Message"></textarea>
                      <button class="btn btn-primary">Send message</button>
                    </form>
                  </div>
                </div>
              </div>
              
              <!-- Portfolio -->
              <div id="portfolio" class="tab-pane fade">
                <div class="profile-main">
                  <h3>Portfolio</h3>
                  <div class="profile-in">
                    <div class="uou-portfolio"> 
                      <!-- Portfolio Item -->
                      <section class="portfolio">
                        <div class="portfolio-filters-content"> 
                          <!-- Portfolio Item -->
                          <article class="development design"> <a href="img/portfolio-1.jpg" class="swipebox"> <img src="img/portfolio-1.jpg" alt="" class="work img-responsive"> <span class="overlay"> <i class="fa fa-plus"></i> <b class="title"><strong>Photo Session</strong>Brands</b> </span> </a> </article>
                          <!-- Portfolio Item -->
                          <article class="design"> <a href="img/portfolio-2.jpg" class="swipebox"> <img src="img/portfolio-2.jpg" alt="" class="work img-responsive"> <span class="overlay"> <i class="fa fa-plus"></i> <b class="title"><strong>Photo Session</strong>Brands</b> </span> </a> </article>
                          <!-- Portfolio Item -->
                          <article class="development branding"> <a href="img/portfolio-3.jpg" class="swipebox"> <img src="img/portfolio-3.jpg" alt="" class="work img-responsive"> <span class="overlay"> <i class="fa fa-plus"></i> <b class="title"><strong>Photo Session</strong>Brands</b> </span> </a> </article>
                          <!-- Portfolio Item -->
                          <article class="development design"> <a href="img/portfolio-6.jpg" class="swipebox"> <img src="img/portfolio-6.jpg" alt="" class="work img-responsive"> <span class="overlay"> <i class="fa fa-plus"></i> <b class="title"><strong>Photo Session</strong>Brands</b> </span> </a> </article>
                          <!-- Portfolio Item -->
                          <article class="branding development"> <a href="img/portfolio-4.jpg" class="swipebox"> <img src="img/portfolio-4.jpg" alt="" class="work img-responsive"> <span class="overlay"> <i class="fa fa-plus"></i> <b class="title"><strong>Photo Session</strong>Brands</b> </span> </a> </article>
                          <!-- Portfolio Item -->
                          <article class="mobile branding"> <a href="img/portfolio-5.jpg" class="swipebox"> <img src="img/portfolio-5.jpg" alt="" class="work img-responsive"> <span class="overlay"> <i class="fa fa-plus"></i> <b class="title"><strong>Photo Session</strong>Brands</b> </span> </a> </article>
                          <!-- Portfolio Item -->
                          <article class="branding"> <a href="img/portfolio-7.jpg" class="swipebox"> <img src="img/portfolio-7.jpg" alt="" class="work img-responsive"> <span class="overlay"> <i class="fa fa-plus"></i> <b class="title"><strong>Photo Session</strong>Brands</b> </span> </a> </article>
                          <!-- Portfolio Item -->
                          <article class="branding"> <a href="img/portfolio-2.jpg" class="swipebox"> <img src="img/portfolio-2.jpg" alt="" class="work img-responsive"> <span class="overlay"> <i class="fa fa-plus"></i> <b class="title"><strong>Photo Session</strong>Brands</b> </span> </a> </article>
                          <!-- Portfolio Item -->
                          <article class="design development"> <a href="img/portfolio-8.jpg" class="swipebox"> <img src="img/portfolio-8.jpg" alt="" class="work img-responsive"> <span class="overlay"> <i class="fa fa-plus"></i> <b class="title"><strong>Photo Session</strong>Brands</b> </span> </a> </article>
                        </div>
                      </section>
                    </div>
                    <!-- end uou-portfolio --> 
                  </div>
                </div>
              </div>
              
              <!-- Blog Post -->
              <div id="blog-tab" class="tab-pane fade">
                <div class="profile-main">
                  <h3>Blog Post</h3>
                  <div class="profile-in">
                    <div class="row">
                      <div class="col-md-12">
                        <article class="uou-block-7f"> <img src="img/blog-image-1.jpg" alt="" class="thumb">
                          <div class="meta"> <span class="time-ago">3 days ago</span> <span class="category">Posted in: <a href="#">Design</a></span> <a href="#" class="comments">12 Comments</a> </div>
                          <h1><a href="#">Perspiciatis Sint Pariatur Velit Corrupti</a></h1>
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue, suscipit a, scelerisque sed, lacinia in, mi. Cras vel lorem. Etiam pellentesque aliquet tellus. Phasellus pharetra nulla ac diam.
                            Etiam pellentesque aliquet tellus. Phasellus pharetra nulla ac diam.
                            Etiam pellentesque aliquet tellus. Phasellus pharetra nulla ac diam.</p>
                          <a href="#" class="btn btn-small btn-primary">Read More</a> </article>
                        <!-- end .uou-block-7f -->
                        
                        <article class="uou-block-7f"> <img src="img/blog-image-2.jpg" alt="" class="thumb">
                          <div class="meta"> <span class="time-ago">3 days ago</span> <span class="category">Posted in: <a href="#">Design</a></span> <a href="#" class="comments">12 Comments</a> </div>
                          <h1><a href="#">Perspiciatis Sint Pariatur Velit Corrupti</a></h1>
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue, suscipit a, scelerisque sed, lacinia in, mi. Cras vel lorem. Etiam pellentesque aliquet tellus. Phasellus pharetra nulla ac diam.
                            Etiam pellentesque aliquet tellus. Phasellus pharetra nulla ac diam.
                            Etiam pellentesque aliquet tellus. Phasellus pharetra nulla ac diam.</p>
                          <a href="#" class="btn btn-small btn-primary">Read More</a> </article>
                        <!-- end .uou-block-7f -->
                        
                        <article class="uou-block-7f"> <img src="img/blog-image-3.jpg" alt="" class="thumb">
                          <div class="meta"> <span class="time-ago">3 days ago</span> <span class="category">Posted in: <a href="#">Design</a></span> <a href="#" class="comments">12 Comments</a> </div>
                          <h1><a href="#">Perspiciatis Sint Pariatur Velit Corrupti</a></h1>
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue, suscipit a, scelerisque sed, lacinia in, mi. Cras vel lorem. Etiam pellentesque aliquet tellus. Phasellus pharetra nulla ac diam.
                            Etiam pellentesque aliquet tellus. Phasellus pharetra nulla ac diam.
                            Etiam pellentesque aliquet tellus. Phasellus pharetra nulla ac diam.</p>
                          <a href="#" class="btn btn-small btn-primary">Read More</a> </article>
                        <!-- end .uou-block-7f -->
                        
                        <article class="uou-block-7f"> <img src="img/blog-image-4.jpg" alt="" class="thumb">
                          <div class="meta"> <span class="time-ago">3 days ago</span> <span class="category">Posted in: <a href="#">Design</a></span> <a href="#" class="comments">12 Comments</a> </div>
                          <h1><a href="#">Perspiciatis Sint Pariatur Velit Corrupti</a></h1>
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue, suscipit a, scelerisque sed, lacinia in, mi. Cras vel lorem. Etiam pellentesque aliquet tellus. Phasellus pharetra nulla ac diam.
                            Etiam pellentesque aliquet tellus. Phasellus pharetra nulla ac diam.
                            Etiam pellentesque aliquet tellus. Phasellus pharetra nulla ac diam.</p>
                          <a href="#" class="btn btn-small btn-primary">Read More</a> </article>
                        <!-- end .uou-block-7f -->
                        
                        <article class="uou-block-7f"> <img src="img/blog-image-5.jpg" alt="" class="thumb">
                          <div class="meta"> <span class="time-ago">3 days ago</span> <span class="category">Posted in: <a href="#">Design</a></span> <a href="#" class="comments">12 Comments</a> </div>
                          <h1><a href="#">Perspiciatis Sint Pariatur Velit Corrupti</a></h1>
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue, suscipit a, scelerisque sed, lacinia in, mi. Cras vel lorem. Etiam pellentesque aliquet tellus. Phasellus pharetra nulla ac diam.
                            Etiam pellentesque aliquet tellus. Phasellus pharetra nulla ac diam.
                            Etiam pellentesque aliquet tellus. Phasellus pharetra nulla ac diam.</p>
                          <a href="#" class="btn btn-small btn-primary">Read More</a> </article>
                        <!-- end .uou-block-7f -->
                        
                        <div class="text-center pt20">
                          <ul class="uou-paginatin list-unstyled">
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                    <!-- end row --> 
                    
                    <!-- end blog-content --> 
                    
                  </div>
                </div>
              </div>
              
              <!-- Blog Post -->
              <div id="Con-tab" class="tab-pane fade">
                <div class="profile-main">
                  <h3>People in Connections</h3>
                  <div class="profile-in">
                    <div class="folow-persons">
                      <ul>
                        
                        <!-- MEMBER -->
                        <li>
                          <div class="row">
                            <div class="col-xs-4"> 
                              <!-- Check Box -->
                              <div class="checkbox">
                                <input id="checkbox1-1" class="styled" type="checkbox">
                                <label for="checkbox1-1"></label>
                              </div>
                              <!-- Name -->
                              <div class="fol-name">
                                <div class="avatar"> <img src="images/sm-avatar.jpg" alt=""> </div>
                                <h6>Collin Weiland</h6>
                                <span>Web Developer</span> </div>
                            </div>
                            <!-- Location -->
                            <div class="col-xs-3 n-p-r n-p-l"> <span>San Francisco, USA</span> </div>
                            <!-- Network -->
                            <div class="col-xs-3 n-p-r"> <span>21 Followers</span> <span>10 Following</span> </div>
                            <!-- Connections -->
                            <div class="col-xs-2 n-p-r n-p-l"> <span>31 Connections</span> </div>
                          </div>
                        </li>
                        
                        <!-- MEMBER -->
                        <li>
                          <div class="row"> 
                            <!-- Title -->
                            <div class="col-xs-4"> 
                              <!-- Check Box -->
                              <div class="checkbox">
                                <input id="checkbox1-2" class="styled" type="checkbox">
                                <label for="checkbox1-2"></label>
                              </div>
                              <!-- Name -->
                              <div class="fol-name">
                                <div class="avatar"> <img src="images/sm-avatar.jpg" alt=""> </div>
                                <h6>Collin Weiland</h6>
                                <span>Web Developer</span> </div>
                            </div>
                            <!-- Location -->
                            <div class="col-xs-3 n-p-r n-p-l"> <span>San Francisco, USA</span> </div>
                            <!-- Network -->
                            <div class="col-xs-3 n-p-r"> <span>21 Followers</span> <span>10 Following</span> </div>
                            <!-- Connections -->
                            <div class="col-xs-2 n-p-r n-p-l"> <span>31 Connections</span> </div>
                          </div>
                        </li>
                        
                        <!-- MEMBER -->
                        <li>
                          <div class="row"> 
                            <!-- Title -->
                            <div class="col-xs-4"> 
                              <!-- Check Box -->
                              <div class="checkbox">
                                <input id="checkbox1-3" class="styled" type="checkbox">
                                <label for="checkbox1-3"></label>
                              </div>
                              <!-- Name -->
                              <div class="fol-name">
                                <div class="avatar"> <img src="images/sm-avatar.jpg" alt=""> </div>
                                <h6>Collin Weiland</h6>
                                <span>Web Developer</span> </div>
                            </div>
                            <!-- Location -->
                            <div class="col-xs-3 n-p-r n-p-l"> <span>San Francisco, USA</span> </div>
                            <!-- Network -->
                            <div class="col-xs-3 n-p-r"> <span>21 Followers</span> <span>10 Following</span> </div>
                            <!-- Connections -->
                            <div class="col-xs-2 n-p-r n-p-l"> <span>31 Connections</span> </div>
                          </div>
                        </li>
                        
                        <!-- MEMBER -->
                        <li>
                          <div class="row"> 
                            <!-- Title -->
                            <div class="col-xs-4"> 
                              <!-- Check Box -->
                              <div class="checkbox">
                                <input id="checkbox1-4" class="styled" type="checkbox">
                                <label for="checkbox1-4"></label>
                              </div>
                              <!-- Name -->
                              <div class="fol-name">
                                <div class="avatar"> <img src="images/sm-avatar.jpg" alt=""> </div>
                                <h6>Collin Weiland</h6>
                                <span>Web Developer</span> </div>
                            </div>
                            <!-- Location -->
                            <div class="col-xs-3 n-p-r n-p-l"> <span>San Francisco, USA</span> </div>
                            <!-- Network -->
                            <div class="col-xs-3 n-p-r"> <span>21 Followers</span> <span>10 Following</span> </div>
                            <!-- Connections -->
                            <div class="col-xs-2 n-p-r n-p-l"> <span>31 Connections</span> </div>
                          </div>
                        </li>
                        
                        <!-- MEMBER -->
                        <li>
                          <div class="row"> 
                            <!-- Title -->
                            <div class="col-xs-4"> 
                              <!-- Check Box -->
                              <div class="checkbox">
                                <input id="checkbox1-5" class="styled" type="checkbox">
                                <label for="checkbox1-5"></label>
                              </div>
                              <!-- Name -->
                              <div class="fol-name">
                                <div class="avatar"> <img src="images/sm-avatar.jpg" alt=""> </div>
                                <h6>Collin Weiland</h6>
                                <span>Web Developer</span> </div>
                            </div>
                            <!-- Location -->
                            <div class="col-xs-3 n-p-r n-p-l"> <span>San Francisco, USA</span> </div>
                            <!-- Network -->
                            <div class="col-xs-3 n-p-r"> <span>21 Followers</span> <span>10 Following</span> </div>
                            <!-- Connections -->
                            <div class="col-xs-2 n-p-r n-p-l"> <span>31 Connections</span> </div>
                          </div>
                        </li>
                        
                        <!-- MEMBER -->
                        <li>
                          <div class="row"> 
                            <!-- Title -->
                            <div class="col-xs-4"> 
                              <!-- Check Box -->
                              <div class="checkbox">
                                <input id="checkbox1-6" class="styled" type="checkbox">
                                <label for="checkbox1-6"></label>
                              </div>
                              <!-- Name -->
                              <div class="fol-name">
                                <div class="avatar"> <img src="images/sm-avatar.jpg" alt=""> </div>
                                <h6>Collin Weiland</h6>
                                <span>Web Developer</span> </div>
                            </div>
                            <!-- Location -->
                            <div class="col-xs-3 n-p-r n-p-l"> <span>San Francisco, USA</span> </div>
                            <!-- Network -->
                            <div class="col-xs-3 n-p-r"> <span>21 Followers</span> <span>10 Following</span> </div>
                            <!-- Connections -->
                            <div class="col-xs-2 n-p-r n-p-l"> <span>31 Connections</span> </div>
                          </div>
                        </li>
                        
                        <!-- MEMBER -->
                        <li>
                          <div class="row"> 
                            <!-- Title -->
                            <div class="col-xs-4"> 
                              <!-- Check Box -->
                              <div class="checkbox">
                                <input id="checkbox1-7" class="styled" type="checkbox">
                                <label for="checkbox1-7"></label>
                              </div>
                              <!-- Name -->
                              <div class="fol-name">
                                <div class="avatar"> <img src="images/sm-avatar.jpg" alt=""> </div>
                                <h6>Collin Weiland</h6>
                                <span>Web Developer</span> </div>
                            </div>
                            <!-- Location -->
                            <div class="col-xs-3 n-p-r n-p-l"> <span>San Francisco, USA</span> </div>
                            <!-- Network -->
                            <div class="col-xs-3 n-p-r"> <span>21 Followers</span> <span>10 Following</span> </div>
                            <!-- Connections -->
                            <div class="col-xs-2 n-p-r n-p-l"> <span>31 Connections</span> </div>
                          </div>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              
              <!-- Blog Post -->
              <div id="flowrs-tabs" class="tab-pane fade">
                <div class="profile-main">
                  <h3>Followers</h3>
                  <div class="profile-in">
                    <div class="folow-persons">
                      <ul>
                        
                        <!-- MEMBER -->
                        <li>
                          <div class="row">
                            <div class="col-xs-4"> 
                              <!-- Check Box -->
                              <div class="checkbox">
                                <input id="checkbox2-1" class="styled" type="checkbox">
                                <label for="checkbox2-1"></label>
                              </div>
                              <!-- Name -->
                              <div class="fol-name">
                                <div class="avatar"> <img src="images/sm-avatar.jpg" alt=""> </div>
                                <h6>Collin Weiland</h6>
                                <span>Web Developer</span> </div>
                            </div>
                            <!-- Location -->
                            <div class="col-xs-3 n-p-r n-p-l"> <span>San Francisco, USA</span> </div>
                            <!-- Network -->
                            <div class="col-xs-3 n-p-r"> <span>21 Followers</span> <span>10 Following</span> </div>
                            <!-- Connections -->
                            <div class="col-xs-2 n-p-r n-p-l"> <span>31 Connections</span> </div>
                          </div>
                        </li>
                        
                        <!-- MEMBER -->
                        <li>
                          <div class="row"> 
                            <!-- Title -->
                            <div class="col-xs-4"> 
                              <!-- Check Box -->
                              <div class="checkbox">
                                <input id="checkbox2-2" class="styled" type="checkbox">
                                <label for="checkbox2-2"></label>
                              </div>
                              <!-- Name -->
                              <div class="fol-name">
                                <div class="avatar"> <img src="images/sm-avatar.jpg" alt=""> </div>
                                <h6>Collin Weiland</h6>
                                <span>Web Developer</span> </div>
                            </div>
                            <!-- Location -->
                            <div class="col-xs-3 n-p-r n-p-l"> <span>San Francisco, USA</span> </div>
                            <!-- Network -->
                            <div class="col-xs-3 n-p-r"> <span>21 Followers</span> <span>10 Following</span> </div>
                            <!-- Connections -->
                            <div class="col-xs-2 n-p-r n-p-l"> <span>31 Connections</span> </div>
                          </div>
                        </li>
                        
                        <!-- MEMBER -->
                        <li>
                          <div class="row"> 
                            <!-- Title -->
                            <div class="col-xs-4"> 
                              <!-- Check Box -->
                              <div class="checkbox">
                                <input id="checkbox2-3" class="styled" type="checkbox">
                                <label for="checkbox2-3"></label>
                              </div>
                              <!-- Name -->
                              <div class="fol-name">
                                <div class="avatar"> <img src="images/sm-avatar.jpg" alt=""> </div>
                                <h6>Collin Weiland</h6>
                                <span>Web Developer</span> </div>
                            </div>
                            <!-- Location -->
                            <div class="col-xs-3 n-p-r n-p-l"> <span>San Francisco, USA</span> </div>
                            <!-- Network -->
                            <div class="col-xs-3 n-p-r"> <span>21 Followers</span> <span>10 Following</span> </div>
                            <!-- Connections -->
                            <div class="col-xs-2 n-p-r n-p-l"> <span>31 Connections</span> </div>
                          </div>
                        </li>
                        
                        <!-- MEMBER -->
                        <li>
                          <div class="row"> 
                            <!-- Title -->
                            <div class="col-xs-4"> 
                              <!-- Check Box -->
                              <div class="checkbox">
                                <input id="checkbox2-4" class="styled" type="checkbox">
                                <label for="checkbox2-4"></label>
                              </div>
                              <!-- Name -->
                              <div class="fol-name">
                                <div class="avatar"> <img src="images/sm-avatar.jpg" alt=""> </div>
                                <h6>Collin Weiland</h6>
                                <span>Web Developer</span> </div>
                            </div>
                            <!-- Location -->
                            <div class="col-xs-3 n-p-r n-p-l"> <span>San Francisco, USA</span> </div>
                            <!-- Network -->
                            <div class="col-xs-3 n-p-r"> <span>21 Followers</span> <span>10 Following</span> </div>
                            <!-- Connections -->
                            <div class="col-xs-2 n-p-r n-p-l"> <span>31 Connections</span> </div>
                          </div>
                        </li>
                        
                        <!-- MEMBER -->
                        <li>
                          <div class="row"> 
                            <!-- Title -->
                            <div class="col-xs-4"> 
                              <!-- Check Box -->
                              <div class="checkbox">
                                <input id="checkbox2-5" class="styled" type="checkbox">
                                <label for="checkbox2-5"></label>
                              </div>
                              <!-- Name -->
                              <div class="fol-name">
                                <div class="avatar"> <img src="images/sm-avatar.jpg" alt=""> </div>
                                <h6>Collin Weiland</h6>
                                <span>Web Developer</span> </div>
                            </div>
                            <!-- Location -->
                            <div class="col-xs-3 n-p-r n-p-l"> <span>San Francisco, USA</span> </div>
                            <!-- Network -->
                            <div class="col-xs-3 n-p-r"> <span>21 Followers</span> <span>10 Following</span> </div>
                            <!-- Connections -->
                            <div class="col-xs-2 n-p-r n-p-l"> <span>31 Connections</span> </div>
                          </div>
                        </li>
                        
                        <!-- MEMBER -->
                        <li>
                          <div class="row"> 
                            <!-- Title -->
                            <div class="col-xs-4"> 
                              <!-- Check Box -->
                              <div class="checkbox">
                                <input id="checkbox2-6" class="styled" type="checkbox">
                                <label for="checkbox2-6"></label>
                              </div>
                              <!-- Name -->
                              <div class="fol-name">
                                <div class="avatar"> <img src="images/sm-avatar.jpg" alt=""> </div>
                                <h6>Collin Weiland</h6>
                                <span>Web Developer</span> </div>
                            </div>
                            <!-- Location -->
                            <div class="col-xs-3 n-p-r n-p-l"> <span>San Francisco, USA</span> </div>
                            <!-- Network -->
                            <div class="col-xs-3 n-p-r"> <span>21 Followers</span> <span>10 Following</span> </div>
                            <!-- Connections -->
                            <div class="col-xs-2 n-p-r n-p-l"> <span>31 Connections</span> </div>
                          </div>
                        </li>
                        
                        <!-- MEMBER -->
                        <li>
                          <div class="row"> 
                            <!-- Title -->
                            <div class="col-xs-4"> 
                              <!-- Check Box -->
                              <div class="checkbox">
                                <input id="checkbox2-7" class="styled" type="checkbox">
                                <label for="checkbox2-7"></label>
                              </div>
                              <!-- Name -->
                              <div class="fol-name">
                                <div class="avatar"> <img src="images/sm-avatar.jpg" alt=""> </div>
                                <h6>Collin Weiland</h6>
                                <span>Web Developer</span> </div>
                            </div>
                            <!-- Location -->
                            <div class="col-xs-3 n-p-r n-p-l"> <span>San Francisco, USA</span> </div>
                            <!-- Network -->
                            <div class="col-xs-3 n-p-r"> <span>21 Followers</span> <span>10 Following</span> </div>
                            <!-- Connections -->
                            <div class="col-xs-2 n-p-r n-p-l"> <span>31 Connections</span> </div>
                          </div>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              
              <!-- Blog Post -->
              <div id="foll-tabs" class="tab-pane fade">
                <div class="profile-main">
                  <h3>Following</h3>
                  <div class="profile-in">
                    <div class="folow-persons">
                      <ul>
                        
                        <!-- MEMBER -->
                        <li>
                          <div class="row">
                            <div class="col-xs-4"> 
                              <!-- Check Box -->
                              <div class="checkbox">
                                <input id="checkbox3-1" class="styled" type="checkbox">
                                <label for="checkbox3-1"></label>
                              </div>
                              <!-- Name -->
                              <div class="fol-name">
                                <div class="avatar"> <img src="images/sm-avatar.jpg" alt=""> </div>
                                <h6>Collin Weiland</h6>
                                <span>Web Developer</span> </div>
                            </div>
                            <!-- Location -->
                            <div class="col-xs-3 n-p-r n-p-l"> <span>San Francisco, USA</span> </div>
                            <!-- Network -->
                            <div class="col-xs-3 n-p-r"> <span>21 Followers</span> <span>10 Following</span> </div>
                            <!-- Connections -->
                            <div class="col-xs-2 n-p-r n-p-l"> <span>31 Connections</span> </div>
                          </div>
                        </li>
                        
                        <!-- MEMBER -->
                        <li>
                          <div class="row"> 
                            <!-- Title -->
                            <div class="col-xs-4"> 
                              <!-- Check Box -->
                              <div class="checkbox">
                                <input id="checkbox3-2" class="styled" type="checkbox">
                                <label for="checkbox3-2"></label>
                              </div>
                              <!-- Name -->
                              <div class="fol-name">
                                <div class="avatar"> <img src="images/sm-avatar.jpg" alt=""> </div>
                                <h6>Collin Weiland</h6>
                                <span>Web Developer</span> </div>
                            </div>
                            <!-- Location -->
                            <div class="col-xs-3 n-p-r n-p-l"> <span>San Francisco, USA</span> </div>
                            <!-- Network -->
                            <div class="col-xs-3 n-p-r"> <span>21 Followers</span> <span>10 Following</span> </div>
                            <!-- Connections -->
                            <div class="col-xs-2 n-p-r n-p-l"> <span>31 Connections</span> </div>
                          </div>
                        </li>
                        
                        <!-- MEMBER -->
                        <li>
                          <div class="row"> 
                            <!-- Title -->
                            <div class="col-xs-4"> 
                              <!-- Check Box -->
                              <div class="checkbox">
                                <input id="checkbox3-3" class="styled" type="checkbox">
                                <label for="checkbox3-3"></label>
                              </div>
                              <!-- Name -->
                              <div class="fol-name">
                                <div class="avatar"> <img src="images/sm-avatar.jpg" alt=""> </div>
                                <h6>Collin Weiland</h6>
                                <span>Web Developer</span> </div>
                            </div>
                            <!-- Location -->
                            <div class="col-xs-3 n-p-r n-p-l"> <span>San Francisco, USA</span> </div>
                            <!-- Network -->
                            <div class="col-xs-3 n-p-r"> <span>21 Followers</span> <span>10 Following</span> </div>
                            <!-- Connections -->
                            <div class="col-xs-2 n-p-r n-p-l"> <span>31 Connections</span> </div>
                          </div>
                        </li>
                        
                        <!-- MEMBER -->
                        <li>
                          <div class="row"> 
                            <!-- Title -->
                            <div class="col-xs-4"> 
                              <!-- Check Box -->
                              <div class="checkbox">
                                <input id="checkbox3-4" class="styled" type="checkbox">
                                <label for="checkbox3-4"></label>
                              </div>
                              <!-- Name -->
                              <div class="fol-name">
                                <div class="avatar"> <img src="images/sm-avatar.jpg" alt=""> </div>
                                <h6>Collin Weiland</h6>
                                <span>Web Developer</span> </div>
                            </div>
                            <!-- Location -->
                            <div class="col-xs-3 n-p-r n-p-l"> <span>San Francisco, USA</span> </div>
                            <!-- Network -->
                            <div class="col-xs-3 n-p-r"> <span>21 Followers</span> <span>10 Following</span> </div>
                            <!-- Connections -->
                            <div class="col-xs-2 n-p-r n-p-l"> <span>31 Connections</span> </div>
                          </div>
                        </li>
                        
                        <!-- MEMBER -->
                        <li>
                          <div class="row"> 
                            <!-- Title -->
                            <div class="col-xs-4"> 
                              <!-- Check Box -->
                              <div class="checkbox">
                                <input id="checkbox3-5" class="styled" type="checkbox">
                                <label for="checkbox3-5"></label>
                              </div>
                              <!-- Name -->
                              <div class="fol-name">
                                <div class="avatar"> <img src="images/sm-avatar.jpg" alt=""> </div>
                                <h6>Collin Weiland</h6>
                                <span>Web Developer</span> </div>
                            </div>
                            <!-- Location -->
                            <div class="col-xs-3 n-p-r n-p-l"> <span>San Francisco, USA</span> </div>
                            <!-- Network -->
                            <div class="col-xs-3 n-p-r"> <span>21 Followers</span> <span>10 Following</span> </div>
                            <!-- Connections -->
                            <div class="col-xs-2 n-p-r n-p-l"> <span>31 Connections</span> </div>
                          </div>
                        </li>
                        
                        <!-- MEMBER -->
                        <li>
                          <div class="row"> 
                            <!-- Title -->
                            <div class="col-xs-4"> 
                              <!-- Check Box -->
                              <div class="checkbox">
                                <input id="checkbox3-6" class="styled" type="checkbox">
                                <label for="checkbox3-6"></label>
                              </div>
                              <!-- Name -->
                              <div class="fol-name">
                                <div class="avatar"> <img src="images/sm-avatar.jpg" alt=""> </div>
                                <h6>Collin Weiland</h6>
                                <span>Web Developer</span> </div>
                            </div>
                            <!-- Location -->
                            <div class="col-xs-3 n-p-r n-p-l"> <span>San Francisco, USA</span> </div>
                            <!-- Network -->
                            <div class="col-xs-3 n-p-r"> <span>21 Followers</span> <span>10 Following</span> </div>
                            <!-- Connections -->
                            <div class="col-xs-2 n-p-r n-p-l"> <span>31 Connections</span> </div>
                          </div>
                        </li>
                        
                        <!-- MEMBER -->
                        <li>
                          <div class="row"> 
                            <!-- Title -->
                            <div class="col-xs-4"> 
                              <!-- Check Box -->
                              <div class="checkbox">
                                <input id="checkbox3-7" class="styled" type="checkbox">
                                <label for="checkbox3-7"></label>
                              </div>
                              <!-- Name -->
                              <div class="fol-name">
                                <div class="avatar"> <img src="images/sm-avatar.jpg" alt=""> </div>
                                <h6>Collin Weiland</h6>
                                <span>Web Developer</span> </div>
                            </div>
                            <!-- Location -->
                            <div class="col-xs-3 n-p-r n-p-l"> <span>San Francisco, USA</span> </div>
                            <!-- Network -->
                            <div class="col-xs-3 n-p-r"> <span>21 Followers</span> <span>10 Following</span> </div>
                            <!-- Connections -->
                            <div class="col-xs-2 n-p-r n-p-l"> <span>31 Connections</span> </div>
                          </div>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Footer -->
<div class="uou-block-4e">
  <div class="container">
    <div class="row">
      <div class="col-md-3 col-sm-6"> <a href="#" class="logo"><img src="images/bugfree_logo.jpg" alt=""></a>
        <ul class="contact-info has-bg-image contain" data-bg-image="images/footer-map-bg.png">
          <li> <i class="fa fa-map-marker"></i>
            <address>
            795 Folsom Ave, Suite 600, San Francisco, CA 94107
            </address>
          </li>
          <li> <i class="fa fa-phone"></i> <a href="tel:#">(123) 456-7890</a> </li>
          <li> <i class="fa fa-envelope"></i> <a href="mailto:#">first.last@example.com</a> </li>
        </ul>
      </div>
      <div class="col-md-3 col-sm-6">
        <h5>Twitter Feed</h5>
        <ul class="twitter-feed">
          <li> RT <a href="#">@no1son</a>: Now this <a href="#">http://t.co/TSfMW1qMAW</a> is one hell of a stunning site!!! Awesome work guys <a href="#">@AIRNAUTS</a> <a href="#" class="time">May 25</a> </li>
          <li> Check out the wordpress version of Tucson - <a href="#">http://t.co/sBlU3GbapT</a> <a href="#" class="time">May 22</a> </li>
        </ul>
      </div>
      <div class="col-md-3 col-sm-6">
        <h5>Photostream</h5>
        <ul class="photos-list">
          <li><img src="images/photostream4.jpg" alt=""></li>
          <li><img src="images/photostream6.jpg" alt=""></li>
          <li><img src="images/photostream3.jpg" alt=""></li>
          <li><img src="images/photostream2.jpg" alt=""></li>
          <li><img src="images/photostream1.jpg" alt=""></li>
          <li><img src="images/photostream.jpg" alt=""></li>
        </ul>
      </div>
      <div class="col-md-3 col-sm-6">
        <h5>Newsletter</h5>
        <p>Subscribe to our newsletter to receive our latest news and updates. We do not spam.</p>
        <form class="newsletter-form" action="#">
          <input type="email" placeholder="Enter your email address">
          <input type="submit" class="btn btn-primary" value="Subscribe">
        </form>
      </div>
    </div>
  </div>
</div>
<!-- end .uou-block-4e -->

<div class="uou-block-4a secondary dark">
  <div class="container">
    <ul class="links">
      <li><a href="#">Privacy Policy</a></li>
      <li><a href="#">Terms &amp; Conditions</a></li>
    </ul>
    <p>Copyright &copy; 2015 <a href="#">UOUAPPS</a>. All Rights reserved.</p>
  </div>
</div>
<!-- end .uou-block-4a --> 

<div class="uou-block-11a">
  <h5 class="title">Menu</h5>
  <a href="#" class="mobile-sidebar-close">&times;</a>
  <nav class="main-nav">
    <ul>
      <li><a href="Home.jsp">Index</a></li>
      <li><a href="listing-filter.jsp">Professionals</a> </li>
      <li><a href="profilecompany.jsp">Profile Company</a></li>
      <li><a href="profile_company-no-tabs.html">Profile Company No Tabs</a></li>
      <li><a href="user-dashboard(connections)(hotkeys-disabled).html">User Dashboard 1</a></li>
      <li><a href="user-dashboard(connections)(hotkeys-enabled).html">User Dashboard 2</a></li>
      <li><a href="user-dashboard(followers).html">User Dashboard 3</a></li>
      <li><a href="user-dashboard(following).html">User Dashboard 4</a></li>
      <li><a href="blog-post.jsp">Blog Post</a></li>
      <li class="active"><a href="<%=request.getContextPath()%>/UserRegisterController?flag=search">User Profile</a></li>
      <li><a href="blog.jsp">Blog</a></li>
      <li><a href="gui-kit.html">GUI KIT</a></li>
    </ul>
  </nav>
  <hr>
</div>

<!-- Scripts --> 
<script src="https://maps.googleapis.com/maps/api/js"></script> 
<script src="js/jquery-2.1.3.min.js"></script> 
<script src="js/bootstrap.js"></script> 
<script src="js/plugins/superfish.min.js"></script> 
<script src="js/jquery.ui.min.js"></script> 
<script src="js/plugins/rangeslider.min.js"></script> 
<script src="js/plugins/jquery.flexslider-min.js"></script> 
<script src="js/uou-accordions.js"></script> 
<script src="js/uou-tabs.js"></script> 
<script src="js/plugins/select2.min.js"></script> 
<script src="js/owl.carousel.min.js"></script> 
<script src="js/gmap3.min.js"></script> 
<script src="js/scripts.js"></script> 

<!-- END X-EDITABLE PLUGIN -->
<script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>

<script type="text/javascript" src="assets/global/plugins/select2/select2.min.js"></script> 
<script type="text/javascript" src="assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript" src="assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="assets/global/plugins/moment.min.js"></script> -->
<script type="text/javascript" src="assets/global/plugins/jquery.mockjax.js"></script>
<script type="text/javascript" src="assets/global/plugins/bootstrap-editable/bootstrap-editable/js/bootstrap-editable.js"></script>
<script type="text/javascript" src="assets/global/plugins/bootstrap-editable/inputs-ext/address/address.js"></script> 


<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="assets/admin/layout4/scripts/layout.js" type="text/javascript"></script>
<script src="assets/admin/layout4/scripts/demo.js" type="text/javascript"></script>
<!-- <script src="assets/admin/pages/scripts/form-editable.js"></script> -->

<script>
jQuery(document).ready(function() {
	$.fn.editable.defaults.mode = 'popup';
	$.fn.editable.defaults.inputclass = 'form-control';
	 $.mockjaxSettings.responseTime = 500;
	
	$('[data-toggle="tooltip"]').tooltip()
	// initiate layout and plugins
	Metronic.init(); // init metronic core components
	Layout.init(); // init current layout
	Demo.init(); // init demo features
	//FormEditable.init();
	
	 $('.x-editable').editable({
		success:function (response, newValue)
		{	
			$(this).parent().siblings('input[type="hidden"]').val(newValue)
		}
	 });
	 $('#gender').editable({
		 prepend: "not selected",
         inputclass: 'form-control',         
         source: [{
             value: 1,
             text: 'Male'
         }, {
             value: 2,
             text: 'Female'
         }         
     ],
     
     });
	           
     $('#group').editable({
         inputclass: 'form-control input-medium',
         select2: {
             tags: ['Hiring Manager', 'Trainer', 'Mentor', 'Trainee', 'Recruiter'],
             tokenSeparators: [",", " "]
         },
       });
	 
	 var countries = [];
     $.each({
         "BD": "Bangladesh",
         "BE": "Belgium",
         "BF": "Burkina Faso",
         "BG": "Bulgaria",
         "BA": "Bosnia and Herzegovina",
         "BB": "Barbados",
         "WF": "Wallis and Futuna",
         "BL": "Saint Bartelemey",
         "BM": "Bermuda",
         "BN": "Brunei Darussalam",
         "BO": "Bolivia",
         "BH": "Bahrain",
         "BI": "Burundi",
         "BJ": "Benin",
         "BT": "Bhutan",
         "JM": "Jamaica",
         "BV": "Bouvet Island",
         "BW": "Botswana",
         "WS": "Samoa",
         "BR": "Brazil",
         "BS": "Bahamas",
         "JE": "Jersey",
         "BY": "Belarus",
         "O1": "Other Country",
         "LV": "Latvia",
         "RW": "Rwanda",
         "RS": "Serbia",
         "TL": "Timor-Leste",
         "RE": "Reunion",
         "LU": "Luxembourg",
         "TJ": "Tajikistan",
         "RO": "Romania",
         "PG": "Papua New Guinea",
         "GW": "Guinea-Bissau",
         "GU": "Guam",
         "GT": "Guatemala",
         "GS": "South Georgia and the South Sandwich Islands",
         "GR": "Greece",
         "GQ": "Equatorial Guinea",
         "GP": "Guadeloupe",
         "JP": "Japan",
         "GY": "Guyana",
         "GG": "Guernsey",
         "GF": "French Guiana",
         "GE": "Georgia",
         "GD": "Grenada",
         "GB": "United Kingdom",
         "GA": "Gabon",
         "SV": "El Salvador",
         "GN": "Guinea",
         "GM": "Gambia",
         "GL": "Greenland",
         "GI": "Gibraltar",
         "GH": "Ghana",
         "OM": "Oman",
         "TN": "Tunisia",
         "JO": "Jordan",
         "HR": "Croatia",
         "HT": "Haiti",
         "HU": "Hungary",
         "HK": "Hong Kong",
         "HN": "Honduras",
         "HM": "Heard Island and McDonald Islands",
         "VE": "Venezuela",
         "PR": "Puerto Rico",
         "PS": "Palestinian Territory",
         "PW": "Palau",
         "PT": "Portugal",
         "SJ": "Svalbard and Jan Mayen",
         "PY": "Paraguay",
         "IQ": "Iraq",
         "PA": "Panama",
         "PF": "French Polynesia",
         "BZ": "Belize",
         "PE": "Peru",
         "PK": "Pakistan",
         "PH": "Philippines",
         "PN": "Pitcairn",
         "TM": "Turkmenistan",
         "PL": "Poland",
         "PM": "Saint Pierre and Miquelon",
         "ZM": "Zambia",
         "EH": "Western Sahara",
         "RU": "Russian Federation",
         "EE": "Estonia",
         "EG": "Egypt",
         "TK": "Tokelau",
         "ZA": "South Africa",
         "EC": "Ecuador",
         "IT": "Italy",
         "VN": "Vietnam",
         "SB": "Solomon Islands",
         "EU": "Europe",
         "ET": "Ethiopia",
         "SO": "Somalia",
         "ZW": "Zimbabwe",
         "SA": "Saudi Arabia",
         "ES": "Spain",
         "ER": "Eritrea",
         "ME": "Montenegro",
         "MD": "Moldova, Republic of",
         "MG": "Madagascar",
         "MF": "Saint Martin",
         "MA": "Morocco",
         "MC": "Monaco",
         "UZ": "Uzbekistan",
         "MM": "Myanmar",
         "ML": "Mali",
         "MO": "Macao",
         "MN": "Mongolia",
         "MH": "Marshall Islands",
         "MK": "Macedonia",
         "MU": "Mauritius",
         "MT": "Malta",
         "MW": "Malawi",
         "MV": "Maldives",
         "MQ": "Martinique",
         "MP": "Northern Mariana Islands",
         "MS": "Montserrat",
         "MR": "Mauritania",
         "IM": "Isle of Man",
         "UG": "Uganda",
         "TZ": "Tanzania, United Republic of",
         "MY": "Malaysia",
         "MX": "Mexico",
         "IL": "Israel",
         "FR": "France",
         "IO": "British Indian Ocean Territory",
         "FX": "France, Metropolitan",
         "SH": "Saint Helena",
         "FI": "Finland",
         "FJ": "Fiji",
         "FK": "Falkland Islands (Malvinas)",
         "FM": "Micronesia, Federated States of",
         "FO": "Faroe Islands",
         "NI": "Nicaragua",
         "NL": "Netherlands",
         "NO": "Norway",
         "NA": "Namibia",
         "VU": "Vanuatu",
         "NC": "New Caledonia",
         "NE": "Niger",
         "NF": "Norfolk Island",
         "NG": "Nigeria",
         "NZ": "New Zealand",
         "NP": "Nepal",
         "NR": "Nauru",
         "NU": "Niue",
         "CK": "Cook Islands",
         "CI": "Cote d'Ivoire",
         "CH": "Switzerland",
         "CO": "Colombia",
         "CN": "China",
         "CM": "Cameroon",
         "CL": "Chile",
         "CC": "Cocos (Keeling) Islands",
         "CA": "Canada",
         "CG": "Congo",
         "CF": "Central African Republic",
         "CD": "Congo, The Democratic Republic of the",
         "CZ": "Czech Republic",
         "CY": "Cyprus",
         "CX": "Christmas Island",
         "CR": "Costa Rica",
         "CV": "Cape Verde",
         "CU": "Cuba",
         "SZ": "Swaziland",
         "SY": "Syrian Arab Republic",
         "KG": "Kyrgyzstan",
         "KE": "Kenya",
         "SR": "Suriname",
         "KI": "Kiribati",
         "KH": "Cambodia",
         "KN": "Saint Kitts and Nevis",
         "KM": "Comoros",
         "ST": "Sao Tome and Principe",
         "SK": "Slovakia",
         "KR": "Korea, Republic of",
         "SI": "Slovenia",
         "KP": "Korea, Democratic People's Republic of",
         "KW": "Kuwait",
         "SN": "Senegal",
         "SM": "San Marino",
         "SL": "Sierra Leone",
         "SC": "Seychelles",
         "KZ": "Kazakhstan",
         "KY": "Cayman Islands",
         "SG": "Singapore",
         "SE": "Sweden",
         "SD": "Sudan",
         "DO": "Dominican Republic",
         "DM": "Dominica",
         "DJ": "Djibouti",
         "DK": "Denmark",
         "VG": "Virgin Islands, British",
         "DE": "Germany",
         "YE": "Yemen",
         "DZ": "Algeria",
         "US": "United States",
         "UY": "Uruguay",
         "YT": "Mayotte",
         "UM": "United States Minor Outlying Islands",
         "LB": "Lebanon",
         "LC": "Saint Lucia",
         "LA": "Lao People's Democratic Republic",
         "TV": "Tuvalu",
         "TW": "Taiwan",
         "TT": "Trinidad and Tobago",
         "TR": "Turkey",
         "LK": "Sri Lanka",
         "LI": "Liechtenstein",
         "A1": "Anonymous Proxy",
         "TO": "Tonga",
         "LT": "Lithuania",
         "A2": "Satellite Provider",
         "LR": "Liberia",
         "LS": "Lesotho",
         "TH": "Thailand",
         "TF": "French Southern Territories",
         "TG": "Togo",
         "TD": "Chad",
         "TC": "Turks and Caicos Islands",
         "LY": "Libyan Arab Jamahiriya",
         "VA": "Holy See (Vatican City State)",
         "VC": "Saint Vincent and the Grenadines",
         "AE": "United Arab Emirates",
         "AD": "Andorra",
         "AG": "Antigua and Barbuda",
         "AF": "Afghanistan",
         "AI": "Anguilla",
         "VI": "Virgin Islands, U.S.",
         "IS": "Iceland",
         "IR": "Iran, Islamic Republic of",
         "AM": "Armenia",
         "AL": "Albania",
         "AO": "Angola",
         "AN": "Netherlands Antilles",
         "AQ": "Antarctica",
         "AP": "Asia/Pacific Region",
         "AS": "American Samoa",
         "AR": "Argentina",
         "AU": "Australia",
         "AT": "Austria",
         "AW": "Aruba",
         "IN": "India",
         "AX": "Aland Islands",
         "AZ": "Azerbaijan",
         "IE": "Ireland",
         "ID": "Indonesia",
         "UA": "Ukraine",
         "QA": "Qatar",
         "MZ": "Mozambique"
     }, function (k, v) {
         countries.push({
             id: k,
             text: v
         });
     });

     $('#country').editable({
         inputclass: 'form-control input-medium',
         source: countries
     });
     
    	 	
	});
</script>
</body>
</html>