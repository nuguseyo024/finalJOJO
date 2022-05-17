<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��й�ȣ ����</title>
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
   <form id="userChgpwdProcess" onsubmit="return userChgpwdProcess();">
      <div><input type="hidden" id="user_id" name="user_id" value="${user.user_id }"></div>
      <div>���� ��й�ȣ<input type="password" id="new_pwd1" name="new_pwd1"></div>
      <div>��й�ȣ Ȯ��<input type="password" id="new_pwd2" name="new_pwd2"><font id="checkPwd" size="2"></font></div>
      <button type="submit">��й�ȣ ����</button>
   </form>
</body>
</html>