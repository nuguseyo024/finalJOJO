<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movie_list</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<style>
td {
	border: 1px dotted grey;
}
</style>
<script>
	function search() {
		var keyword = $('#keyword').val();
		alert(keyword);
		location.href = "/board/board_searchList/" + keyword;
	}
</script>
</head>
<body>
	<div>
		<h2>movie_list</h2>
		<div>
			<form id="search_form" method="get" action="/movie/movie_searchList">
				<input type="text" id="keyword" name="keyword" placeholder="Search">
				<button type="submit">search</button>
			</form>
		</div>
	</div>
	<div>
		<table>
			<thead>
				<tr>
					<th>openDate</th>
					<th>title</th>
					<th>directors</th>
					<th>actors</th>
					<th>poster</th>
				</tr>
			</thead>
			<tbody>
			<tbody>

				<!-- 게시판 목록 출력 영역   -->
				<c:forEach var="movie" items="${movie }">
					<tr>
						<td>${movie.openDate}</td>
						<td><a href="/movie/movie_read/${movie.code }"> ${movie.title }</a></td>
						<td>${movie.directors}</td>
						<td>${movie.actors}</td>
						<td>
							<p>
								<img src="${movie.poster_url }">
							</p>
					</tr>
				</c:forEach>
			</tbody>
			</tbody>
		</table>
		<!-- ------------------------- 게시판 영역 끝 --------------------------------- -->
	</div>



</body>
</html>