<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>포스팅 페이지</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body>

	<nav class="navbar navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand">포스팅 페이지</a>
    <form class="d-flex">
      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
  </div>
	</nav>
	
<table class="table table-hover">
	<thead>
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>내용</th>
		<th>작성자</th>
		<th>날짜</th>
	</tr>
	</thead>
	<tbody>
	<tr>
		<td>165</td>
		<td>제목입니다</td>
		<td>내용입니다</td>
		<td>홍길동</td>
		<td>2021.06.17</td>
	</tr>
	
	<tr>
		<td>165</td>
		<td>제목입니다</td>
		<td>내용입니다</td>
		<td>홍길동</td>
		<td>2021.06.17</td>
	</tr>
	
	<tr>
		<td>165</td>
		<td>제목입니다</td>
		<td>내용입니다</td>
		<td>홍길동</td>
		<td>2021.06.17</td>
	</tr>
	
	<tr>
		<td>165</td>
		<td>제목입니다</td>
		<td>내용입니다</td>
		<td>홍길동</td>
		<td>2021.06.17</td>
	</tr>
	</tbody>
</table>
<div class="d-grid gap-2 d-md-flex justify-content-md-end">
  <button class="btn btn-primary me-md-2" type="button">글쓰기</button>
</div>

<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item disabled">
      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
  jQuery( document ).ready( function( $ ) {
    // code ...
  } );
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</body>
</html>