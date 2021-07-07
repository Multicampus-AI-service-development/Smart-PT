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
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.84.0">
<link href="https://getbootstrap.com/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="manifest" href="https://getbootstrap.com/docs/5.0/assets/img/favicons/manifest.json">


<link href="https://getbootstrap.com/docs/5.0/examples/sign-in/signin.css" rel="stylesheet">
<meta name="theme-color" content="#7952b3">


<title>로그인</title>
</head>

<body class="text-center">
   
<main class="form-signin">
  <form>
    <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

    <div class="form-floating">
      <input type="text" class="form-control" id="id" placeholder="ID">
      <label for="floatingInput">아이디</label>
    </div>
<div></div>
    <div class="form-floating">
      <input type="password" class="form-control" id="pwd" placeholder="Password">
      <label for="floatingPassword">비밀번호</label>
    </div>

    <div class="checkbox mb-3">
      <label>
        <a href="${contextPath}/user/findUser">아이디/비밀번호 찾기</a>&emsp;&emsp;&emsp;&emsp;<a href="${contextPath}/user/signUp">회원가입</a>
      </label>
	
    </div>
<input class="w-100 btn btn-lg btn-primary" type="submit" id="loginBtn" value="로그인" onclick="login('${contextPath}')">
    
    <p class="mt-5 mb-3 text-muted">멀티캠퍼스 Smart-PT팀</p>
  </form>
</main>


    



</body>
</html>