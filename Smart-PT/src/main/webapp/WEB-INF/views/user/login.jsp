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
<script type="text/javascript">
	
	function login(){
		
	      	var userInfo = {id:$("#id").val(),
				pwd:$("#pwd").val()
				};
	  		console.log(userInfo);
	  	$.ajax({
	  	    type:"POST",
	        url:"${contextPath}/user/signIn.do",
	        contentType: "application/json",
	        data :JSON.stringify(userInfo),
	      success:function (data,textStatus){
	    	  var obj = JSON.parse(data);
	    	  if(obj.result == true){
	          	alert("정상로그인");
	          	window.open("${contextPath}/user/myPage","_self")
	    	  }
	    	  else{
	    		alert("아이디 혹은 비밀번호를 확인하세요.");
	    	  }
	      },
	      error:function(data,textStatus){
	        alert("에러가 발생했습니다.");
	      },
	      complete:function(data,textStatus){
	      }
	   });  //end ajax	
		
	   }
	
	
	</script>
<title>Insert title here</title>
</head>
<body>

<table border="0">
	
	<tr>
	<td>아이디</td>
	<td><input type="text" id="id" name="id" value ="" placeholder="아이디를 입력해주세요."></td>
	<td rowspan="2"><input type="button" id="loginBtn" name="loginBtn" value="Login" onclick="login()"></td>
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