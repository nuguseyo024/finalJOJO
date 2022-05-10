<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="java.io.PrintWriter"%>
<%@ include file="../user/header.jsp"%>

<%

	String b_user_id  = (String) session.getAttribute("b_user_id");
	String user_id = null;
	if(session.getAttribute("user_id")!=null){
		user_id = (String) session.getAttribute("user_id");
	}else if(user_id==null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 해주세요!')");
		script.println("location.href='/login'");
		script.println("</script>");
	}
%>

<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<!-- Meta -->
<title>movie_read</title>
<script>
	function logout() {
		if (!confirm('로그아웃 하시겠습니까?'))
			return;
		$.ajax({
			url : '/logout',
			method : 'get',
			dataType : 'json',
			cache : false,
			success : function(res) {
				alert(res.logoutok ? '로그아웃 성공' : '로그아웃 실패');
				if (res.logoutok) {
					location.href = "/main";
				}
			},
			error : function(xhr, status, err) {
				alert('error:' + err);
			}
		});
		return false;
	}

	function search() {
		var keyword = $('#keyword').val();
		alert(keyword);
		location.href = "/movie/movie_searchList/" + keyword;
	}
	
	function rating_submit(){
		var rating = $('#rating').val();
		alert(rating);
	}
</script>
<meta charset="UTF-8">
<meta name="description" content="Free HTML template">
<meta name="keywords" content="HTML, template, free">
<meta name="author" content="Nicola Tolin">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Styles -->
<link href="../resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="../resources/vendor/animate/animate.css" rel="stylesheet"
	type="text/css" />
<link href="../resources/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<div class="container">
	<br>
		
		<h3>
			<strong>${movie.title }</strong> 
		</h3>	
		<div class="container">
			<span > <img src="${movie.poster_url }" onclick="location.href='https://movie.naver.com/movie/bi/mi/basic.naver?code=${movie.code}'"></span> 
			<button type="button" class="btn btn-outline-success" onclick="location.href='https://movie.naver.com/movie/bi/mi/basic.naver?code=${movie.code}'">예매하러 가기 </button>
		
			<div class="rows">
				 <form oninput="r.value=parseFloat(rating.value)" onsubmit="rating_submit();" id="rating_form">
				 <strong>별점을 매겨보세요!</strong>
				 <br>
			        <input style="width: 500px;" type="range" id="rating" name="rating" min="0.5" max="10" step="0.5">
			        <output name="r" for="rating">  </output><br>
			      <button type="submit"> 확인 </button>
				</form>
			</div>
			<br>
		</div>
		<div class="container">
		<table class="table table-dark table-striped">
			  <thead>
			    <tr>
			      <th >#</th>
			      <th >Title</th>
			      <th >감독 </th>
			      <th >배우 </th>
			      <th >Age</th>
			      <th >Genre</th>
			      <th >Running Time</th>
			      <th >네티즌 평가 수 </th>
			      <th >네티즌 평가  </th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th></th>
			      <td> ${movie.title_forn }  </td>
			      <td>   ${movie.directors }  </td>		   
			      <td>   ${movie.actors }  </td>		   
			      <td>   ${movie.age }  </td>		    
			      <td>   ${movie.genre }  </td>
			      <td>   ${movie.runningTime }  </td>		      
			      <td>  <fmt:formatNumber value="${movie.netizens_participate }" pattern="0,000"/> </td>
			      <td><strong>  ${movie.netizens_rate } 점  </strong></td>
			    </tr>      
			  </tbody>
			</table>
			<br>
			<h4>줄거리.. </h4>
			<I>${movie.story }</I>
	</div>		
	</div>
			
</body>
</html>