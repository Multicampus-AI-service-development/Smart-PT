<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
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
	<script src="../resources/js/jquery-3.6.0.min.js"></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<!--<script src="../resources/js/duplicationCheck.js"></script> -->
	<script type="text/javascript">
	
	function dupId(){
			var userId = $("#id").val()
	      	var userInfo = {id:userId};
	  		console.log(userInfo.id);
	  	$.ajax({
	  	    type:"GET",
	        url:"${contextPath}/dup/checkId.do",
	        contentType: "application/json",
	        data :{"userId": userId},
	      success:function (data,textStatus){
	    	  var obj = JSON.parse(data);
	    	  if(obj.result == false){
	          	alert("사용 가능한 아이디 입니다.");}
	    	  else{
	    		alert("사용 불가능한 아이디 입니다.");
	    	  }
	      },
	      error:function(data,textStatus){
	        alert(data+"에러가 발생했습니다."+textStatus);
	      },
	      complete:function(data,textStatus){
	      }
	   });  //end ajax	

	   }
	
	</script>
	<script type="text/javascript">
	function checkPw(){
		var pw = $("#pw").val();
		var chpw = $("#checkpw").val();
		if(pw==chpw){
	      document.getElementById("chmsg").innerHTML="확인"
			//$("#chmsg").setAttribute(value,"일치합니다.");
		}else{
	      document.getElementById("chmsg").innerHTML="비밀번호를 확인하세요."
			//$("#chmsg").setAttribute(value,"비밀번호를 확인하세요.");
		}
	}
	</script>
	
<title>회원가입</title>
</head>
<body>
	<h1>회원가입</h1>
	<form action="${contextPath}/user/addUser.do" method="POST">
		<table align="left" border="1">
			<tr>
		       <td width="200"><p align="left">이름</p></td>
		       <td width="400" colspan="2"><input type="text" id="name" name="name" value=""></td>
		   	</tr>
		   	<tr>
		   	   <td width="200"><p align="left">아이디</p></td>
		   	   <td width="400"><input type="text" id="id" name="id" value=""></td>
		   	   <td><input type ="button" id="checkId" name="checkId" onclick="dupId()" value="중복확인"></td>
		   	</tr>
		   	<tr>
		   	   <td width="200"><p align="left">비밀번호</p></td>
		   	   <td width="400" colspan="2"><input type="password" id="pw" name="pw" value=""></td>
		   	 </tr>
		   	 <tr>
		   	   <td width="200"><p align="left">비밀번호확인</p></td>
		   	   <td width="400" colspan="2"><input type="password" id="checkpw" name="checkpw" value="" onkeyup="checkPw()"></td>
		   	 </tr>
		   	 <tr>
		   	 	<td colspan="3"><p id="chmsg"></p></td>
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
	
	</form>
</body>
</html>