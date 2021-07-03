<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" 
    %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
   request.setCharacterEncoding("UTF-8"); 
%> 
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
	<script src="${contextPath}/resources/js/jquery-3.6.0.min.js"></script>
	<script src="${contextPath}/resources/js/user/login.js"></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script>

<title>로그인</title>
</head>
<body>

<table border="0">
	
	<tr>
	<td>아이디</td>
	<td><input type="text" id="id" name="id" value ="" placeholder="아이디를 입력해주세요."></td>
	<td rowspan="2"><input type="button" id="loginBtn" name="loginBtn" value="Login" onclick="login('${contextPath}')"></td>
	</tr>
	<tr>
	<td>비밀번호</td>
	<td><input type="password" id="pwd" name="pwd" value ="" placeholder="비밀번호를 입력해주세요."></td>
	</tr>
	<tr><td><a href="#">아이디/비밀번호 찾기</a></td>
		<td><a href="${contextPath}/user/signUp">회원가입</a></td>
	</tr>
</table>

</body>
</html>