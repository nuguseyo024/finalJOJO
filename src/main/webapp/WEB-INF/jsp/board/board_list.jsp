<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../user/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board_list</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<style>
.writebox {
	margin-left: 950px;
}
</style>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script>
	function search() {
		var keyword = $('#keyword').val();
		location.href = "/board/board_searchList/" + keyword;
	}
</script>
</head>
<body>
<br><br>
	<div class="container">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">
							번호</th>
						<th style="background-color: #eeeeee; text-align: center;">
							제목</th>
						<th style="background-color: #eeeeee; text-align: center;">
							작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">
							작성일</th>
						<th style="background-color: #eeeeee; text-align: center;">
							조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="board" items="${pageInfo.list }">
						<tr>
							<td>${board.board_num }</td>
							<td><a href="/board/board_read/${board.board_num }"
								style="text-decoration: none; color: black;">
									${board.board_title }</a></td>
							<td>${board.b_user_id }</td>
							<td>${board.board_date }</td>
							<td>${board.board_hit }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<!-- ------------------------- 게시판 영역 끝 --------------------------------- -->

			<!-- ------------------------- 페이징 처리 영역 시작  --------------------------------- -->
			<nav aria-label="Page navigation example">
				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>
					<c:forEach var="i" items="${pageInfo.navigatepageNums}">
						<c:choose>
							<c:when test="${i==pageInfo.pageNum}">
								<a href="/board/board_list/${i}" class="page-link">${i}</a>
							</c:when>
							<c:otherwise>
								<a href="/board/board_list/${i}" class="page-link">${i}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>

					<li class="writebox"><a href="/board/write_view"
						class="btn btn-primary pull-right">글쓰기</a></li>
				</ul>
			</nav>
		</div>
		<!-- ------------------------- 페이징 처리 영역 끝  --------------------------------- -->

		<div class="container"> 
	<div class="row">
			<form id="search_form" method="get" action="/board/board_searchList">
				<input type="text" id="keyword" name="keyword" placeholder="Search">
				<button type="submit">search</button>
			</form>
		</div>
	</div>
	</div>
	
</body>
</html>