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
<script src="${contextPath}/resources/js/jquery-3.6.0.min.js"></script>
<script src="${contextPath}/resources/js/user/findUser.js"></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.84.0">
<link href="https://getbootstrap.com/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<meta name="theme-color" content="#7952b3">
<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/checkout/">
<link rel="mask-icon" href="https://getbootstrap.com/docs/5.0/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
<link href="https://getbootstrap.com/docs/5.0/examples/checkout/form-validation.css" rel="stylesheet">	
<link rel="apple-touch-icon" href="https://getbootstrap.com/docs/5.0/assets/img/favicons/apple-touch-icon.png" sizes="180x180">

<style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
	.btnbox{
		margin-left:5%;
		margin-right:5%;
	}
	.btn{
		@extend %width_auto;
		margin:0%;
		
		width:45%;
		
	}
	.container {
  		max-width: 600px;
	}
	
	h1{text-align: center;
	}
	
    </style>
<script src="https://getbootstrap.com/docs/5.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>	
<script src="https://getbootstrap.com/docs/5.0/examples/checkout/form-validation.js"></script>
	<title>회원정보 찾기</title><link rel="icon" href="${contextPath}/resources/css/title.jpg">


</head>

<body class="bg-light">
    
<div class="container">
  <main>

    <div class="row g-5">
      
      <div class="my-5 pt-5">
        <h1 class="my-5 pt-5">회원정보 찾기</h1>
        <form class="needs-validation" novalidate="">
          <div class="row g-3">
            

         	<div class="btnbox">
				<div class="btn">
		          <input class="w-100 btn btn-primary btn-lg" type="button" id="cancel"  onclick="findId('${contextPath}')" value="아이디 찾기">
				</div>
				<div class="btn">
		          <input class="w-100 btn btn-primary btn-lg" type="button" id="edituser"  onclick="findPw('${contextPath}')" value="비밀번호 찾기">
				</div>
			
			</div>	
		</div>
        </form>
      </div>
    </div>
  </main>

<footer class="my-5 pt-5 text-muted text-center text-small">
<hr class="my-4">
    <p class="mb-1">멀티캠퍼스 Smart-PT팀</p>
    
  </footer>
  
</div>

	
</body>
</html>