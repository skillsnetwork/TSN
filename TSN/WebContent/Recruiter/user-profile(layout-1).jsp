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

<link rel="shortcut icon" href="images/Bugfree.ico">

<!-- Style Sheet -->
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/main-style.css">
<!-- <link rel="stylesheet" href="css/style.css"> -->

<link href="assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css">
<link href="assets/global/css/components-rounded.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css"/>
<link rel="stylesheet" type="text/css" href="assets/global/plugins/select2/select2.css"/>
<link href="assets/admin/pages/css/todo.css" rel="stylesheet" type="text/css"/>
<link href="assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/layout4/css/layout.css" rel="stylesheet" type="text/css"/>
<link href="assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
<link id="style_color" href="assets/admin/layout4/css/themes/light.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/layout4/css/custom.css" rel="stylesheet" type="text/css"/>


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
          <li><a href="Home.jsp">Logout</a></li>
          
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
          <h2><c:forEach items="${sessionScope.passmatch}" var="i">${i.firstName}</c:forEach></h2>
          <h5>Front-End Developer</h5>
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
              <li><a data-toggle="tab" href="#blog-post-tabs">Blog-post</a></li>
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
                            <h6><i class="fa fa-plus"></i> HTML5 and Css3</h6>
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
                      <h5 class="main-title">Professional Details</h5>
                      <div class="sidebar-information">
                        <ul class="single-category">
                          <li class="row">
                            <h6 class="title col-xs-6">Name</h6>
                            <span class="subtitle col-xs-6">Abu Antar</span></li>
                          <li class="row">
                            <h6 class="title col-xs-6">Age</h6>
                            <span class="subtitle col-xs-6">38 Years Old</span></li>
                          <li class="row">
                            <h6 class="title col-xs-6">Location</h6>
                            <span class="subtitle col-xs-6">Jordan Amman</span></li>
                          <li class="row">
                            <h6 class="title col-xs-6">Experiance</h6>
                            <span class="subtitle col-xs-6">15 Years</span></li>
                          <li class="row">
                            <h6 class="title col-xs-6">Dgree</h6>
                            <span class="subtitle col-xs-6">MBA</span></li>
                          <li class="row">
                            <h6 class="title col-xs-6">Career Lavel</h6>
                            <span class="subtitle col-xs-6">Mid-Level</span></li>
                          <li class="row">
                            <h6 class="title col-xs-6">Phone</h6>
                            <span class="subtitle col-xs-6">(800) 123-4567</span></li>
                          <li class="row">
                            <h6 class="title col-xs-6">Fax </h6>
                            <span class="subtitle col-xs-6">(800) 123-4568</span></li>
                          <li class="row">
                            <h6 class="title col-xs-6">E-mail</h6>
                            <span class="subtitle col-xs-6"><a href="#.">example@example.com</a></span></li>
                          <li class="row">
                            <h6 class="title col-xs-6">Website</h6>
                            <span class="subtitle col-xs-6"><a href="#.">example.com </a></span></li>
                        </ul>
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
              
              
              <div id="blog-post-tabs" class="tab-pane fade">
                <div class="profile-main">
                  <h3>Add New Blog</h3>
                  <div class="portlet light">
							<!-- PROJECT HEAD -->
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-bar-chart font-green-sharp hide"></i>
									<span class="caption-helper">PROJECT:</span> &nbsp; <span class="caption-subject font-green-sharp bold uppercase">Tune Website</span>
								</div>
								<div class="actions">
									<div class="btn-group">
										<a class="btn green-haze btn-circle btn-sm" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
										MANAGE <i class="fa fa-angle-down"></i>
										</a>
										<ul class="dropdown-menu pull-right">
											<li>
												<a href="javascript:;">
												<i class="i"></i> New Task </a>
											</li>
											<li class="divider">
											</li>
											<li>
												<a href="javascript:;">
												Pending <span class="badge badge-danger">
												4 </span>
												</a>
											</li>
											<li>
												<a href="javascript:;">
												Completed <span class="badge badge-success">
												12 </span>
												</a>
											</li>
											<li>
												<a href="javascript:;">
												Overdue <span class="badge badge-warning">
												9 </span>
												</a>
											</li>
											<li class="divider">
											</li>
											<li>
												<a href="javascript:;">
												<i class="i"></i> Delete Project </a>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<!-- end PROJECT HEAD -->
							<div class="portlet-body">
								<div class="row">
									<div class="col-md-5 col-sm-4">
										<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 800px;"><div class="scroller" style="max-height: 800px; overflow-y: scroll; width: auto; height: 800px;" data-always-visible="0" data-rail-visible="0" data-handle-color="#dae3e7" data-initialized="1">
											<div class="todo-tasklist">
												<div class="todo-tasklist-item todo-tasklist-item-border-green">
													<img class="todo-userpic pull-left" src="assets/admin/layout4/img/avatar4.jpg" width="27px" height="27px">
													<div class="todo-tasklist-item-title">
														 Slider Redesign
													</div>
													<div class="todo-tasklist-item-text">
														 Lorem dolor sit amet ipsum dolor sit consectetuer dolore.
													</div>
													<div class="todo-tasklist-controls pull-left">
														<span class="todo-tasklist-date"><i class="fa fa-calendar"></i> 21 Sep 2014 </span>
														<span class="todo-tasklist-badge badge badge-roundless">Urgent</span>
													</div>
												</div>
												<div class="todo-tasklist-item todo-tasklist-item-border-red">
													<img class="todo-userpic pull-left" src="assets/admin/layout4/img/avatar5.jpg" width="27px" height="27px">
													<div class="todo-tasklist-item-title">
														 Homepage Alignments to adjust
													</div>
													<div class="todo-tasklist-item-text">
														 Lorem ipsum dolor sit amet, consectetuer dolore dolor sit amet.
													</div>
													<div class="todo-tasklist-controls pull-left">
														<span class="todo-tasklist-date"><i class="fa fa-calendar"></i> 14 Sep 2014 </span>
														<span class="todo-tasklist-badge badge badge-roundless">Important</span>
													</div>
												</div>
												<div class="todo-tasklist-item todo-tasklist-item-border-green">
													<img class="todo-userpic pull-left" src="assets/admin/layout4/img/avatar9.jpg" width="27px" height="27px">
													<div class="todo-tasklist-item-title">
														 Slider Redesign
													</div>
													<div class="todo-tasklist-controls pull-left">
														<span class="todo-tasklist-date"><i class="fa fa-calendar"></i> 10 Feb 2015 </span>
														<span class="todo-tasklist-badge badge badge-roundless">Important</span>&nbsp;
													</div>
												</div>
												<div class="todo-tasklist-item todo-tasklist-item-border-blue">
													<img class="todo-userpic pull-left" src="assets/admin/layout4/img/avatar6.jpg" width="27px" height="27px">
													<div class="todo-tasklist-item-title">
														 Contact Us Map Location changes
													</div>
													<div class="todo-tasklist-item-text">
														 Lorem ipsum amet, consectetuer dolore dolor sit amet.
													</div>
													<div class="todo-tasklist-controls pull-left">
														<span class="todo-tasklist-date"><i class="fa fa-calendar"></i> 04 Oct 2014 </span>
														<span class="todo-tasklist-badge badge badge-roundless">Postponed</span>&nbsp; <span class="todo-tasklist-badge badge badge-roundless">Test</span>
													</div>
												</div>
												<div class="todo-tasklist-item todo-tasklist-item-border-purple">
													<img class="todo-userpic pull-left" src="assets/admin/layout4/img/avatar7.jpg" width="27px" height="27px">
													<div class="todo-tasklist-item-title">
														 Projects list new Forms
													</div>
													<div class="todo-tasklist-item-text">
														 Lorem ipsum dolor sit amet, consectetuer dolore psum dolor sit.
													</div>
													<div class="todo-tasklist-controls pull-left">
														<span class="todo-tasklist-date"><i class="fa fa-calendar"></i> 19 Dec 2014 </span>
													</div>
												</div>
												<div class="todo-tasklist-item todo-tasklist-item-border-yellow">
													<img class="todo-userpic pull-left" src="assets/admin/layout4/img/avatar8.jpg" width="27px" height="27px">
													<div class="todo-tasklist-item-title">
														 New Search Keywords
													</div>
													<div class="todo-tasklist-item-text">
														 Lorem ipsum dolor sit amet, consectetuer sit amet ipsum dolor, consectetuer ipsum consectetuer sit amet dolore.
													</div>
													<div class="todo-tasklist-controls pull-left">
														<span class="todo-tasklist-date"><i class="fa fa-calendar"></i> 02 Feb 2015 </span>
														<span class="todo-tasklist-badge badge badge-roundless">Postponed</span>&nbsp;
													</div>
												</div>
												<div class="todo-tasklist-item todo-tasklist-item-border-green">
													<img class="todo-userpic pull-left" src="assets/admin/layout4/img/avatar9.jpg" width="27px" height="27px">
													<div class="todo-tasklist-item-title">
														 Slider Redesign
													</div>
													<div class="todo-tasklist-controls pull-left">
														<span class="todo-tasklist-date"><i class="fa fa-calendar"></i> 10 Feb 2015 </span>
														<span class="todo-tasklist-badge badge badge-roundless">Important</span>&nbsp;
													</div>
												</div>
												<div class="todo-tasklist-item todo-tasklist-item-border-red">
													<img class="todo-userpic pull-left" src="assets/admin/layout4/img/avatar5.jpg" width="27px" height="27px">
													<div class="todo-tasklist-item-title">
														 Homepage Alignments to adjust
													</div>
													<div class="todo-tasklist-item-text">
														 Lorem ipsum dolor sit amet, consectetuer dolore psum dolor sit.
													</div>
													<div class="todo-tasklist-controls pull-left">
														<span class="todo-tasklist-date"><i class="fa fa-calendar"></i> 14 Sep 2014 </span>
														<span class="todo-tasklist-badge badge badge-roundless">Important</span>
													</div>
												</div>
												<div class="todo-tasklist-item todo-tasklist-item-border-blue">
													<img class="todo-userpic pull-left" src="assets/admin/layout4/img/avatar6.jpg" width="27px" height="27px">
													<div class="todo-tasklist-item-title">
														 Contact Us Improvement
													</div>
													<div class="todo-tasklist-item-text">
														 Lorem ipsum amet, psum dolor sit consectetuer dolore.
													</div>
													<div class="todo-tasklist-controls pull-left">
														<span class="todo-tasklist-date"><i class="fa fa-calendar"></i> 21 Feb 2015 </span>
														<span class="todo-tasklist-badge badge badge-roundless">Postponed</span>&nbsp; <span class="todo-tasklist-badge badge badge-roundless">Primary</span>
													</div>
												</div>
											</div>
										</div><div class="slimScrollBar" style="background: rgb(218, 227, 231); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 551.249px;"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(234, 234, 234); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
									</div>
									<div class="todo-tasklist-devider">
									</div>
									<div class="col-md-7 col-sm-8">
										<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 800px;"><div class="scroller" style="max-height: 800px; overflow-y: scroll; width: auto; height: 800px;" data-always-visible="0" data-rail-visible="0" data-handle-color="#dae3e7" data-initialized="1">
											<form action="<%=request.getContextPath()%>/UserRegisterController?flag=addblog&ID=${i.id}" class="form-horizontal">
												<!-- TASK HEAD -->
												<div class="form">
													<div class="form-group">
														<div class="col-md-8 col-sm-8">
															<div class="todo-taskbody-user">
																<img class="todo-userpic pull-left" src="assets/admin/layout4/img/avatar6.jpg" width="50px" height="50px">
																<span class="todo-username pull-left">Vanessa Bond</span>
																<button type="button" class="todo-username-btn btn btn-circle btn-default btn-xs">&nbsp;edit&nbsp;</button>
															</div>
														</div>
														<div class="col-md-4 col-sm-4">
															<div class="todo-taskbody-date pull-right">
																<button type="button" class="todo-username-btn btn btn-circle btn-default btn-xs">&nbsp; Complete &nbsp;</button>
															</div>
														</div>
													</div>
													<!-- END TASK HEAD -->
													<!-- TASK TITLE -->
													<div class="form-group">
														<div class="col-md-12">
															<input type="text" id="tasktitle" class="form-control todo-taskbody-tasktitle" placeholder="Task Title...">
														</div>
													</div>
													<!-- TASK DESC -->
													<div class="form-group">
														<div class="col-md-12">
															<textarea id="taskdescription" class="form-control todo-taskbody-taskdesc" rows="8" placeholder="Task Description..."></textarea>
														</div>
													</div>
													<!-- END TASK DESC -->
													<!-- TASK DUE DATE -->
													<div class="form-group">
														<div class="col-md-12">
															<div class="input-icon">
																<i class="fa fa-calendar"></i>
																<input type="text"  class="form-control todo-taskbody-due" placeholder="Due Date...">
															</div>
														</div>
													</div>
													<!-- TASK TAGS -->
													<div class="form-group">
														<div class="col-md-12">
															<!-- <div class="select2-container select2-container-multi form-control todo-taskbody-tags" id="s2id_autogen1"></div> --><input type="text" class="form-control todo-taskbody-tags select2-offscreen" placeholder="Tags..." value="Pending, Requested" tabindex="-1">
														</div>
													</div>
													<!-- TASK TAGS -->
													<div class="form-actions right todo-form-actions">
														<button class="btn btn-circle btn-sm green-haze">Save Changes</button>
														<button class="btn btn-circle btn-sm btn-default">Cancel</button>
													</div>
												</div>
												<div class="tabbable-line">
													<ul class="nav nav-tabs ">
														<li class="active">
															<a href="#tab_1" data-toggle="tab">
															Comments </a>
														</li>
														<li>
															<a href="#tab_2" data-toggle="tab">
															History </a>
														</li>
													</ul>
													<div class="tab-content">
														<div class="tab-pane active" id="tab_1">
															<!-- TASK COMMENTS -->
															<div class="form-group">
																<div class="col-md-12">
																	<ul class="media-list">
																		<li class="media">
																			<a class="pull-left" href="javascript:;">
																			<img class="todo-userpic" src="assets/admin/layout4/img/avatar8.jpg" width="27px" height="27px">
																			</a>
																			<div class="media-body todo-comment">
																				<button type="button" class="todo-comment-btn btn btn-circle btn-default btn-xs">&nbsp; Reply &nbsp;</button>
																				<p class="todo-comment-head">
																					<span class="todo-comment-username">Christina Aguilera</span> &nbsp; <span class="todo-comment-date">17 Sep 2014 at 2:05pm</span>
																				</p>
																				<p class="todo-text-color">
																					 Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. <br>
																				</p>
																				<!-- Nested media object -->
																				<div class="media">
																					<a class="pull-left" href="javascript:;">
																					<img class="todo-userpic" src="assets/admin/layout4/img/avatar4.jpg" width="27px" height="27px">
																					</a>
																					<div class="media-body">
																						<p class="todo-comment-head">
																							<span class="todo-comment-username">Carles Puyol</span> &nbsp; <span class="todo-comment-date">17 Sep 2014 at 4:30pm</span>
																						</p>
																						<p class="todo-text-color">
																							 Thanks so much my dear!
																						</p>
																					</div>
																				</div>
																			</div>
																		</li>
																		<li class="media">
																			<a class="pull-left" href="javascript:;">
																			<img class="todo-userpic" src="assets/admin/layout4/img/avatar5.jpg" width="27px" height="27px">
																			</a>
																			<div class="media-body todo-comment">
																				<button type="button" class="todo-comment-btn btn btn-circle btn-default btn-xs">&nbsp; Reply &nbsp;</button>
																				<p class="todo-comment-head">
																					<span class="todo-comment-username">Andres Iniesta</span> &nbsp; <span class="todo-comment-date">18 Sep 2014 at 9:22am</span>
																				</p>
																				<p class="todo-text-color">
																					 Cras sit amet nibh libero, in gravida nulla. Scelerisque ante sollicitudin commodo Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. <br>
																				</p>
																			</div>
																		</li>
																		<li class="media">
																			<a class="pull-left" href="javascript:;">
																			<img class="todo-userpic" src="assets/admin/layout4/img/avatar6.jpg" width="27px" height="27px">
																			</a>
																			<div class="media-body todo-comment">
																				<button type="button" class="todo-comment-btn btn btn-circle btn-default btn-xs">&nbsp; Reply &nbsp;</button>
																				<p class="todo-comment-head">
																					<span class="todo-comment-username">Olivia Wilde</span> &nbsp; <span class="todo-comment-date">18 Sep 2014 at 11:50am</span>
																				</p>
																				<p class="todo-text-color">
																					 Cras sit amet nibh libero, in gravida nulla. Scelerisque ante sollicitudin commodo Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. <br>
																				</p>
																			</div>
																		</li>
																	</ul>
																</div>
															</div>
															<!-- END TASK COMMENTS -->
															<!-- TASK COMMENT FORM -->
															<div class="form-group">
																<div class="col-md-12">
																	<ul class="media-list">
																		<li class="media">
																			<img class="todo-userpic pull-left" src="assets/admin/layout4/img/avatar4.jpg" width="27px" height="27px">
																			<div class="media-body">
																				<textarea class="form-control todo-taskbody-taskdesc" rows="4" placeholder="Type comment..."></textarea>
																			</div>
																		</li>
																	</ul>
																	<button type="button" class="pull-right btn btn-sm btn-circle green-haze"> &nbsp; Submit &nbsp; </button>
																</div>
															</div>
															<!-- END TASK COMMENT FORM -->
														</div>
														<div class="tab-pane" id="tab_2">
															<ul class="todo-task-history">
																<li>
																	<div class="todo-task-history-date">
																		 20 Jun, 2014 at 11:35am
																	</div>
																	<div class="todo-task-history-desc">
																		 Task created
																	</div>
																</li>
																<li>
																	<div class="todo-task-history-date">
																		 21 Jun, 2014 at 10:35pm
																	</div>
																	<div class="todo-task-history-desc">
																		 Task category status changed to "Top Priority"
																	</div>
																</li>
																<li>
																	<div class="todo-task-history-date">
																		 22 Jun, 2014 at 11:35am
																	</div>
																	<div class="todo-task-history-desc">
																		 Task owner changed to "Nick Larson"
																	</div>
																</li>
																<li>
																	<div class="todo-task-history-date">
																		 30 Jun, 2014 at 8:09am
																	</div>
																	<div class="todo-task-history-desc">
																		 Task completed by "Nick Larson"
																	</div>
																</li>
															</ul>
														</div>
													</div>
												</div>
											</form>
										</div><div class="slimScrollBar" style="background: rgb(218, 227, 231); width: 7px; position: absolute; top: 216px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 583.942px;"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(234, 234, 234); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
									</div>
								</div>
							</div>
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
      <div class="col-md-3 col-sm-6"> <a href="#" class="logo"><img src="images/logo.png" alt=""></a>
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
      <li class="active"><a href="user-profile(layout-1).jsp">User Profile</a></li>
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

<script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<script src="assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="assets/admin/layout4/scripts/demo.js" type="text/javascript"></script>
<script src="assets/admin/pages/scripts/todo.js" type="text/javascript"></script>
<script src="assets/admin/layout4/scripts/layout.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script type="text/javascript" src="assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
<script src="assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script type="text/javascript" src="assets/global/plugins/select2/select2.min.js"></script>


<script>
$(document).ready(function() {    
    Metronic.init(); // init metronic core components
Layout.init(); // init current layout
Demo.init(); // init demo features 
Todo.init(); // init todo page
});
</script>




<script>
$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})
</script>
</body>
</html>