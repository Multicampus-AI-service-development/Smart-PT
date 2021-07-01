<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<html>
<head>

	<!-- meta -->
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">

	<title>Smart PT STUDIO</title>
	
</head>

	<script src="<c:url value='/resources/js/jquery-3.6.0.min.js'/>"></script>
	<script src="<c:url value='/resources/js/home.js'/>"></script>

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
                            <li class="scroll-to-section"><a href="#top" class="active">Smart PT</a></li>
                            <li class="scroll-to-section"><a href="#features">Stretching</a></li>			<!-- 팝업창 띄워서 흐름도(목/허리/골반 - 운동목록) 보여주기 -->
                            <li class="scroll-to-section"><a href="#our-classes">Core Strength</a></li>			<!-- 팝업창 띄워서 흐름도(운동목록) 보여주기 -->
                            <li class="scroll-to-section"><a href="/SmartPT">EXIT</a></li> 
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
                    <input type="button" id="start" value="START">
                </div>
            </div>
            
            
            <div class="select-strecthing-strength">
			<table>
				<tr>
					<td>
						<form action="./exercise/stretching" method="get">
							<input type="submit" id="stretching" value="스트레칭" style="width: 100px; height: 75px;" hidden="hidden">
						</form>
					</td>
					<td>
						<form action="./exercise/strenghtening" method="get">
							<input type="submit" id="strenghtening" value="근력 강화" style="width: 100px; height: 75px;" hidden="hidden">
						</form>
					</td>
				</tr>
			</table>
			</div>
            
            
            
        </div>
    </div>
    <!-- ***** Main Banner Area End ***** -->


<audio id="aud" src="#" preload="auto" hidden="hidden" controls></audio>
<input type="hidden" id="voice" value="nara">
<input type="hidden" id="language" value="Kor">


</body>
</html>
