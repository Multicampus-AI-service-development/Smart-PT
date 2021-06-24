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

<div id="step_div">
	Phase : <input type="button" id="step" value="1">
	<span id="next"><input type="button" id="next" value="다음"></span>
</div>

<h2 id="activity-area-h2"></h2>
<div>
	<span id="activity-area"></span>
</div>

<span id="step_tts">
	<audio preload="auto" autoplay="autoplay" hidden="hidden"></audio>
</span>
<br>
<!-- <form action="./result" method="get"><input type="submit" value="스트레칭 종료"></form> -->

<br><br>
	<div id="exercise_list">
	<table>
		<tr>
			<td>
				<input type="button" id="child-pose" value="차일드 포즈 Child's Pose"
						style="width: 100px; height: 75px; white-space: normal;">
			</td>
			<td>
				<input type="button" id="isometric-rows" value="아이소메트릭 로우 Isometric-rows"
						style="width: 100px; height: 75px; white-space: normal">
			</td>
			<td>
				<input type="button" id="blank" value="  " style="width: 100px; height: 75px;">
			</td>
		</tr>
	</table>
	</div>
	<div id="query-result-area">
	<h6>hi</h6>
	</div>
</body>
</html>
