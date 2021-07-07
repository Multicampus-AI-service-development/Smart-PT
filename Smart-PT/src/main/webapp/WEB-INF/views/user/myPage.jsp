<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.*"
    import = "mc.finalproject.SmartPT.user.vo.*"%>  

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />    
<html>
<head>

	<!-- meta -->
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">

	<title>마이페이지</title>
	


	<script src="${contextPath}/resources/js/jquery-3.6.0.min.js"></script>
	
    <!-- jQuery -->
    <script src="${contextPath}/resources/assets/js/jquery-2.1.0.min.js"></script>

    <!-- Plugins -->
    <script src="${contextPath}/resources/assets/js/scrollreveal.min.js"></script>
    <script src="${contextPath}/resources/assets/js/waypoints.min.js"></script>
    <script src="${contextPath}/resources/assets/js/jquery.counterup.min.js"></script>
    <script src="${contextPath}/resources/assets/js/imgfix.min.js"></script> 
    <script src="${contextPath}/resources/assets/js/mixitup.js"></script> 
    <script src="${contextPath}/resources/assets/js/accordions.js"></script>
    
    <!-- Global Init -->
    <script src="${contextPath}/resources/assets/js/custom.js"></script>

    <!-- Bootstrap -->
	<script src="${contextPath}/resources/assets/js/popper.js"></script>
    <script src="${contextPath}/resources/assets/js/bootstrap.min.js"></script>

	<!-- css -->
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/assets/css/font-awesome.css">

    <link rel="stylesheet" href="${contextPath}/resources/assets/css/templatemo-training-studio.css">
	
	<script src="${contextPath}/resources/js/user/myPage.js"></script>
	<style>
	.main-button > input {
	@extend %width_auto;
	@extend %height_auto;
	width:30%}
	</style>
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
                        <a href="/SmartPT" class="logo">Smart PT<em> Studio</em></a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        
                        <ul class="nav">
                            
                            <li class="main-button"><a href="${contextPath}/user/logout">Logout</a></li>
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
            <source src="${contextPath}/resources/assets/images/gym-video.mp4" type="video/mp4" />
        </video>

        <div class="video-overlay header-text">
            
            <div class="caption">
                
                <h2><em>Smart PT</em></h2>
                <div class="main-button">
                    <input type="button" id="goUser" onclick="update('${contextPath}')" value="회원정보 수정">
                
                <input type="button" id="goRoutine"  value="마이루틴 수정"> 
				</div>
            </div>
            
	
            
            
            
        </div>
    </div>
    <!-- ***** Main Banner Area End ***** -->





</body>
</html>
