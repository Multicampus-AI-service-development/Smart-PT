<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<html>
<head>
<title>Waist Stretching</title>
<link href="<c:url value='/resources/css/bootstrap.min.css'/>"
	rel="stylesheet">

<script src="<c:url value='/resources/js/jquery-3.6.0.min.js'/>"></script>
<script type="module" src="<c:url value='/resources/js/leader.js' />"></script>

<!-- meta -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap"
	rel="stylesheet">

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
<link rel="stylesheet" type="text/css"
	href="\SmartPT/resources/assets/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css"
	href="\SmartPT/resources/assets/css/font-awesome.css">

<link rel="stylesheet"
	href="\SmartPT/resources/assets/css/templatemo-training-studio.css">

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
							<li class="scroll-to-section"><a href="#top" class="active">Smart
									PT</a></li>
							<li class="scroll-to-section"><a href="#features">Child`s
									Pose</a></li>
							<li class="scroll-to-section"><a href="#our-classes">Isometric
									Row</a></li>
							<li class="scroll-to-section"><a href="#our-classes">Sitting
									Flexion</a></li>
							<li class="scroll-to-section"><a href="/SmartPT">EXIT</a></li>
							<li class="main-button"><a href="#">Sign Up</a></li>
						</ul>
						<a class='menu-trigger'> <span>Menu</span>
						</a>
						<!-- ***** Menu End ***** -->
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- ***** Header Area End ***** -->

	<!-- ***** Testimonials Starts ***** -->
	<section class="section" id="trainers">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 offset-lg-3">
					<div class="section-heading">
						<h2>
							Stretching <em>Waist Posture</em>
						</h2>
						<img src="\SmartPT/resources/assets/images/line-dec.png" alt="">
						<p id="select_exercise">
							<b>차일드 포즈, 아이소메트릭 로우</b> 중 진행할 운동을 골라주세요.
						</p>

						<div id="result-pose-name">
							<div id="step_div">
								<button type="button" id="stepIdx" value="0" hidden></button>
								<span id="krExTitle"></span><span id="enExTitle"></span> &emsp;&emsp;&emsp;&emsp;
								<button type="button" id="next" class="btn btn-success" hidden>다음</button>
							</div>
							
							<br>
							<h2 id="activity-area-h2"></h2>
							<div>
								<span id="activity-area"></span>
							</div>
						</div>

					</div>
				</div>
			</div>
			<div class="row">

				<div class="col-lg-4">
					<div class="trainer-item">
						<div class="image-thumb">
							<img
								src="https://github.com/Multicampus-AI-service-development/Project-Data/blob/1cd8b0da3ad8186b1d28a780546a79382fd144c0/waist%20stretching%20images/Child's%20Pose.png?raw=true"
								alt="">
						</div>
						<div class="down-content">
							<span>Strength Trainer</span> <input type="button"
								id="child-pose" value="Child's Pose" krExTitle="차일드 포즈"
								enExTitle="Child's pose" class="btn btn-info btn-lg"
								style="white-space: normal;">

							<p>
								<br>Bitters cliche tattooed 8-bit distillery mustache.
								Keytar succulents gluten-free vegan church-key pour-over seitan
								flannel.
							</p>
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
							<img
								src="https://vscomfortimages.s3.ap-south-1.amazonaws.com/wrongform/untitled-870.jpg"
								alt="">
						</div>
						<div class="down-content">
							<span>Muscle Trainer</span> <input type="button"
								id="isometric-rows" value="Isometric Row" krExTitle="아이소메트릭 로우"
								enExTitle="Isometric-rows" class="btn btn-info btn-lg"
								style="white-space: normal">

							<p>
								<br>Bitters cliche tattooed 8-bit distillery mustache.
								Keytar succulents gluten-free vegan church-key pour-over seitan
								flannel.
							</p>
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
							<img
								src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqALidq4EUBsOCnuQnxhe28hgJAnMNbpuLggx8vOp1esIViN7nqgVXjO7IkJG2PtIge6s&usqp=CAU"
								alt="">
						</div>
						<div class="down-content">
							<span>Power Trainer</span>
							<h4>Sitting Flexion</h4>


							<p>Bitters cliche tattooed 8-bit distillery mustache. Keytar
								succulents gluten-free vegan church-key pour-over seitan
								flannel.</p>
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

	<input type="hidden" id="voice" value="nara">
	<input type="hidden" id="language" value="Kor">




	<span id="step_tts"> <audio id="aud" preload="auto"
			autoplay="autoplay" hidden="hidden"></audio>
	</span>
	<div id="sound-clips" hidden="hidden"></div>
	<div id="resultDiv" hidden="hidden"></div>
	<input type="text" id="language" value="Kor" hidden="hidden" />

	<br>

</body>
</html>
