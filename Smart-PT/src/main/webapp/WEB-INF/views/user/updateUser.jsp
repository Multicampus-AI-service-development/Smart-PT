<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
    session="true"%>
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
<title>Insert title here</title>
<script src="../resources/js/jquery-3.6.0.min.js"></script>
<script src="../resources/js/user/updateUser.js"></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script>


</head>
<body>
	<h1>회원정보 수정</h1>
	<form action="${contextPath}/user/add.do" method="POST">
		<table align="left" border="1">
			<tr>
		       <td width="200"><p align="left">이름</p></td>
		       <td width="400" colspan="2"><input type="text" id="name" name="name" value="${vo.name}"></td>
		   	</tr>
		   	<tr>
		   	   <td width="200"><p align="left">아이디</p></td>
		   	   <td width="400"><input type="text" id="id" name="id" value="${vo.id}" readonly="readonly"></td>
		   	   <td>
		   	   		<input type = "hidden" id="chid" value="false">
		   	   </td>
		   	</tr>
		   	<tr>
		   	   <td width="200"><p align="left">현재 비밀번호</p></td>
		   	   <td width="400" colspan="2"><input type="password" id="pwd" name="pwd" placeholder="수정할 때 입력" value="">
		   	   								<input type="hidden" id="idchpw"  value="false">
		   	   </td>
		   	 </tr>
		   	<tr>
		   	   <td width="200"><p align="left">새 비밀번호</p></td>
		   	   <td width="400" colspan="2"><input type="password" id="newpwd" name="newpwd" placeholder="비밀번호 변경 시 입력" value=""></td>
		   	 </tr>
		   	 <tr>
		   	   <td width="200"><p align="left">새 비밀번호확인</p></td>
		   	   <td width="400" colspan="2"><input type="password" id="checkpw" placeholder="비밀번호 변경 시 입력" value="" onkeyup="checkPw()"></td>
		   	 </tr>
		   	 <tr>
		   	 	<td colspan="3"><p id="chmsg"></p><input type="hidden" id="chpw"  value="false"></td>
		   	 </tr>
		   	 <tr>
		   	    <td width="200"><p align="left">닉네임</p></td>
		   	    <td width="400" colspan="2"><input type="text" id="nickname" name="nickname" value="${vo.nickname}"></td>
		   	 </tr>
		   	 <tr>
		   	    <td width="200"><p align="left">이메일</p></td>
		   	    <td width="400" colspan="2"><input type="text" id="email" name="email" value="${vo.email}"></td>
		   	 </tr>
		   	 <tr>
		   	    <td width="200"><p align="left">나이</p></td>
		   	    <td width="400" colspan="2"><input type="number" id="age" name="age" value="${vo.age}"></td>
		   	 </tr>
		   	 <tr>
		   	    <td width="200"><p align="left">전화번호</p></td>
		   	    <td width="400" colspan="2"><input type="text" id="tel" name="tel" value="${vo.tel}"></td>
		   	 </tr>
		   	 <tr>
		   	    <td width="200"><p align="left">키</p></td>
		   	    <td width="400" colspan="2"><input type="text" id="cm" name="cm" value="${vo.cm}"></td>
		   	 </tr>
		   	 <tr>
		   	    <td width="200"><p align="left">몸무게</p></td>
		   	    <td width="400" colspan="2"><input type="text" id="kg" name="kg" value="${vo.kg}"></td>
		   	 </tr>
		   	 <tr>
		   	    <td width="200"><p align="left">주소</p></td>
		   	    <td width="400" colspan="2"><input type="text" id="addr" name="addr" value="${vo.addr}"></td>
		   	 </tr>
		   	 
		</table>
		<input type ="button" id="cancel"  onclick="updatecancel('${contextPath}')" value="취소"><input type ="button" id="adduser"  onclick="idpwcheck('${contextPath}')" value="수정">
	</form>
</body>
</html>