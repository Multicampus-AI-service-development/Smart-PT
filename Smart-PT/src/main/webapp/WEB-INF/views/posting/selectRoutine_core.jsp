<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>마이 루틴 선택 페이지</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<script src="https://kit.fontawesome.com/c72c0feb05.js" crossorigin="anonymous"></script>
	<script src="${path}/resources/js/main.js" defer></script>
	<link href="${path}/resources/css/style.css" rel="stylesheet"/>
	<link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
	 
	 
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
</head>
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
                        <a href="index.html" class="logo">Smart PT<em> Studio</em></a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li class="scroll-to-section"><a href="http://localhost:9090/SmartPT" class="active">Home</a></li>
                            <li class="nav-item dropdown"><a href="http://localhost:9090/SmartPT/selectRoutine_neck.do">Routine</a></li>
                            <li class="scroll-to-section"><a href="#our-classes">Personal Training(Classes)</a></li>
                            <li class="scroll-to-section"><a href="http://localhost:9090/SmartPT/myRoutine.do">MyRoutine</a></li>
                            <li class="scroll-to-section"><a href="#contact-us">Contact</a></li> 
                            <li class="main-button"><a href="#">Sign Up</a></li>
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
    
    <div style="height:60px;"></div>
    
    <!-- ***** Testimonials Starts ***** -->
    <section class="section" id="trainers">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-heading">
                        <h2>Core <em>Stretching</em></h2>
                        <img src="resources/assets/images/line-dec.png" alt="">
                        <p>Nunc urna sem, laoreet ut metus id, aliquet consequat magna. Sed viverra ipsum dolor, ultricies fermentum massa consequat eu.</p>
                    </div>
                    
                    <!-- categories -->
				<form method="get" action="updateRoutine.do">
				<div class="contents__wrapper">
				
				<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
				
				  <input type="radio" OnClick="window.location.href='selectRoutine_neck.do';" value="neck"
				  class="btn-check" name="radio" id="btnradio1" autocomplete="off">
				  <label class="btn btn-outline-secondary" for="btnradio1">NECK</label>
				
				  <input type="radio" OnClick="window.location.href='selectRoutine_waist.do';" value="waist"
				  class="btn-check" name="radio" id="btnradio2" autocomplete="off">
				  <label class="btn btn-outline-secondary" for="btnradio2">WAIST</label>
				
				  <input type="radio" OnClick="window.location.href='selectRoutine_pelvis.do';" value="pelvis"
				  class="btn-check" name="radio" id="btnradio3" autocomplete="off">
				  <label class="btn btn-outline-secondary" for="btnradio3">PELVIS</label>
				  
				  <input type="radio" OnClick="window.location.href='selectRoutine_core.do';" value="core"
				  class="btn-check" name="radio" id="btnradio4" autocomplete="off" checked>
				  <label class="btn btn-outline-secondary" for="btnradio4">CORE</label>
				
				</div>
				</div>
				<div style="height:30px;"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <div class="trainer-item">
                        <div class="image-thumb">
                            <img src="resources/assets/images/routine/core_1.jpg" alt="">
                        </div>
                        <div class="down-content">
                            <span>Nonsan</span>
                            <h4>논산 훈련소</h4>
                            <div class="form-check form-switch" style="text-align:right">
					  			<input class="form-check-input" type="checkbox" name="item" 
					  			value="논산 훈련소" id="flexSwitchCheckDefault" style="margin-top : -38px;">
					  		</div>
                            <p style="margin-top : -25px;">Bitters cliche tattooed 8-bit distillery mustache. Keytar succulents gluten-free vegan church-key pour-over seitan flannel.</p>
                            <ul class="social-icons">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-behance"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="trainer-item">
                        <div class="image-thumb">
                            <img src="resources/assets/images/routine/core_2.jpg" alt="">
                        </div>
                        <div class="down-content">
                            <span>Skating of socks</span>
                            <h4>양말 스케이팅</h4>
                            <div class="form-check form-switch" style="text-align:right">
					  			<input class="form-check-input" type="checkbox" name="item" 
					  			value="양말 스케이팅" id="flexSwitchCheckDefault" style="margin-top : -38px;">
					  		</div>
                            <p style="margin-top : -25px;">Bitters cliche tattooed 8-bit distillery mustache. Keytar succulents gluten-free vegan church-key pour-over seitan flannel.</p>
                            <ul class="social-icons">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-behance"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="trainer-item">
                        <div class="image-thumb">
                            <img src="resources/assets/images/routine/core_3.png" alt="">
                        </div>
                        <div class="down-content">
                            <span>Enhanced Birddog</span>
                            <h4>버드독 + 흉추 가동술</h4>
                            <div class="form-check form-switch" style="text-align:right">
					  			<input class="form-check-input" type="checkbox" name="item" 
					  			value="버드독 + 흉추 가동술" id="flexSwitchCheckDefault" style="margin-top : -38px;">
					  		</div>
                            <p style="margin-top : -25px;">Bitters cliche tattooed 8-bit distillery mustache. Keytar succulents gluten-free vegan church-key pour-over seitan flannel.</p>
                            <ul class="social-icons">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-behance"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                
                <div style="height:30px;"></div>
                
                <div class="col-lg-4">
                    <div class="trainer-item">
                        <div class="image-thumb">
                            <img src="resources/assets/images/routine/core_4.jpg" alt="">
                        </div>
                        <div class="down-content">
                            <span>Cat and Cow</span>
                            <h4>고양이 자세</h4>
                            <div class="form-check form-switch" style="text-align:right">
					  			<input class="form-check-input" type="checkbox" name="item" 
					  			value="고양이 자세" id="flexSwitchCheckDefault" style="margin-top : -38px;">
					  		</div>
                            <p style="margin-top : -25px;">Bitters cliche tattooed 8-bit distillery mustache. Keytar succulents gluten-free vegan church-key pour-over seitan flannel.</p>
                            <ul class="social-icons">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-behance"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="trainer-item">
                        <div class="image-thumb">
                            <img src="resources/assets/images/routine/core_5.png" alt="">
                        </div>
                        <div class="down-content">
                            <span>Dead Bug</span>
                            <h4>데드 버그</h4>
                            <div class="form-check form-switch" style="text-align:right">
					  			<input class="form-check-input" type="checkbox" name="item" 
					  			value="데드 버그" id="flexSwitchCheckDefault" style="margin-top : -38px;">
					  		</div>
                            <p style="margin-top : -25px;">Bitters cliche tattooed 8-bit distillery mustache. Keytar succulents gluten-free vegan church-key pour-over seitan flannel.</p>
                            <ul class="social-icons">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-behance"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="trainer-item">
                        <div class="image-thumb">
                            <img src="resources/assets/images/routine/core_6.jpg" alt="">
                        </div>
                        <div class="down-content">
                            <span>Russian Twist</span>
                            <h4>러시안 트위스트</h4>
                            <div class="form-check form-switch" style="text-align:right">
					  			<input class="form-check-input" type="checkbox" name="item" 
					  			value="러시안 트위스트" id="flexSwitchCheckDefault" style="margin-top : -38px;">
					  		</div>
                            <p style="margin-top : -25px;">Bitters cliche tattooed 8-bit distillery mustache. Keytar succulents gluten-free vegan church-key pour-over seitan flannel.</p>
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
    
<div style="height:30px;"></div>
    
<div class="contents__wrapper" >
<div class="d-grid gap-2 col-6 mx-auto">
  <button class="btn btn-primary" type="submit" value="submit">저장</button>
</div>
</div>
</form>


<!-- ***** Footer Start ***** -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; 2020 Training Studio
                    
                    - Designed by <a rel="nofollow" href="https://templatemo.com" class="tm-text-link" target="_parent">TemplateMo</a></p>
                    
                    <!-- You shall support us a little via PayPal to info@templatemo.com -->
                    
                </div>
            </div>
        </div>
    </footer>


<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
  jQuery( document ).ready( function( $ ) {
    // code ...
  } );
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</body>
</html>