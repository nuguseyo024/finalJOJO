<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
   <head>
      <!-- Meta -->
      <title>User Info</title>
      <meta charset="UTF-8">
      <meta name="description" content="Free HTML template">
      <meta name="keywords" content="HTML, template, free">
      <meta name="author" content="Nicola Tolin">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <!-- Styles -->
      <link href="../resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
      <link href="../resources/vendor/animate/animate.css" rel="stylesheet" type="text/css"/>
      <link href="../resources/css/style.css" rel="stylesheet" type="text/css"/>
      
<script src="https://code.jquery.com/jquery-3.6.0.min.js" 
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
	crossorigin="anonymous"></script>
<script>
	function user_out() {
		if(!confirm('탈퇴하시겠습니까?')) return;
		$.ajax({
			url:'/user_out/${user.user_id}',
			method:'get',
			dataType:'json',
			success:function(res) {
				alert(res.userout ? '탈퇴 성공' : '탈퇴 실패');
				location.href='/main';
			},
			error:function(xhr,status,err) {
				alert('error:' + err);
			}
		});
		return false;
	}
</script>
</head>
<body>

 <!-- Navbar -->
       <div class="navigation container-fluid">
         <div class="row justify-content-md-center ">
            <div class="col-md-10 col-sm-12">
               <nav class="navbar navbar-default">
                  <a class="navbar-brand" href="/main">JOJO</a>
                  <div class="navbar-welcome">                          
                	<c:if test="${user_id ne user.user_id}">
						<a class="nav-link" href="/login">WELCOME! 로그인</a>
					</c:if>	
					<c:if test="${user_id eq user.user_id}">
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

      <!-- Products -->
      <div class="container-fluid products-2">
         <div class="row justify-content-md-center ">
            <div class="col-md-10 col-sm-12">
               <div class="row">
                  <div class="col-xl-8 col-md-10 col-sm-12">
                     <b><font size="6" color="black">가입정보</font></b>
                     <br>
                     <p><br>
                     	아이디 : ${user.user_id}
			<input type="hidden" id="user_pwd" name="user_pwd" value="${user.user_pwd }">
                        <br>
                        이름 : ${user.user_name}
                        <br>
                        전화번호 : ${user.user_phone}
                        <br>
						이메일 : ${user.user_email}
						<br>
						성별 : ${user.user_sex}
						<br>
						생년월일 : ${user.user_birth}
						<br>
                     </p>
                     <button type="submit" style="float: left;" onclick="location.href='/user_edit/${user.user_id}'">정보수정</button>
                     <button type="submit" onclick="location.href='javascript:user_out()'">회원탈퇴</button>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- End Products -->
		
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