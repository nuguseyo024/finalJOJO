<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��й�ȣ Ȯ��</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" 
   integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
   crossorigin="anonymous"></script>
<script>
   
   
   function dbchkPwd() {
      var user_pwd = $('#user_pwd').val();
      var input_pwd = $('#input_pwd').val();
   
      if (user_pwd == input_pwd) {
         window.opener.location.href = '/user_chgpwd/${user_id}';
         window.close();
      } else {
         alert('��й�ȣ�� �ٽ� Ȯ�����ּ���.');
         window.close();
      }
   }
   
</script>
</head>
<body>
   <div><input type="hidden" id="user_id" name="user_id" value="${user.user_id }" readonly></div>
   <form id="dbchkPwd" onsubmit="return dbchkPwd();"> 
      <div><input type="hidden" id="user_pwd" name="user_pwd" value="${user.user_pwd }" readonly></div>   
      <div>���� ��й�ȣ<input type="password" id="input_pwd" name="input_pwd"></div>
      <button type="submit">��й�ȣ Ȯ��</button>
   </form>
</body>
</html>