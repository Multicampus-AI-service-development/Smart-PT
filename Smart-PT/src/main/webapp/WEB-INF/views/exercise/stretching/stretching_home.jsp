<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<html>
<head>

	<title>Stretching Home</title>
	
	<script src="<c:url value='/resources/js/jquery-3.6.0.min.js'/>"></script>
	<script type="module" src="<c:url value='/resources/js/leader.js'/>"></script>
	
		<!-- meta -->
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
	
    <!-- jQuery -->
    <script src="\SmartPT/resources/assets/js/jquery-2.1.0.min.js"></script>

    <!-- Plugins -->
    <script src="\SmartPT/resources/assets/js/scrollreveal.min.js"></script>
    <script src="\SmartPT/resources/assets/js/waypoints.min.js"></script>
    <script src="\SmartPT/resources/assets/js/jquery.counterup.min.js"></script>
    <script src="\SmartPT/resources/assets/js/imgfix.min.js"></script> 
    <script src="\SmartPT/resources/assets/js/mixitup.js"></script> 
    <script src="\SmartPT/resources/assets/js/accordions.js"></script>
    
    <!-- Global Init -->
    <script src="\SmartPT/resources/assets/js/custom.js"></script>

    <!-- Bootstrap -->
	<script src="\SmartPT/resources/assets/js/popper.js"></script>
    <script src="\SmartPT/resources/assets/js/bootstrap.min.js"></script>

	<!-- css -->
    <link rel="stylesheet" type="text/css" href="\SmartPT/resources/assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="\SmartPT/resources/assets/css/font-awesome.css">

    <link rel="stylesheet" href="\SmartPT/resources/assets/css/templatemo-training-studio.css">
	
	
	
</head>
<body>



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
                            <li class="scroll-to-section"><a href="#features">Neck</a></li>			
                            <li class="scroll-to-section"><a href="#our-classes">Waist</a></li>		
                            <li class="scroll-to-section"><a href="#our-classes">Pelvis</a></li>			
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
    <section class="section" id="stretching-part">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-heading dark-bg">
                        <h2>Select <em>Stretching Part</em></h2>
                        <img src="\SmartPT/resources/assets/images/line-dec.png" alt="">
                        <div id="select-paragraph">
                        <p><br>Select a part to stretch you want to among <br><span style="color:#ed563b">Neck</span>, 
                        <span style="color:#ed563b">Waist</span> and <span style="color:#ed563b">Pelvis</span>.</p>
                        <br><br>
                        <p><span style="color:#17a2b8">목</span>, <span style="color:#17a2b8">허리</span>, 
                        <span style="color:#17a2b8">골반</span> 중 스트레칭하고 싶은 부위를 말씀해주세요.</p>
                    	</div>>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="filters">
                        <table id="select-part">
							<tr>
								<td>
									<form action="./stretching/neck" method="get">
										<input type="submit" id="neck" value="Neck" class="btn btn-info">
									</form>
								</td>
								<td>
									<form action="./stretching/waist" method="get">
										<input type="submit" id="waist" value="Waist" class="btn btn-info">
									</form>
								</td>
								<td>
									<form action="./stretching/pelvis" method="get">
										<input type="submit" id="pelvis" value="Pelvis" class="btn btn-info">
									</form>
								</td>
							</tr>
						</table>

                    </div>
                </div>
                <div class="col-lg-10 offset-lg-1">
                    
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Main Banner Area End ***** -->


<audio id="aud" src="#" preload="auto" autoplay="autoplay" hidden="hidden" controls></audio>
<input type="hidden" id="voice" value="nara">
<input type="hidden" id="language" value="Kor">

</body>
</html>
