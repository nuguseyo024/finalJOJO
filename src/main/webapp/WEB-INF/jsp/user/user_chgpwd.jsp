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
		$('#pwd1').keyup(function() {
			$('#checkPwd').html('');
		});
		
		$('#pwd2').keyup(function() {
			if ($('#pwd1').val() == $('#pwd2').val()) {
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
		
		var pwd1 = $('#pwd1').val();
		var pwd2 = $('#pwd2').val();
		
		var obj = new Object();
		obj.user_id = $('#user_id').val();
		obj.user_pwd = pwd2;
		
		if (pwd1 == '' || pwd2 == '') {
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
		<div><input type="hidden" id="user_pwd" name="user_pwd" value="${user.user_pwd }"></div>
		<div>���� ��й�ȣ<input type="password" id="pwd1" name="pwd1"></div>
		<div>��й�ȣ Ȯ��<input type="password" id="pwd2" name="pwd2"><font id="checkPwd" size="2"></font></div>
		<button type="submit">��й�ȣ ����</button>
	</form>
</body>
</html>