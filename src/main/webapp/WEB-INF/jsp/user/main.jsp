<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
   <head>
      <!-- Meta -->
      <title>Home</title>
      <script>
		function logout() {
			if(!confirm('로그아웃 하시겠습니까?')) return;
			$.ajax({
				url:'/logout',
				method:'get',
				dataType:'json',
				cache:false,
				success:function(res) {
					alert(res.logoutok ? '로그아웃 성공' : '로그아웃 실패');
					if (res.logoutok) {
						location.href="/main";
					}
				},
				error:function(xhr,status,err) {
					alert('error:' + err);
				} 
			});
			return false;
		}
		
		function search() {
			var keyword = $('#keyword').val();
			alert(keyword);
			location.href = "/board/board_searchList/" + keyword;
		}
	  </script>
      <meta charset="UTF-8">
      <meta name="description" content="Free HTML template">
      <meta name="keywords" content="HTML, template, free">
      <meta name="author" content="Nicola Tolin">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <!-- Styles -->
      <link href="../resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
      <link href="../resources/vendor/animate/animate.css" rel="stylesheet" type="text/css"/>
      <link href="../resources/css/style.css" rel="stylesheet" type="text/css"/>
   </head>
   <body>
      <!-- Navbar -->
      <div class="navigation container-fluid">
         <div class="row justify-content-md-center ">
            <div class="col-md-10 col-sm-12">
               <nav class="navbar navbar-default">
                  <a class="navbar-brand" href="/main">JOJO</a>
                  <div class="navbar-welcome">                          
                	<c:if test="${user_id == null}">
						<a class="nav-link" href="/login">WELCOME! 로그인</a>
					</c:if>	
					<c:if test="${user_id != null}">
						<a class="nav-link">WELCOME, ${user_id}!</a>
					</c:if>
                  </div>
                  <div class="button_container" id="toggle">
                     <span class="black top"></span>
                     <span class="black middle"></span>
                     <span class="black bottom"></span>
                  </div>
                  <div class="overlay" id="overlay">
                     <nav class="overlay-menu">
                        <ul>
                           <li> <a href="/board/board_list/1">Board</a></li>
                           <li> <a href="/user_info/${user_id}">My page</a></li>
                           <li> <a href="javascript:logout();">Logout</a></li>
                        </ul>
                     </nav>
                  </div>
               </nav>
            </div>
         </div>
      </div>
      <!-- End Navbar -->
      <!-- Portfolio-Text -->
      <div class="container-fluid pb-5 portfolio-text">
         <div class="row">
            <div class="col-md-7 offset-md-1 col-sm-12">
               <h2>영화 추천 사이트에 오신 것을 환영합니다.
               </h2>
            </div>
         </div>
         <div class="row">
            <div class="col-md-7 offset-md-1 col-sm-12">
               <p class="pb-5 pt-5">
               	몇 개의 평점으로 내 취향의 영화를 찾아보세요!
               </p>
            </div>
         </div>
      </div>
      <!-- End Portfolio-Text -->
      <!-- Gallery -->
      <div class="scrollblock">
         <div class="container-fluid pt-10">
            <div class="row justify-content-md-center ">
               <div class="col-md-10 col-sm-12">
                  <div class="card-columns">
                  
                  
          				<c:forEach var="movie" items="${movie }">        
                  <!--  이게 반복됨  -->
                     <div class="card card-hover h-100" >
                        <div class="card-body">
                           <a href="index.html">
                              <img class="card-img-top" src="${movie.poster_url }" alt="Card image cap">
                              <div class="reveal h-100 p-2 d-flex ">
                                 <div class="w-100 align-self-center">
                                    <p>+</p>
                                 </div>
                              </div>
                           </a>
                        </div>
                     </div>
                </c:forEach>     


                 
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- End Gallery -->
      <!-- Footer -->
      <div class="container-fluid footer ">
         <div class="row">

            <div class="col-xl-2 col-md-8 offset-md-1 col-sm-12">
               <p>
                  Team Jojo, Project
               </p>
            </div>
         </div>
      </div>
      <!-- End Footer -->
      <!-- Javascript -->
      <script src="../resources/vendor/jquery.min.js"></script>
      <script src="../resources/vendor/bootstrap/js/bootstrap.min.js"></script>
      <script src="../resources/vendor/wow/wow.js"></script>
      <script src="../resources/js/script.js"></script>
      <script>
         new WOW().init();
      </script>
      <!-- End Javascript -->
   </body>
</html>