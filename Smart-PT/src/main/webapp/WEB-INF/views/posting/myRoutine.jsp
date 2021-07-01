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


<h1> 나와라 좋은말로할때 </h1>
	
	<c:forEach var="routineName" items="${routineName}" varStatus="status">
		
		<div class="contents__wrapper">
<div class="card mb-3 col-6 mx-auto">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="${imaPath[status.index]}" class="img-fluid rounded-start" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">${routineName}</h5>
        <p class="card-text"><small class="text-muted">${engName[status.index]}</small></p>
        <p class="card-text">${description[status.index]}</p>
      </div>
    </div>
  </div>
</div>
</div>
	</c:forEach>

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