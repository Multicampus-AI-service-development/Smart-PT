<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>INDEX</title>
<style type="text/css">
	table {
		margin: 0 auto;
		border: 1px black solid;
		border-collapse: collapse;
		width : 900px;
		height: 500px;
		
	}
	
	td {
		border: 1px black solid;
		font-size: 20px;
		text-align: center;
	}
</style>
</head>
<body>
<h1 align="center">테스트 목록</h1>
<table> 
	<thead>
		<tr><td>번호</td><td>테스트내용</td><td>Start View</td></tr>
	</thead>
	<tbody>
		<tr><td>1</td><td>Translation</td><td><a href="http://localhost:9090/spring-ai/trans">http://localhost:9090/spring-ai/trans</a></td></tr>
		<tr><td>2</td><td>VoiceRecord</td><td><a href="http://localhost:9090/spring-ai/voice">http://localhost:9090/spring-ai/voice</a></td></tr>
		<tr><td>3</td><td>STT</td><td><a href="http://localhost:9090/spring-ai/stt">http://localhost:9090/spring-ai/stt</a></td></tr>
		<tr><td>4</td><td>TSS</td><td><a href="http://localhost:9090/spring-ai/tts">http://localhost:9090/spring-ai/tts</a></td></tr>
		<tr><td>5</td><td>OCR</td><td><a href="http://localhost:9090/spring-ai/ocr">http://localhost:9090/spring-ai/ocr</a></td></tr>
		<tr><td>6</td><td>Chatbot1</td><td>사용하지 않음</td></tr>
		<tr><td>7</td><td>Chatbot2</td><td><a href="http://localhost:9090/spring-ai/chat2">http://localhost:9090/spring-ai/chat2</a></td></tr>
		<tr><td>8</td><td>HOME</td><td><a href="http://localhost:9090/spring-ai/home">http://localhost:9090/spring-ai/home</a></td></tr>
		<tr><td>9</td><td>Members All</td><td><a href="http://localhost:9090/spring-ai/member/listMembers.do">http://localhost:9090/spring-ai/member/listMembers.do</a></td></tr>
		<tr><td>10</td><td></td><td></td></tr>
		<tr><td>11</td><td></td><td></td></tr>
	</tbody>
	
</table>
</body>
</html>