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
<link rel="stylesheet" href="css/main-style.css">
<link rel="stylesheet" href="css/style.css">


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
        <div class="language"> <a href="#" class="toggle"><img src="images/bugfree_logo.jpg" alt=""> ENG</a>
          <ul>
            <li><a href="#"><img src="images/flags/32/PT.png" alt=""> PT</a></li>
            <li><a href="#"><img src="images/flags/32/FR.png" alt=""> FR</a></li>
            <li><a href="#"><img src="images/flags/32/ES.png" alt=""> ES</a></li>
            
          </ul>
        </div>
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
            <c:forEach items="${sessionScope.passmatch}" var="i"> ${i.firstname}${i.lastname}</c:forEach>
            <li class="active"> <a href="listing-filter.jsp">Professionals</a> </li>
            <li> <a href="Home.jsp">Pages</a>
              <ul>
                <li><a href="profilecompany.jsp">Profile Company</a></li>
                <li><a href="profilecompany.jsp">Profile Company No Tabs</a></li>
                <li><a href="user-dashboard(connections)(hotkeys-disabled).html">User Dashboard 1</a></li>
                <li><a href="user-dashboard(connections)(hotkeys-enabled).html">User Dashboard 2</a></li>
                <li><a href="user-dashboard(followers).html">User Dashboard 3</a></li>
                <li><a href="user-dashboard(following).html">User Dashboard 4</a></li>
                <li><a href="blog-post.jsp">Blog Post</a></li>                
              </ul>
            </li>
            <li> <a href="user-profile(layout-1).jsp">User Profile</a></li>
            <li><a href="blog.jsp">Blog</a></li>
            <li><a href="gui-kit.html">GUI KIT</a></li>
          </ul>
        </nav>
      </div>
    </div>
    <!-- end .uou-block-2b --> 
  </div>
  
  <!-- SUB Banner -->
  <div class="profile-bnr sub-bnr user-profile-bnr">
    <div class="position-center-center">
      <div class="container">
        <h2>Search Professionals</h2>
      </div>
    </div>
  </div>
  
  <!-- search -->
  <div class="search-pro">
    <div class="map-search">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="map-toggleButton"> <i class="fa fa-bars"></i> </div>
            <div class="map-search-fields">
              <div class="field">
                <input type="text" placeholder="Keyword">
              </div>
              <div class="field">
                <input type="text" placeholder="Location">
              </div>
              <div class="field custom-select-box">
                <input type="text" placeholder="Profession">
              </div>
            </div>
            <div class="search-button">
              <button>Search Professionals</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <!-- Members -->
  <section class="pro-mem">
    <div class="container pb30">
      <h3>Professionals</h3>
      <div class="row">
        <div class="col-sm-3">
          <div class="uou-block-6a"> <img src="images/member-1.png" alt="">
            <h6>Jessica Walsh <span>Founder &amp; Web Designer</span></h6>
            <p><i class="fa fa-map-marker"></i> New York, USA</p>
          </div>
          <!-- end .uou-block-6a --> 
        </div>
        <div class="col-sm-3">
          <div class="uou-block-6a"> <img src="images/member-2.png" alt="">
            <h6>Jessica Walsh <span>Founder &amp; Web Designer</span></h6>
            <p><i class="fa fa-map-marker"></i> New York, USA</p>
          </div>
          <!-- end .uou-block-6a --> 
        </div>
        <div class="col-sm-3">
          <div class="uou-block-6a"> <img src="images/member-2.png" alt="">
            <h6>Jessica Walsh <span>Founder &amp; Web Designer</span></h6>
            <p><i class="fa fa-map-marker"></i> New York, USA</p>
          </div>
          <!-- end .uou-block-6a --> 
        </div>
        <div class="col-sm-3">
          <div class="uou-block-6a"> <img src="images/member-3.png" alt="">
            <h6>Jessica Walsh <span>Founder &amp; Web Designer</span></h6>
            <p><i class="fa fa-map-marker"></i> New York, USA</p>
          </div>
          <!-- end .uou-block-6a --> 
        </div>
        <div class="col-sm-3">
          <div class="uou-block-6a"> <img src="images/member-1.png" alt="">
            <h6>Jessica Walsh <span>Founder &amp; Web Designer</span></h6>
            <p><i class="fa fa-map-marker"></i> New York, USA</p>
          </div>
          <!-- end .uou-block-6a --> 
        </div>
        <div class="col-sm-3">
          <div class="uou-block-6a"> <img src="images/member-1.png" alt="">
            <h6>Jessica Walsh <span>Founder &amp; Web Designer</span></h6>
            <p><i class="fa fa-map-marker"></i> New York, USA</p>
          </div>
          <!-- end .uou-block-6a --> 
        </div>
        <div class="col-sm-3">
          <div class="uou-block-6a"> <img src="images/member-2.png" alt="">
            <h6>Jessica Walsh <span>Founder &amp; Web Designer</span></h6>
            <p><i class="fa fa-map-marker"></i> New York, USA</p>
          </div>
          <!-- end .uou-block-6a --> 
        </div>
        <div class="col-sm-3">
          <div class="uou-block-6a"> <img src="images/member-2.png" alt="">
            <h6>Jessica Walsh <span>Founder &amp; Web Designer</span></h6>
            <p><i class="fa fa-map-marker"></i> New York, USA</p>
          </div>
          <!-- end .uou-block-6a --> 
        </div>
      </div>
    </div>
  </section>
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
      <li><a href="index-2.html">Index</a></li>
      <li class="active"><a href="listing-filter.jsp">Professionals</a> </li>
      <li><a href="profilecompany.jsp">Profile Company</a></li>
      <li><a href="profile_company-no-tabs.html">Profile Company No Tabs</a></li>
      <li><a href="user-dashboard(connections)(hotkeys-disabled).html">User Dashboard 1</a></li>
      <li><a href="user-dashboard(connections)(hotkeys-enabled).html">User Dashboard 2</a></li>
      <li><a href="user-dashboard(followers).html">User Dashboard 3</a></li>
      <li><a href="user-dashboard(following).html">User Dashboard 4</a></li>
      <li><a href="blog-post.jsp">Blog Post</a></li>
      <li> <a href="user-profile(layout-1).jsp">User Profile</a></li>
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
</body>
</html>