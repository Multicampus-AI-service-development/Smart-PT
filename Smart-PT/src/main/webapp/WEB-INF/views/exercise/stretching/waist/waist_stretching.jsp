<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<meta charset="utf-8">

<html>
<head>
	<title>Waist Stretching</title>
	<link href="<c:url value='/resources/css/bootstrap.min.css'/>" rel="stylesheet">
	
	<script src="<c:url value='/resources/js/jquery-3.6.0.min.js'/>"></script>
	<script type="module" src="<c:url value='/resources/js/leader.js' />"></script>
</head>
<body>
<h1>
	허리 스트레칭 - Waist Stretching
</h1>
<input type="hidden" id="voice" value="nara">
<input type="hidden" id="language" value="Kor">

<div id="step_div">
	Phase : <button type="button" id="stepIdx" value="0" hidden></button><span id="step_indicator"></span>
	<br><button type="button" id="next" class="btn btn-success" hidden>다음</button>
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
						 class="btn btn-info btn-lg"
						style="white-space: normal;">
			</td>
			<td>
				<input type="button" id="isometric-rows" value="아이소메트릭 로우 Isometric-rows"
						krExTitle="아이소메트릭 로우"
						enExTitle="Isometric-rows"
						 class="btn btn-info btn-lg"
						style="white-space: normal">
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
