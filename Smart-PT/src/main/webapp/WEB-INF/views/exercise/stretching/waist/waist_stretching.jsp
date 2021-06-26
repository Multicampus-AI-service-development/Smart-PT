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
	<script src="<c:url value='/resources/js/voiceRecord.js' />"></script>
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
	<audio id="aud" preload="auto" autoplay="autoplay" hidden="hidden"></audio>
</span>
<div id="sound-clips" hidden="hidden"></div>
<div id="resultDiv" hidden="hidden"></div>
<input type="text" id="language" value="Kor" hidden="hidden"/>

<br>
<!-- <form action="./result" method="get"><input type="submit" value="스트레칭 종료"></form> -->

<br><br>
	<div id="exercise_list">
	<table>
		<tr>
			<td>
				<input type="button" id="child-pose" value="차일드 포즈 Child's Pose"
						krExTitle="차일드 포즈"
						enExTitle="Child's pose"
						style="width: 100px; height: 75px; white-space: normal;">
			</td>
			<td>
				<input type="button" id="isometric-rows" value="아이소메트릭 로우 Isometric-rows"
						krExTitle="아이소메트릭 로우"
						enExTitle="Isometric-rows"
						style="width: 100px; height: 75px; white-space: normal">
			</td>
		</tr>
	</table>
	</div>
	<div id="query-result-area">
		<h6>hi</h6>
	</div>
	<div id="record-stt-area">
		<h6>record-stt-area</h6>
	</div>
</body>
</html>
