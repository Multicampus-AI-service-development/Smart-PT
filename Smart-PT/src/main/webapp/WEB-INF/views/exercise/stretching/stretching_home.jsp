<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<html>
<head>
	<title>Stretching Home</title>
	<link href="<c:url value='/resources/css/bootstrap.min.css'/>" rel="stylesheet">
	
	<script src="<c:url value='/resources/js/jquery-3.6.0.min.js'/>"></script>
	<script type="module" src="<c:url value='/resources/js/leader.js'/>"></script>
</head>
<body>
<h1>
	스트레칭 - Stretching
</h1>

<audio id="aud" src="#" preload="auto" autoplay="autoplay" hidden="hidden" controls></audio>
<input type="hidden" id="voice" value="nara">
<input type="hidden" id="language" value="Kor">

<table>
	<tr>
		<td>
			<form action="./stretching/neck" method="get">
				<input type="submit" id="neck" value="목 스트레칭" class="btn btn-info">
			</form>
		</td>
		<td>
			<form action="./stretching/waist" method="get">
				<input type="submit" id="waist" value="허리 스트레칭" class="btn btn-info">
			</form>
		</td>
		<td>
			<form action="./stretching/pelvis" method="get">
				<input type="submit" id="pelvis" value="골반 스트레칭" class="btn btn-info">
			</form>
		</td>
	</tr>
</table>

</body>
</html>
