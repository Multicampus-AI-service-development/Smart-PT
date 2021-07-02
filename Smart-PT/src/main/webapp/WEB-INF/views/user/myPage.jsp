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
<script src="../resources/js/user/myPage.js"></script>
<title>마이페이지(임시)</title>
	

</head>
<body>
	<table border="0">
	
	<tr>
	<td>회원정보 수정</td>
	<td>마이루틴 수정</td>
	</tr>
	<tr>
	<td><input type="button" id="goUser" onclick="update()" value="회원정보 수정"></td>
	<td><input type="button" id="goRoutine"  value="마이루틴 수정"></td>
	</tr>
	
	
</table>
</body>
</html>