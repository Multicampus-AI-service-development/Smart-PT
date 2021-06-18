<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<meta charset="utf-8">

<html>
<head>
	<title>Home</title>
	
	<script src="<c:url value='/resources/js/jquery-3.6.0.min.js'/>"></script>
	<script src="<c:url value='/resources/js/exercise/stretching/waist/waist_stretching.js'/>"></script>
</head>
<body>
<h1>
	ㅎㅇ ㅋ 여기는 허리 스트레칭 home
</h1>

Phase : <input type="button" id="step" value="1">
<div>
<span id="activity-area"></span>
</div>
<span id="step_tts">
	<audio preload="auto" autoplay="autoplay" controls></audio>
</span>
<br>
<input type="button" id="next" value="다음">

<br><br><br>
<div>
	<input type="button" id="child-pose" value="차일드 포즈 Child's Pose">
</div><br>
<div>
	<input type="button" id="isometric-rows" value="아이소메트릭 로우 Isometric-rows">
</div><br>
<div>
	<input type="button" id="blank" value="  ">
</div>

</body>
</html>
