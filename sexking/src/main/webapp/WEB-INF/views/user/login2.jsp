<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
function loginAction(){
	
	var id = $("#userID").val();  // var은 변수선언 
	var pw = $("#userPassword").val();
	
	if(!id){				// !비어있는지 검사 
		alert("아이디입력해.");
		id.focus();
		return false;
	}else if(!pw){
		alert("비번입력해.");
		pw.focus();
		return false;
	}else {
		login(id,pw);
	}
	function login(id,pw){
		alert("sexman");
		$.ajax({
			url : "/jquery/login2",
			type : 'POST',
			data : {
				userID : id,
				userPassword : pw				
			},
			success:function(data){
				if(data == 0){
					alert("틀려");
					return false;
				}else if(data == 1){
					location.href="/view/dashboard2"
				}
			}
		})
	}
}	
</script>

</head>
<body>
	<form class="signUp">
		<input type="text" name="userID" id="userID" placeholder="ID"autofocus>
		 <input type="password" name="userPassword" id="userPassword" placeholder="Password"> 
		 <input type="button" value="로그인" onclick="loginAction()"> 
		 <input type="button" value="회원가입" onclick="location.href='/user/join2'" class="signUpButton">
	</form>
</body>
</html>