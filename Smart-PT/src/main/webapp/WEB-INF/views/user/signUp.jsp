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
	<script src="${contextPath}/resources/js/user/signUp.js"></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<!--<script src="../resources/js/duplicationCheck.js"></script> -->
	
	<title>회원가입</title>
	
</head>
<body>
	<h1>회원가입</h1>
	<form action="${contextPath}/user/add.do" method="POST">
		<table align="left" border="1">
			<tr>
		       <td width="200"><p align="left">이름</p></td>
		       <td width="400" colspan="2"><input type="text" id="name" name="name" value=""></td>
		   	</tr>
		   	<tr>
		   	   <td width="200"><p align="left">아이디</p></td>
		   	   <td width="400"><input type="text" id="id" name="id" value=""></td>
		   	   <td><input type ="button" id="checkId" onclick="dupId('${contextPath}')" value="중복확인">
		   	   		<input type = "hidden" id="chid" value="false">
		   	   </td>
		   	</tr>
		   	<tr>
		   	   <td width="200"><p align="left">비밀번호</p></td>
		   	   <td width="400" colspan="2"><input type="password" id="pwd" name="pwd" value=""></td>
		   	 </tr>
		   	 <tr>
		   	   <td width="200"><p align="left">비밀번호확인</p></td>
		   	   <td width="400" colspan="2"><input type="password" id="checkpw" ] value="" onkeyup="checkPw()"></td>
		   	 </tr>
		   	 <tr>
		   	 	<td colspan="3"><p id="chmsg"></p><input type="hidden" id="chpw"  value="false"></td>
		   	 </tr>
		   	 <tr>
		   	    <td width="200"><p align="left">닉네임</p></td>
		   	    <td width="400" colspan="2"><input type="text" id="nickname" name="nickname" value=""></td>
		   	 </tr>
		   	 <tr>
		   	    <td width="200"><p align="left">이메일</p></td>
		   	    <td width="400" colspan="2"><input type="text" id="email" name="email" value=""></td>
		   	 </tr>
		   	 <tr>
		   	    <td width="200"><p align="left">나이</p></td>
		   	    <td width="400" colspan="2"><input type="number" id="age" name="age" value=""></td>
		   	 </tr>
		   	 <tr>
		   	    <td width="200"><p align="left">전화번호</p></td>
		   	    <td width="400" colspan="2"><input type="text" id="tel" name="tel" value=""></td>
		   	 </tr>
		   	 <tr>
		   	    <td width="200"><p align="left">키</p></td>
		   	    <td width="400" colspan="2"><input type="text" id="cm" name="cm" value=""></td>
		   	 </tr>
		   	 <tr>
		   	    <td width="200"><p align="left">몸무게</p></td>
		   	    <td width="400" colspan="2"><input type="text" id="kg" name="kg" value=""></td>
		   	 </tr>
		   	 <tr>
		   	    <td width="200"><p align="left">주소</p></td>
		   	    <td width="400" colspan="2"><input type="text" id="addr" name="addr" value=""></td>
		   	 </tr>
		   	 
		</table>
		<input type ="button" id="adduser"  onclick="addUser('${contextPath}')" value="가입">
	</form>
</body>
</html>