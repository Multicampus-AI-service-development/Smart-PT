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
	<script src="${contextPath}/resources/js/user/findUser.js"></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<!--<script src="../resources/js/duplicationCheck.js"></script> -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.84.0">
<link href="https://getbootstrap.com/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="manifest" href="https://getbootstrap.com/docs/5.0/assets/img/favicons/manifest.json">
<meta name="theme-color" content="#7952b3">
<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/checkout/">
<link rel="mask-icon" href="https://getbootstrap.com/docs/5.0/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
<link href="https://getbootstrap.com/docs/5.0/examples/checkout/form-validation.css" rel="stylesheet">	
<link rel="apple-touch-icon" href="https://getbootstrap.com/docs/5.0/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<style>
   #checkId{background:none; border:0;};   
      
</style>
<style>
	.container {
  		max-width: 600px;
	}
    </style>	
<script src="https://getbootstrap.com/docs/5.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>	
<script src="https://getbootstrap.com/docs/5.0/examples/checkout/form-validation.js"></script>
	<title>아이디 찾기</title><link rel="icon" href="${contextPath}/resources/css/title.jpg">

</head>

<body class="bg-light">
    
<div class="container">
  <main>

    <div class="row g-5">
      
      <div class="my-5 pt-5">
        <h1 class="mb-3">아이디 찾기</h1>
        <form class="needs-validation"  novalidate="">
          <div class="row g-3">
            
			<div class="col-12">
              <label for="name" class="form-label">이름</label>
              <input type="text" class="form-control" id="name" name="name" placeholder="이름" required="">
              <div class="invalid-feedback">
                이름을 입력해주세요.
              </div>
            </div>
			
			
			<div class="col-12">
              <label for="nickname" class="form-label">닉네임</label>
              <input type="text" class="form-control" id="nickname" name="nickname" placeholder="닉네임" >
              <div class="invalid-feedback">
                닉네임을 입력하지 않으면 기본값은 이름이 됩니다.
              </div>
            </div>
			
			<div class="col-12">
              <label for="email" class="form-label">이메일</label>
              <input type="email" class="form-control" id="email" name="email" placeholder="이메일" required="">
              <div class="invalid-feedback">
                이메일을 입력해주세요.
              </div>
            </div>
			
			
            <div class="col-12">
              <label for="tel" class="form-label">전화번호</label>
              <input type="tel" class="form-control" id="tel" name="tel" placeholder="010-0000-0000">
              <div class="invalid-feedback">
                전화번호를 입력해주세요.
              </div>
            </div>


			<div class="col-12">
              <label for="question" class="form-label">회원정보 찾기 질문</label>
              <input type="text" class="form-control" id="question" name="question" placeholder="질문 작성 ex)내가 사는 곳은" required="">
              <div class="invalid-feedback">
                질문을 입력해주세요.
              </div>
            </div>
			
			<div class="col-12">
              <label for="answer" class="form-label">회원정보 찾기 대답</label>
              <input type="text" class="form-control" id="answer" name="answer" placeholder="질문에 대한 대답 작성" required="">
              <div class="invalid-feedback">
                대답을 입력해주세요.
              </div>
            </div>
			
            <div class="col-12">
              <label for="addr" class="form-label">주소</label>
              <input type="text" class="form-control" id="addr" placeholder="주소" required="">
              <div class="invalid-feedback">
                주소를 입력해주세요.
              </div>
            </div>

            
          </div>

          <hr class="my-4">

          

          <input class="w-100 btn btn-primary btn-lg" type="submit" id="findId"  onclick="findUserId('${contextPath}')" value="찾기">
        </form>
      </div>
    </div>
  </main>
<footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">멀티캠퍼스 Smart-PT팀</p>
    
  </footer>
  
</div>



	
</body>
</html>