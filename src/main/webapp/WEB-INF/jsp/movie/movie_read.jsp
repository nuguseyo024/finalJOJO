<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.io.PrintWriter"%>


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
<html>
<head>
<meta charset="UTF-8">
<title>board_read</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<style>
td {
	border: 1px dotted grey;
}
</style>
<script>
	
</script>
</head>
<body>
	<div>
		<table>
			<tbody>
				<tr>
					<td>title</td>
					<td>img</td>
				</tr>
				<tr>
					<td>${movie.title }</td>
					<td> <p><img src="${movie.poster_url }"></p></td>
				</tr>
			</tbody>
		</table>
	</div>

</body>
</html>