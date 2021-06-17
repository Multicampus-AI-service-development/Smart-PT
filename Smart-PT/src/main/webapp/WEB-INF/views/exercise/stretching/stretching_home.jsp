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
	ㅎㅇ ㅋ 여기는 스트레칭 home
</h1>

<form action="./stretching/neck" method="get"><input type="submit" value="목 스트레칭"></form>
<form action="./stretching/waist" method="get"><input type="submit" value="허리 스트레칭"></form>
<form action="./stretching/pelvis" method="get"><input type="submit" value="골반 스트레칭"></form>

</body>
</html>
