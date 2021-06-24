<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%
request.setCharacterEncoding("UTF-8"); 
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>스마트 PT</title>
		<script src="<c:url value='resources/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='resources/js/voiceRecord.js'/>"></script>
		<!-- <script src="<c:url value='resources/js/stt.js'/>"></script> -->

		
	</head>
	<body> 
		<button id="record">시작하기</button> 
		<!-- 
		<button id="stop">정지</button>
		 -->
		<div id="sound-clips"></div>
		<audio id="audio" src="https://blog.kakaocdn.net/dn
/b09xz7/btqGtfoS4nB/vIMG0tf04wfBtqvZtkCIhk/tfile.mp3" autoplay controls></audio> // audio test
		
		<div id="stt">
			<h2>CSR : STT (음성을 텍스트로 변환)</h2>
			음성파일(mp3)에서 음성을 추출해서 텍스트로 변환<br><br>
			
			<!--	form data에서 파일을 자동 선택하게 할 수 없음 <- 보안 문제 
			<form id="sttForm"  method="post" enctype="multipart/form-data">	         
	         	음성 파일 :  <input type="file" id="uploadFile" name="uploadFile" value="c:/Users/wo779/Downloads/voiceMsg.mp3"><br><br>
	         	언어 : <select  name="language">
	         				<option value="Kor" selected>한국어</option>
	         				<option value="Eng">영어</option>
	         				<option value="Jpn">일본어</option>
	         				<option value="Chn">중국어</option>
	         	 		</select>
	
	           <input type="submit" value="결과 확인">
			</form><br><br>		
			 -->		
			<h2>STT : 음성 파일을 텍스트로 변환한 결과</h2>	
			<input type="text" id="language" value="Kor"/>
			<div id="resultDiv"></div><br><br>	
			<a href="./">index 페이지로 이동</a>
			<br><br>
		</div>
	</body>
</html>