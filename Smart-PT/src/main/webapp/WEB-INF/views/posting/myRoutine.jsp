<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>마이 루틴 페이지</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<script src="https://kit.fontawesome.com/c72c0feb05.js" crossorigin="anonymous"></script>
	<script src="${contextPath}/resources/js/main.js" defer></script>
	<link href="${contextPath}/resources/css/style.css" rel="stylesheet"/>
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
                            <li class="scroll-to-section"><a href="${contextPath}" class="active">Home</a></li>
                            <li class="nav-item dropdown"><a href="${contextPath}/selectRoutine_neck.do">Routine</a></li>
                            <li class="scroll-to-section"><a href="#our-classes">Personal Training(Classes)</a></li>
                            <li class="scroll-to-section"><a href="${contextPath}/myRoutine.do">MyRoutine</a></li>
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
                        <h2>My <em>Routine</em></h2>
                        <img src="resources/assets/images/line-dec.png" alt="">
                        <p>Nunc urna sem, laoreet ut metus id, aliquet consequat magna. Sed viverra ipsum dolor, ultricies fermentum massa consequat eu.</p>
                    </div>
                    
                    <!-- categories -->
				<div class="contents__wrapper">
				<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
				  
				  <!--  OnClick="window.location.href='myRoutine.do';"-->
				  <input type="radio" value="all"
				  class="btn-check" name="radio" id="btnradio0" autocomplete="off" >
				  <label class="btn btn-outline-secondary" for="btnradio0" style="width:70px">ALL</label>
				
				  <input type="radio" value="neck"
				  class="btn-check" name="radio" id="btnradio1" autocomplete="off" >
				  <label class="btn btn-outline-secondary" for="btnradio1">NECK</label>
				
				  <input type="radio" value="waist"
				  class="btn-check" name="radio" id="btnradio2" autocomplete="off" >
				  <label class="btn btn-outline-secondary" for="btnradio2">WAIST</label>
				
				  <input type="radio" value="pelvis"
				  class="btn-check" name="radio" id="btnradio3" autocomplete="off" >
				  <label class="btn btn-outline-secondary" for="btnradio3">PELVIS</label>
				  
				  <input type="radio" value="core"
				  class="btn-check" name="radio" id="btnradio4" autocomplete="off" >
				  <label class="btn btn-outline-secondary" for="btnradio4">CORE</label>
				
				</div>
				</div>
				<div style="height:30px;"></div>
                </div>
            </div>
            
           
            <div class="row">
             <c:forEach var="routineName" items="${routineName}" varStatus="status">
                <div class="col-lg-4" style="padding-top : 30px;">
                    <div class="trainer-item">
                    <div style="margin-top : -25px; margin-right : -28px; text-align:right">
                    	<button type="button" class="btn-close"></button>
                    </div>
                        <div class="image-thumb">
                            <img src="${imaPath[status.index]}" alt="">
                        </div>
                        <div class="down-content">
                            <span>${engName[status.index]}</span>
                            <h4>${routineName}</h4>
                            <p>Bitters cliche tattooed 8-bit distillery mustache. Keytar succulents gluten-free vegan church-key pour-over seitan flannel.</p>
                            <ul class="social-icons">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-behance"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                  </c:forEach>
              </div>
              
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
    
<div id="result"></div>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
  jQuery( document ).ready( function( $ ) {
	  $('.btn-check').on('click', function(){
		  
		  
		  var btn = $("input[name='radio']:checked").val();
	       
		  var allData = { 
				  "btn" : btn
		  };
		  
		  if(btn == "neck"){
			  location.replace("${contextPath}/myNeck.do");
			  $("input[id='btnradio1']").prop("checked", true);
		  } else if(btn == "waist") {
			  location.replace("${contextPath}/myWaist.do"); 
		  } else if(btn == "pelvis") {
			  location.replace("${contextPath}/myPelvis.do"); 
		  } else if(btn == "core") {
			  location.replace("${contextPath}/myCore.do"); 
		  } else {
			  location.replace("${contextPath}/myRoutine.do");
		  }
		  /*
	        $.ajax({
	            url: "myWaist.do",
	            type: "GET",
	            data: allData,
	            success: function(data){
	            	var dbData = data;
	                $('#result').text(dbData.btn);
	            },
	            error: function(){
	                alert("simpleWithObject err");
	            }    
	        });
		  */
	    });
  });
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</body>
</html>