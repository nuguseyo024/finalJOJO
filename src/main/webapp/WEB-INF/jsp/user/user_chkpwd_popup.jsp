<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��й�ȣ Ȯ��</title>
<script>
	function dbchkPwd() {
		
		var inputPwd = $('#inputPwd').val();
		$.ajax({
			type:'post',
			url:'/user_chkpwd',
			data:{inputPwd:inputPwd},
			success:function(res) {
				res.chkpwdok ? true : false;
				if (res.chkpwkok == true) {
					window.opener.location.href = '/user_chgpwd/${user_id}';
					window.close();
				} else {
					alert('��й�ȣ�� �ٽ� �ѹ� Ȯ�����ּ���!');
				}
			}
		});
		
	}
</script>
</head>
<body>
	<div><input type="hidden" id="user_id" name="user_id" value="${user.user_id }" readonly></div>
	<div><input type="hidden" id="user_pwd" name="user_pwd" value="${user.user_pwd }" readonly></div>
	<div>���� ��й�ȣ<input type="password" id="inputPwd" name="inputPwd"></div>
	<button type="button" onclick="dbchkPwd();">��й�ȣ Ȯ��</button>
</body>
</html>