<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>The Skills Network - PasswordChange</title>

<!-- Fonts Online -->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800,300' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>

<link rel="shortcut icon" href="images/Bugfree.ico">

<!-- Style Sheet -->
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/main-style.css">
<link rel="stylesheet" href="css/PasswordChange-style.css">
<style type="text/css">
	.validate-success{
		color:#356635;
	}
	.validate-error{
		color:#b94a48;
	}
</style>
<script>
    history.forward();
</script>

</head>

<body>
<div id="main-wrapper"> 
  
  <!-- Top Toolbar -->
  <div class="toolbar">
    <div class="uou-block-1a blog">
      <div class="container">
        <div class="search"> <a href="#" class="toggle fa fa-search"></a>
          <form>
            <input type="text" class="search-input" placeholder="Search ...">
            <input type="submit" value="">
          </form>
        </div>
<%--         <c:forEach items="${sessionScope.UserName}" var="i">${i.email1}</c:forEach> --%>
        <ul class="social">
          <li><a href="#" class="fa fa-facebook"></a></li>
          <li><a href="#" class="fa fa-twitter"></a></li>
          <li><a href="#" class="fa fa-google-plus"></a></li>
        </ul>
        <ul class="authentication">
          <li><a href="Home.jsp">Login</a></li>
          <li><a href="Home.jsp">Register</a></li>
        </ul>
        
      </div>
    </div>
    <!-- end .uou-block-1a --> 
  </div>
  <!-- end toolbar -->
  
  <div class="box-shadow-for-ui">
    <div class="uou-block-2b">
      <div class="container"> <a href="#" class="logo"><img src="images/bugfree_logo.jpg" alt=""></a> <a href="#" class="mobile-sidebar-button mobile-sidebar-toggle"><span></span></a>
        
      </div>
    </div>
    <!-- end .uou-block-2b --> 
  </div>
  
  <!-- HOME PRO-->
  <div class="home-pro"> 
    
    <!-- PRO BANNER HEAD -->
    <div class="banr-head">
      <div class="container">
        <div class="row"> 
          
          <!-- CONTENT -->
          <div class="col-sm-6">
            <div class="text-area">
              <div class="position-center-center col-md-10">
                <h1> Here comes the social networking platform that you’ve been waiting for</h1>
                <h6>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue conseqaut nibbhi ellit ipsum consectetur.</h6>
              </div>
            </div>
          </div>
          
          <!-- FORM SECTION -->
          <div class="col-sm-6">
            <div class="login-sec"> 
              
              <!-- TABS -->
              <div class="uou-tabs">
                <ul class="tabs">
               
                  <li class="active"><a href="">RESET PASSWORD</a></li>
                 
                </ul>
<!--                 Reset Passord -->
                                           
                 <div id="log-in" class="active">
                    <form id="frmpswdchange" action="<%=request.getContextPath() %>/PasswordChangeController?flag=update" method="post">
                     <c:forEach items="${sessionScope.UserName}" var="i">
<%--                      <input type="hidden" name="username" value="${i.email1}">${i.email1} --%>
                       
                      </c:forEach>
                      <c:forEach items="${sessionScope.emailmatch}" var="j">
                     <a href="<%=request.getContextPath()%>/FpsswdController?flag=resendotp&ID=${j.email}">Click Here OTP</a>
                     <input type="hidden" name="username" value="${j.email}">
                       <input type="hidden" name="userID" value="${j.userID}">
                      <input type="hidden" name="firstname" value="${j.firstname}"> 
                      <input type="hidden" name="lastname" value="${j.lastname}"> 
                      <input type="hidden" name="phone" value="${j.phone}"> 
                     
                      </c:forEach>
                      <div class="divValidate">
                      <label>OTP <span class="text-danger">*</span></label>
                      <input name="otp" type="password"  required="required" placeholder="Enter OTP here">
                      </div>
                      <div class="divValidate">
                      <label>New Password<span class="text-danger">*</span></label>
                      <input name="otppassword"  type="password" id="otppassword" required="required" placeholder="Enter New Password here">
                      </div>
                      <div class="divValidate">
                      <label>Re-enter Password <span class="text-danger">*</span></label>
                      <input name="Repassword" type="password" id="Repassword" required="required" placeholder="Re-enter Password"><br>
                      </div>
                      <button id="btnPswdchange" type="submit">Login</button>
                   </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <!-- SERVICES -->
    <section class="services"> 
      
      <!-- SERVICES ROW -->
      <ul class="row">
        
        <!-- SECTION -->
        <li class="col-md-4">
          <div class="ser-inn">
          <i class="fa fa-globe"></i>
            <h4>Stay in touch with your
              colleagues</h4>
            <i class="fa fa-globe big"></i>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue conseqaut nibbhi ellit ipsum consectetur.</p>
          </div>
        </li>
        
        <!-- SECTION -->
        <li class="col-md-4">
          <div class="ser-inn">
            <i class="fa fa-book"></i>
            <h4>Get the latest news
              in your industry</h4>
            <i class="fa fa-book big"></i>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue conseqaut nibbhi ellit ipsum consectetur.</p>
          </div>
        </li>
        
        <!-- SECTION  -->
        <li class="col-md-4">
          <div class="ser-inn">
          <i class="fa fa-picture-o"></i>
            <h4>Share what’s up
              with you</h4>
            <i class="fa fa-picture-o big"></i>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue conseqaut nibbhi ellit ipsum consectetur.</p>
          </div>
        </li>
      </ul>
    </section>
    
    <!-- PRO SECTION -->
    <section class="pro-content">
      <div class="container-fluid">
        <div class="row"> 
          
          <!-- PRO IMAGE -->
          <div class="col-md-6 pro-inside" style="background:url(images/pro-img-1.jpg) center center no-repeat;"></div>
          
          <!-- PRO CONTENT -->
          <div class="col-md-6 pro-inside">
            <div class="position-center-center col-md-6">
              <h1>Interact with other
                professionals</h1>
              <p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem 
                accusantium doloremque laudantium, totam rem aperiam, 
                eaque ipsa quae ab illo inventore veritatis et quasi architecto 
                beatae vitae dicta sunt explicabo. </p>
            </div>
          </div>
        </div>
      </div>
      
      <!-- PRO SECTION -->
      <div class="container-fluid">
        <div class="row"> 
          
          <!-- PRO TEXT -->
          <div class="col-md-6 pro-inside">
            <div class="position-center-center col-md-6">
              <h1>Collaborate on a
                project</h1>
              <p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem 
                accusantium doloremque laudantium, totam rem aperiam, 
                eaque ipsa quae ab illo inventore veritatis et quasi architecto 
                beatae vitae dicta sunt explicabo. </p>
            </div>
          </div>
          
          <!-- PRO BACKGROUND -->
          <div class="col-md-6 pro-inside" style="background:url(images/pro-img-2.jpg) center center no-repeat;"></div>
        </div>
      </div>
    </section>
    
    <!-- APP IMAGE -->
    <section class="app-images">
      <div class="container">
        <div class="row"> 
          
          <!-- TEXT -->
          <div class="col-md-6 text-center text-area">
            <h1>SocialMe for your 
              Smartphone</h1>
            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem 
              accusantium doloremque laudantium, totam rem aperiam, 
              eaque ipsa quae ab illo inventore veritatis et quasi architecto 
              beatae vitae dicta sunt explicabo. </p>
            <a href="#."><i class="fa fa-apple"></i> App Store</a> </div>
          
          <!-- APP IMAGE -->
          <div class="col-md-6 text-right"><img src="images/app-img.png" alt="" > </div>
        </div>
      </div>
    </section>
    
    <!-- TESTIMONIALS -->
    <section class="clients-says">
      <div class="container">
        <h3 class="section-title">what our users say </h3>
        <div class="testi">
          <div class="texti-slide"> 
            <!-- SLide -->
            <div class="clints-text">
              <div class="text-in">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue.</p>
              </div>
              <div class="avatar">
                <div class="media-left"> <a href="#."> <img src="images/clients-avatar-1.jpg" alt=""> </a> </div>
                <div class="media-body">
                  <h6>John Kevin Mara</h6>
                  <span>smashingmagazine.com</span> </div>
              </div>
            </div>
            
            <!-- SLide -->
            <div class="clints-text">
              <div class="text-in">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue.</p>
              </div>
              <div class="avatar">
                <div class="media-left"> <a href="#."> <img src="images/clients-avatar-1.jpg" alt=""> </a> </div>
                <div class="media-body">
                  <h6>John Kevin Mara</h6>
                  <span>smashingmagazine.com</span> </div>
              </div>
            </div>
            
            <!-- SLide -->
            <div class="clints-text">
              <div class="text-in">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue.</p>
              </div>
              <div class="avatar">
                <div class="media-left"> <a href="#."> <img src="images/clients-avatar-1.jpg" alt=""> </a> </div>
                <div class="media-body">
                  <h6>John Kevin Mara</h6>
                  <span>smashingmagazine.com</span> </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- sponsors -->
    <div class="sponsors" style="background:url(images/sponser-bg.jpg) no-repeat;">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h3 class="section-title">Our Sponsors</h3>
            <div class="sponsors-slider">
              <div class="item"><img src="images/sponsor_logo1.png" alt="" class="img-responsive"></div>
              <div class="item"><img src="images/sponsor_logo2.png" alt="" class="img-responsive"></div>
              <div class="item"><img src="images/sponsor_logo3.png" alt="" class="img-responsive"></div>
              <div class="item"><img src="images/sponsor_logo4.png" alt="" class="img-responsive"></div>
              <div class="item"><img src="images/sponsor_logo5.png" alt="" class="img-responsive"></div>
              <div class="item"><img src="images/sponsor_logo6.png" alt="" class="img-responsive"></div>
              <div class="item"><img src="images/sponsor_logo4.png" alt="" class="img-responsive"></div>
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
      <li class="active"><a href="index-2.html">Index</a></li>
      <li> <a href="listing-filter.html">Professionals</a> </li>
      <li><a href="profile_company.html">Profile Company</a></li>
      <li><a href="profile_company-no-tabs.html">Profile Company No Tabs</a></li>
      <li><a href="user-dashboard(connections)(hotkeys-disabled).html">User Dashboard 1</a></li>
      <li><a href="user-dashboard(connections)(hotkeys-enabled).html">User Dashboard 2</a></li>
      <li><a href="user-dashboard(followers).html">User Dashboard 3</a></li>
      <li><a href="user-dashboard(following).html">User Dashboard 4</a></li>
      <li><a href="blog-post.html">Blog Post</a></li>
      <li> <a href="user-profile(layout-1).html">User Profile</a></li>
      <li><a href="blog.html">Blog</a></li>
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
<script src="assets/js/custom.js"></script>
<script src="js/plugins/jquery-validation-1.11.1/dist/jquery.validate.min.js"></script>

<script type="text/javascript">



$(document).ready(function(){	
	jQuery.validator.addMethod("lettersonly", function (value, element) {
	    //return this.optional(element) || /^[a-z]+$/i.test(value);
	    return this.optional(element) || /^[a-zA-Z ]*$/i.test(value);
	}, "Enter only alphabet characters.");
	jQuery.validator.addMethod("email", function (value, element) {
	    //return this.optional(element) || /^[a-z]+$/i.test(value);
	    return this.optional(element) || /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/i.test(value);
	}, "Enter only Email Address Here.");
	 jQuery.validator.addMethod("validpassword", function (value, element) {
		     //return this.optional(element) || /^[a-z]+$/i.test(value);       /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/
		     return this.optional(element) || /(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*]).{6,}$/i.test(value);
		 }, "Input must contain at least one digit/special characters and alphanumeric letter and be at least six characters long.");
	
// 	 jQuery.validator.addMethod("digits", function (value, element) {
// 		    //return this.optional(element) || /^[a-z]+$/i.test(value);
// 		    return this.optional(element) ||  /^\+(?:[0-9] ?){6,14}[0-9]$/i.test(value);
// 		}, "Enter only numbers.");
	
	 
	 
	$('#btnPswdchange').on('click', function(){		
		$('#frmpswdchange').validate({
	        rules: {
	        	email: {
	                required: true,
	                minlength: 2,
	                maxlength: 70,
	                email:true
	            },
	            otppassword: {
	                required: true,
	                minlength: 6,
	                maxlength: 16,
	                validpassword : true
	            },
	            Repassword: {
	                required: true,
	                minlength: 6,
	                maxlength: 16,
	                equalTo: "#otppassword"
	            },
	            
	        },
	        errorClass: 'help-block',
	        errorElement: 'span',
	        highlight: function (element, errorClass, validClass) {	        	
	        	/* $(element).css('border','1px solid red');	            
	            $(element).parents().removeClass('validate-success').addClass('validate-error'); */
	        	$(element).parents('.divValidate').removeClass('has-success').addClass('has-error');	            
	        },
	        unhighlight: function (element, errorClass, validClass) {
	        	/* $(element).css('border','1px solid green');
	        	$(element).parents().removeClass('validate-error').addClass('validate-success'); */
	        	$(element).parents('.divValidate').removeClass('has-error').addClass('has-success');
	        },  
	        submitHandler: function () {                
                $('#frmpswdchange').submit();
            }
	    });
		
	});

});
</script>

</body>


</html>
