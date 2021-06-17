<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Text To Speech</title>
		<script src="<c:url value='resources/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='resources/js/tts.js'/>"></script>
	</head>
	<body> 
		<h2>CLOVA Voice : TTS (텍스트를 음성으로 변환)</h2>
		텍스트를 음성으로 변환<br><br>
		
		<form id="ttsForm"  method="post"> <!--  enctype="multipart/form-data"> -->         
         	<!-- 
         	음성 파일 :  <input type="file" id="uploadFile" name="uploadFile"><br><br>
         	-->
         	이름 : <input type="text" name="username" class="user"><br><br>
         	음성 : <select  name="language">
         				<option value="nara" selected>여성</option>
         				<option value="jinho">남성</option>
         				<option value="nhajun">아동 (남)</option>
         				<option value="ndain">아동(여)</option>
         				</select><br><br>

           <input type="submit" value="결과 확인">
		</form><br><br>		
				
		<h2>TTS : 텍스트를 음성으로 변환한 결과</h2>	
		<div id="resultDiv"></div><br><br>	
		
		<div>
			<audio preload="auto" controls></audio>
		</div>
		
		<br><br>
		<a href="./">index 페이지로 이동</a>
	</body>
</html>