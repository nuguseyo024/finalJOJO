<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.io.PrintWriter"%>
<%@ include file="../user/header.jsp"%>

<%
// 	String b_user_id  = (String) session.getAttribute("b_user_id");
// 	String user_id = null;
// 	if(session.getAttribute("user_id")!=null){
// 		user_id = (String) session.getAttribute("user_id");
// 	}else if(user_id==null){
// 		PrintWriter script = response.getWriter();
// 		script.println("<script>");
// 		script.println("alert('로그인을 해주세요!')");
// 		script.println("location.href='/login'");
// 		script.println("</script>");
// 	}
%>

<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<!-- Meta -->
<title>movie_list</title>
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
		<div class="row">
				<span class="thumb-image"> <img src="${movie.poster_url }"> 
 				<span class="ico-grade grade-12"> ${movie.age }</span>
			</span>
		</div>
		<br>
		<table>
			  <thead>
			    <tr>
			      <th >#</th>
			      <th >First</th>
			      <th >Last</th>
			      <th >Handle</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th>1</th>
			      <td>Mark</td>
			      <td>Otto</td>
			      <td>@mdo</td>
			    </tr>
			    <tr>
			      <th >2</th>
			      <td>Jacob</td>
			      <td>Thornton</td>
			      <td>@fat</td>
			    </tr>
			    <tr>
			      <th >3</th>
			      <td >Larry the Bird</td>
			      <td>@twitter</td>
			    </tr>
			  </tbody>
			</table>
	</div>		
			
</body>
</html>