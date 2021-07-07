<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">

<head>
	<!-- meta -->
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">

	<title>Smart PT STUDIO</title>
</head>

    <!-- jQuery -->
    <script src="resources/assets/js/jquery-2.1.0.min.js"></script>

    <!-- Plugins -->
    <script src="resources/assets/js/scrollreveal.min.js"></script>
    <script src="resources/assets/js/waypoints.min.js"></script>
    <script src="resources/assets/js/jquery.counterup.min.js"></script>
    <script src="resources/assets/js/imgfix.min.js"></script> 
    <script src="resources/assets/js/mixitup.js"></script> 
    <script src="resources/assets/js/accordions.js"></script>
    
    <!-- Global Init -->
    <script src="resources/assets/js/custom.js"></script>

    <!-- Bootstrap -->
	<script src="resources/assets/js/popper.js"></script>
    <script src="resources/assets/js/bootstrap.min.js"></script>

	<!-- css -->
    <link rel="stylesheet" type="text/css" href="resources/assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="resources/assets/css/font-awesome.css">

    <link rel="stylesheet" href="resources/assets/css/templatemo-training-studio.css">

<body> 
    <!-- ***** Preloader Start ***** -->
    <div id="js-preloader" class="js-preloader">
      <div class="preloader-inner">
        <span class="dot"></span>
        <div class="dots">
          <span></span>
          <span></span>
          <span></span>
        </div>
      </div>
    </div>
    <!-- ***** Preloader End ***** -->
    
    <!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <a href="/SmartPT" class="logo">Smart PT<em> Studio</em></a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li class="scroll-to-section"><a href="#top" class="active">Home</a></li>
                            <li class="scroll-to-section"><a href="#features">Routine</a></li>
                            <li class="scroll-to-section"><a href="#our-classes">Personal Training</a></li>
                            <li class="scroll-to-section"><a href="#schedule">Exercise List</a></li>
                            <li class="scroll-to-section"><a href="#trainers">Contact</a></li> 
                            <li class="main-button"><a href="/SmartPT/home">Sign In</a></li>
                        </ul>        
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->

    <!-- ***** Main Banner Area Start ***** -->
    <div class="main-banner" id="top">
        <video autoplay muted loop id="bg-video">
            <source src="resources/assets/images/gym-video.mp4" type="video/mp4" />
        </video>

        <div class="video-overlay header-text">
            <div class="caption">
                <h6>work harder, get healthier</h6>
                <h2>easy with our <em>Smart PT</em></h2>
                <div class="main-button scroll-to-section">
                    <a href="#features">Make my Routine</a>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Main Banner Area End ***** -->

    <!-- ***** Features Item Start ***** -->
    <section class="section" id="features">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-heading">
                        <h2>Choose <em>Routine</em></h2>
                        <img src="resources/assets/images/line-dec.png" alt="waves">
                        <p>Smart PT Studio is free training software for members who want to correct own body shape. You can use Smart PT service anywhere, especially at home.</p>
                    </div>
                </div>
                <div class="col-lg-6">
                    <ul class="features-items">
                        <li class="feature-item">
                            <div class="left-icon">
                                <img src="resources/assets/images/features-first-icon.png" alt="First One">
                            </div>
                            <div class="right-content">
                                <h4>Neck Stretching</h4>
                                <p>Please do not re-distribute this template ZIP file on any template collection website. This is not allowed.</p>
                                <a href="${contextPath}/selectRoutine_neck.do" class="text-button">Discover More</a>
                            </div>
                        </li>
                        <li class="feature-item">
                            <div class="left-icon">
                                <img src="resources/assets/images/features-first-icon.png" alt="second one">
                            </div>
                            <div class="right-content">
                                <h4>Waist Stretching</h4>
                                <p>If you wish to support TemplateMo website via PayPal, please feel free to contact us. We appreciate it a lot.</p>
                               
                                <a href="${contextPath}/selectRoutine_waist.do" class="text-button">Discover More</a>
                                <p>_____________________________________________________</p>
                                
                            </div>
                        </li>
                        <li class="feature-item">
                            <div class="left-icon">
                                <img src="resources/assets/images/features-first-icon.png" alt="third gym training">
                            </div>
                            <div class="right-content">
                                <h4>Basic Stretching Course</h4>
                                <p>Credit goes to <a rel="nofollow" href="https://www.pexels.com" target="_blank">Pexels website</a> for images and video background used in this HTML template.</p>
                                <!--
                                <a href="#" class="text-button">Discover More</a>
                                -->
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="col-lg-6">
                    <ul class="features-items">
                        <li class="feature-item">
                            <div class="left-icon">
                                <img src="resources/assets/images/features-first-icon.png" alt="fourth muscle">
                            </div>
                            <div class="right-content">
                                <h4>Pelvis Stretching</h4>
                                <p>You may want to browse through <a rel="nofollow" href="https://templatemo.com/tag/digital-marketing" target="_parent">Digital Marketing</a> or <a href="https://templatemo.com/tag/corporate">Corporate</a> HTML CSS templates on our website.</p>
                                <a href="${contextPath}/selectRoutine_pelvis.do" class="text-button">Discover More</a>
                            </div>
                        </li>
                        <li class="feature-item">
                            <div class="left-icon">
                                <img src="resources/assets/images/features-first-icon.png" alt="training fifth">
                            </div>
                            <div class="right-content">
                                <h4>Core Training</h4>
                                <p>This template is built on Bootstrap v4.3.1 framework. It is easy to adapt the columns and sections.</p>
                                
                                <a href="${contextPath}/selectRoutine_core.do" class="text-button">Discover More</a>

                                <p>_____________________________________________________</p>
                                
                            </div>
                        </li>
                        <li class="feature-item">
                            <div class="left-icon">
                                <img src="resources/assets/images/features-first-icon.png" alt="gym training">
                            </div>
                            <div class="right-content">
                                <h4>Core Strength Course</h4>
                                <p>Suspendisse fringilla et nisi et mattis. Curabitur sed finibus nisi. Integer nibh sapien, vehicula et auctor.</p>
                                <!--
                                <a href="#" class="text-button">Discover More</a>
                            	-->
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Features Item End ***** -->

    <!-- ***** Call to Action Start ***** -->
    <section class="section" id="call-to-action">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="cta-content">
                        <h2>Don’t <em>think</em>, begin <em>today</em>!</h2>
                        <p>Ut consectetur, metus sit amet aliquet placerat, enim est ultricies ligula, sit amet dapibus odio augue eget libero. Morbi tempus mauris a nisi luctus imperdiet.</p>
                        <div class="main-button scroll-to-section">
                            <a href="#our-classes">Become a member</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Call to Action End ***** -->

    <!-- ***** Our Classes Start ***** -->
    <section class="section" id="our-classes">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-heading">
                        <h2>Personal <em>Training</em></h2>
                        <img src="resources/assets/images/line-dec.png" alt="">
                        <p>Nunc urna sem, laoreet ut metus id, aliquet consequat magna. Sed viverra ipsum dolor, ultricies fermentum massa consequat eu.</p>
                    </div>
                </div>
            </div>
            <div class="row" id="tabs">
              <div class="col-lg-4">
                <ul>
                  <li><a href='#tabs-1'><img src="resources/assets/images/tabs-first-icon.png" alt="">Neck Stretching Class</a></li>
                  <li><a href='#tabs-2'><img src="resources/assets/images/tabs-first-icon.png" alt="">Waist Stretching Class</a></a></li>
                  <li><a href='#tabs-3'><img src="resources/assets/images/tabs-first-icon.png" alt="">Pelvis Stretching Class</a></a></li>
                  <li><a href='#tabs-4'><img src="resources/assets/images/tabs-first-icon.png" alt="">Core Training Class</a></a></li>
                  <div class="main-rounded-button"><a href="/SmartPT/home">SMART PT Start</a></div>
                </ul>
              </div>
              <div class="col-lg-8">
                <section class='tabs-content'>
                  <article id='tabs-1'>
                    <img src="https://s3.amazonaws.com/prod.skimble/assets/1219/skimble-sidebends1_iphone.jpg" alt="First Class" width="500px">
                    <h4>Neck Stretching Class</h4>
                    <p>Phasellus convallis mauris sed elementum vulputate. Donec posuere leo sed dui eleifend hendrerit. Sed suscipit suscipit erat, sed vehicula ligula. Aliquam ut sem fermentum sem tincidunt lacinia gravida aliquam nunc. Morbi quis erat imperdiet, molestie nunc ut, accumsan diam.</p>
                    <div class="main-button">
                        <a href="#">Training Start</a>
                    </div>
                  </article>
                  <article id='tabs-2'>
                    <img src="https://github.com/Multicampus-AI-service-development/Project-Data/blob/1cd8b0da3ad8186b1d28a780546a79382fd144c0/waist%20stretching%20images/Child's%20Pose.png?raw=true" alt="Second Training" width="500px">
                    <h4>Waist Stretching Class</h4>
                    <p>Integer dapibus, est vel dapibus mattis, sem mauris luctus leo, ac pulvinar quam tortor a velit. Praesent ultrices erat ante, in ultricies augue ultricies faucibus. Nam tellus nibh, ullamcorper at mattis non, rhoncus sed massa. Cras quis pulvinar eros. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
                    <div class="main-button">
                        <a href="exercise/stretching/waist">Training Start</a>
                    </div>
                  </article>
                  <article id='tabs-3'>
                    <img src="https://media.self.com/photos/5a305b5a83ab3f54feacf748/master/w_1600%2Cc_limit/2_13self.jpg" alt="Third Class" width="500px">
                    <h4>Pelvis Stretching Class</h4>
                    <p>Fusce laoreet malesuada rhoncus. Donec ultricies diam tortor, id auctor neque posuere sit amet. Aliquam pharetra, augue vel cursus porta, nisi tortor vulputate sapien, id scelerisque felis magna id felis. Proin neque metus, pellentesque pharetra semper vel, accumsan a neque.</p>
                    <div class="main-button">
                        <a href="#">Training Start</a>
                    </div>
                  </article>
                  <article id='tabs-4'>
                    <img src="https://t1.daumcdn.net/cfile/tistory/99ECCD4F5A86C62C22" alt="Fourth Training">
                    <h4>Core Training Class</h4>
                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean ultrices elementum odio ac tempus. Etiam eleifend orci lectus, eget venenatis ipsum commodo et.</p>
                    <div class="main-button">
                        <a href="#">Training Start</a>
                    </div>
                  </article>
                </section>
              </div>
            </div>
        </div>
    </section>
    <!-- ***** Our Classes End ***** -->
    
    <section class="section" id="schedule">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-heading dark-bg">
                        <h2>Exercise <em>List</em></h2>
                        <img src="resources/assets/images/line-dec.png" alt="">
                        <p>Nunc urna sem, laoreet ut metus id, aliquet consequat magna. Sed viverra ipsum dolor, ultricies fermentum massa consequat eu.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="filters">
                        <ul class="schedule-filter">
                            <li data-tsfilter="monday">Neck</li>
                            <li data-tsfilter="tuesday">Waist</li>
                            <li data-tsfilter="wednesday">Pelvis</li>
                            <li data-tsfilter="thursday">Core</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-10 offset-lg-1">
                    <div class="schedule-table filtering">
                        <table>
                            <tbody>
                                <tr>
                                    <td><font color="#fd7e14" size="3">Neck</font></td>
                                    <td><font color="#fd7e14" size="3">Waist</font></td>
                                    <td><font color="#fd7e14" size="3">Pelvis</font></td>
                                    <td><font color="#fd7e14" size="3">Core Strength</font></td>
                                </tr>
                                <tr>
                                    <td>shrug</td>
                                    <td>lying on your stomach</td>
                                    <td>piriformis stretch</td>
                                    <td>Nonsan</td>
                                </tr>
                                <tr>
                                    <td>hands up</td>
                                    <td>prone press-ups</td>
                                    <td>lunge with spinal twist</td>
                                    <td>Skating of socks</td>
                                </tr>
                                <tr>
                                    <td>neck turning stretch</td>
                                    <td>lying flexion</td>
                                    <td>lunging hip flexor stretch</td>
                                    <td>enhanced birddog</td>
                                </tr>
                                <tr>
                                    <td>Stand with arms behind</td>
                                    <td>sitting flexion</td>
                                    <td>figure 4 stretch</td>
                                    <td>cat and cow</td>
                                </tr>
                                <tr>
                                    <td>chicken stretch</td>
                                    <td>isometric rows</td>
                                    <td>pretzel stretch</td>
                                    <td>dead bug</td>
                                </tr><tr>
                                    <td>head press stretch</td>
                                    <td>child`s pose</td>
                                    <td>pigeon stretch</td>
                                    <td>russian twist</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ***** Testimonials Starts ***** -->
    <section class="section" id="trainers">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-heading">
                        <h2>Contact <em>Us</em></h2>
                        <img src="resources/assets/images/line-dec.png" alt="">
                        <p>Nunc urna sem, laoreet ut metus id, aliquet consequat magna. Sed viverra ipsum dolor, ultricies fermentum massa consequat eu.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-44">
                    <div class="trainer-item2">
                        <div class="image-thumb">
                            <img src="https://avatars.githubusercontent.com/u/78195441?v=4" alt="">
                        </div>
                        <div class="down-content">
                            <span>Product Manager</span>
                            <h4>Hyung-chul Wang</h4>
                            <p>• Managing the whole SmartPT project<br>• Full-stack Engineer<br>• Responsible for applying Speech to Text & Text to Speech API</p>
                            <ul class="social-icons">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-behance"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-44">
                    <div class="trainer-item2">
                        <div class="image-thumb">
                            <img src="resources/assets/images/second-trainer.jpg" alt="">
                        </div>
                        <div class="down-content">
                            <span>Senior Programmer</span>
                            <h4>Ho-yeol Lee</h4>
                            <p>• Senior Programmer involved in whole code<br>• Full-Stack Engineer<br>• Responsible for applying Speech to Text & Text to Speech API</p>
                            <ul class="social-icons">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-behance"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-44">
                    <div class="trainer-item2">
                        <div class="image-thumb">
                            <img src="resources/assets/images/third-trainer.jpg" alt="">
                        </div>
                        <div class="down-content">
                            <span>Software Engineer</span>
                            <h4>Jung-hun Jang</h4>
                            <p>• Control in Database Management System<br>• Full-Stack Engineer<br>• Responsible for configuring Member Management System</p>
                            <ul class="social-icons">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-behance"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-44">
                    <div class="trainer-item2">
                        <div class="image-thumb">
                            <img src="resources/assets/images/third-trainer.jpg" alt="">
                        </div>
                        <div class="down-content">
                            <span>Software Engineer</span>
                            <h4>Hyo-in Jung</h4>
                            <p>• Control in Database Management System<br>• Full-Stack Engineer<br>• Responsible for configuring Training Routine Organizing System</p>
                            <ul class="social-icons">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-behance"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Testimonials Ends ***** -->
    
    <!-- ***** Contact Us Area Starts ***** -->
    <section class="section" id="contact-us">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-xs-12">
                    <div id="map">
                      <iframe src="https://maps.google.com/maps?q=508,%20Eonju-ro,%20Gangnam-gu,%20multicampus&t=&z=13&ie=UTF8&iwloc=&output=embed" width="100%" height="600px" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-xs-12">
                    
                    <div class="contact-form">
                      
                    </div>
                    
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Contact Us Area Ends ***** -->
    
    <!-- ***** Footer Start ***** -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; 2021 SmartPT Studio
                    
                    - made by <a rel="nofollow" href="https://github.com/Multicampus-AI-service-development" class="tm-text-link" target="_parent">Multicampus-AI-service-development SmartPT TEAM</a></p>
                    
                    <!-- You shall support us a little via PayPal to info@templatemo.com -->
                    
                </div>
            </div>
        </div>
    </footer>

</body>

</html>
