<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>	Test MainPage  </h1>

<div><form action="./exercise/stretching" method="get"><input type="submit" value="스트레칭"></form></div>

<P>  The time on the server is ${serverTime}. </P>



</body>
</html>
