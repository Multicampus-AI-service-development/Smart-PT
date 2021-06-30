<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<html>
<head>
	<title>Home</title>
</head>

<script src="<c:url value='/resources/js/jquery-3.6.0.min.js'/>"></script>
<script src="<c:url value='/resources/js/home.js'/>"></script>
<body>
<h1>
	Hello world!  
</h1>
<audio id="aud" src="src" preload="auto" autoplay="autoplay" hidden="hidden" controls></audio>
<input type="hidden" id="voice" value="nara">
<input type="hidden" id="language" value="Kor">

<div><form action="./API/" method="get"><input type="submit" value="API 테스트"></form></div>

<div>
<table>
	<tr>
		<td>
			<form action="./exercise/stretching" method="get">
				<input type="submit" id="stretching" value="스트레칭" style="width: 100px; height: 75px;">
			</form>
		</td>
		<td>
			<form action="./exercise/strenghtening" method="get">
				<input type="submit" id="strenghtening" value="근력 강화" style="width: 100px; height: 75px;">
			</form>
		</td>
	</tr>
</table>
</div>

</body>
</html>
