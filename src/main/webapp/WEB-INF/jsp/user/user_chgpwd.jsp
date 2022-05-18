<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��й�ȣ ����</title>
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
   
   // ��й�ȣ ��ġ, ����ġ Ȯ��
   $(function() {
      $('#new_pwd1').keyup(function() {
         $('#checkPwd').html('');
      });
      
      $('#new_pwd2').keyup(function() {
         if ($('#new_pwd1').val() == $('#new_pwd2').val()) {
            $('#checkPwd').html('��й�ȣ ��ġ');
            $('#checkPwd').attr('color', 'blue');
         } else {
            $('#checkPwd').html('��й�ȣ ����ġ');
            $('#checkPwd').attr('color', 'red');   
         }
      });
   });
   
   
   // ��й�ȣ ���� ���
   function userChgpwdProcess() {
      
      var new_pwd1 = $('#new_pwd1').val();
      var new_pwd2 = $('#new_pwd2').val();
      
      var obj = new Object();
      obj.user_id = $('#user_id').val();
      obj.user_pwd = new_pwd2;
      
      if (new_pwd1 == '' || new_pwd2 == '') {
         alert('��й�ȣ�� �Է����ּ���.');
         return false;
      } 
      
      $.ajax({ 
         url:'/user_chgpwd_process',
         method:'post',
         cache:false,
         data:obj,
         dataType:'json',
         success:function(res) {
            alert(res.chgpwdok ? '��й�ȣ ���� ����' : '��й�ȣ ���� ����');
            if(res.chgpwdok == true) {
               location.href='/user_info/${user_id}';
            } 
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
                  <a class="navbar-brand" href="/movie/main/${user_id}">JOJO</a>
                  <div class="navbar-welcome">                          
                   <c:if test="${user_id ne user.user_id}">
                  <a class="nav-link" href="/login">WELCOME! �α���</a>
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
                           <li> <a href="/movie/movie_list">Ratings</a></li>
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
      <div class="container-fluid contact-form">
         <div class="row">
            <div class="col-md-10 offset-md-1">
               <div class="row">
                  <div class="col-xl-5 offset-xl-1 col-md-12 col-sm-12">
                     <form id="userChgpwdProcess" onsubmit="return userChgpwdProcess();">
                        <div class="row">
                           <div class="col-md-12">
                              <div class="md-form form-group">
                              <b><font size="6" color="black">��й�ȣ ����</font></b>
                                    <br>
                                 <br>
                                 
                                 <div><input type="hidden" id="user_id" name="user_id" value="${user.user_id }"></div>
                           <div>���� ��й�ȣ<input type="password" id="new_pwd1" name="new_pwd1" class="form-control"></div>
                           <div>��й�ȣ Ȯ��<input type="password" id="new_pwd2" name="new_pwd2" class="form-control"><font id="checkPwd" size="2"></font></div>
                        
                                 <button type="submit">��й�ȣ ����</button>
                           </div>
                        </div>
                  </div>
            </form>
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
      