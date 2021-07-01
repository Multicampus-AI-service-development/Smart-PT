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
</head>
<body>
	<!-- Nav container -->
    <nav class="navbar">
      <!-- Logo with text -->
      <div class="navbar__logo">
        <i class="fas fa-dumbbell"></i>
        <a href="">SmartPT</a>
      </div>
      <!-- Menu -->
      <ul class="navbar__menu">
        <li><a href="">Home</a></li>
        <li><a href="">Gallery</a></li>
        <li><a href="http://localhost:8080/SmartPT/selectRoutine_neck.do">Routines</a></li>
        <li><a href="http://localhost:8080/SmartPT/myRoutine.do">MyRoutine</a></li>
        <li><a href="">FAQ</a></li>
      </ul>
       <!-- Icons -->
      <ul class="navbar__icons">
        <li><i class="fab fa-twitter"></i></li>
        <li><i class="fab fa-facebook-f"></i></li>
      </ul>
      <!-- Toggle button -->
      <a href="#" class="navbar__toggleBtn">
        <i class="fas fa-bars"></i>
      </a>
    </nav>
    
<div style="height:30px;"></div>
    
<!-- categories -->
<form method="get" action="updateRoutine.do">
<div class="contents__wrapper">
<div class="d-grid gap-2 col-6 mx-auto">

<div class="btn-group" role="group" aria-label="Basic radio toggle button group">

  <input type="radio" OnClick="window.location.href='selectRoutine_neck.do';" value="neck"
  class="btn-check" name="radio" id="btnradio1" autocomplete="off">
  <label class="btn btn-outline-secondary" for="btnradio1">목</label>

  <input type="radio" OnClick="window.location.href='selectRoutine_waist.do';" value="waist"
  class="btn-check" name="radio" id="btnradio2" autocomplete="off">
  <label class="btn btn-outline-secondary" for="btnradio2">허리</label>

  <input type="radio" OnClick="window.location.href='selectRoutine_pelvis.do';" value="pelvis"
  class="btn-check" name="radio" id="btnradio3" autocomplete="off">
  <label class="btn btn-outline-secondary" for="btnradio3">골반</label>
  
  <input type="radio" OnClick="window.location.href='selectRoutine_core.do';" value="core"
  class="btn-check" name="radio" id="btnradio4" autocomplete="off" checked>
  <label class="btn btn-outline-secondary" for="btnradio4">코어</label>
  
</div>

</div>
</div>

<div style="height:30px;"></div>

<!-- contents -->
<div class="contents__wrapper">
<div class="card mb-3 col-6 mx-auto">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="https://me2.kr/z7bl4" class="img-fluid rounded-start" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">논산 훈련소</h5>
        <p class="card-text"><small class="text-muted">Nonsan</small></p>
        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
               	<div class="form-check form-switch">
  			<input class="form-check-input" type="checkbox" name="item" value="논산 훈련소" id="flexSwitchCheckDefault">
  		</div> 
      </div>
    </div>
  </div>
</div>
</div>

<div class="contents__wrapper">
<div class="card mb-3 col-6 mx-auto">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="https://me2.kr/cu1an" class="img-fluid rounded-start" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">양말 스케이팅</h5>
        <p class="card-text"><small class="text-muted">Skating of socks</small></p>
        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        <div class="form-check form-switch">
  			<input class="form-check-input" type="checkbox" name="item" value="양말 스케이팅" id="flexSwitchCheckDefault">
  		</div>
      </div>
    </div>
  </div>
</div>
</div>

<div class="contents__wrapper">
<div class="card mb-3 col-6 mx-auto" >
  <div class="row g-0">
    <div class="col-md-4">
      <img src="https://me2.kr/fab6v" class="img-fluid rounded-start" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">버드독 + 흉추 가동술</h5>
        <p class="card-text"><small class="text-muted">Enhanced Birddog</small></p>
        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        <div class="form-check form-switch">
  			<input class="form-check-input" type="checkbox" name="item" value="버드독 + 흉추 가동술" id="flexSwitchCheckDefault">
  		</div>
      </div>
    </div>
  </div>
</div>
</div>

<div class="contents__wrapper">
<div class="card mb-3 col-6 mx-auto" >
  <div class="row g-0">
    <div class="col-md-4">
      <img src="https://me2.kr/w04lc" class="img-fluid rounded-start" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">고양이 자세</h5>
        <p class="card-text"><small class="text-muted">Cat and Cow</small></p>
        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        <div class="form-check form-switch">
  			<input class="form-check-input" type="checkbox" name="item" value="고양이 자세" id="flexSwitchCheckDefault">
  		</div>
      </div>
    </div>
  </div>
</div>
</div>

<div class="contents__wrapper">
<div class="card mb-3 col-6 mx-auto" >
  <div class="row g-0">
    <div class="col-md-4">
      <img src="https://me2.kr/bskpm" class="img-fluid rounded-start" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">데드 버그</h5>
        <p class="card-text"><small class="text-muted">Dead Bug</small></p>
        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        <div class="form-check form-switch">
  			<input class="form-check-input" type="checkbox" name="item" value="데드 버그" id="flexSwitchCheckDefault">
  		</div>
      </div>
    </div>
  </div>
</div>
</div>

<div class="contents__wrapper">
<div class="card mb-3 col-6 mx-auto" >
  <div class="row g-0">
    <div class="col-md-4">
      <img src="https://me2.kr/niv4f" class="img-fluid rounded-start" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">러시안 트위스트</h5>
        <p class="card-text"><small class="text-muted">Russian Twist</small></p>
        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        <div class="form-check form-switch">
  			<input class="form-check-input" type="checkbox" name="item" value="러시안 트위스트" id="flexSwitchCheckDefault">
  		</div>
      </div>
    </div>
  </div>
</div>
</div>
<div class="contents__wrapper" >
<div class="d-grid gap-2 col-6 mx-auto">
  <button class="btn btn-primary" type="submit" value="submit">저장</button>
</div>
</div>
</form>


<!--  footer -->
<div class="text-center">
	<hr />
	<p> @ 2021.03- 2021.07 MultiCampus, SmartPT, Project </p>
</div>


<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
  jQuery( document ).ready( function( $ ) {
    // code ...
  } );
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</body>
</html>