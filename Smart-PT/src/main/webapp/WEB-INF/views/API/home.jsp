<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  API main
</h1>

<P>  The time on the server is ${serverTime}. </P>

서비스 리스트
<form action="./translate" method="get"><input type="submit" value="번역하러 가기"></form>
<form action="./csr" method="get"><input type="submit" value="STT 하러 가기"></form>
<form action="../record" method="get"><input type="submit" value="그 전에 녹음하러 가기"></form>
<form action="./ocr" method="get"><input type="submit" value="OCR 하러 가기"></form>
<form action="./voice" method="get"><input type="submit" value="TTS 하러 가기"></form>
</body>
</html>
