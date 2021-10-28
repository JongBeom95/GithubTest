<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	function test() {
		alert("sexsexsexsex");
	}
	function sexKing() {
		var id = $("#userID").val();
		var pw = $("#userPassword").val();
		var name = $("#userName").val();
		var ge = $("#userGender").val();
		var em = $("#userEmail").val();
		
		if(!id){
			alert("아이디");
			id.focus();
			return false;
		}else if(!pw){
			alert("비번");
			pw.focus();
			return false;
		}else if(!name){
			alert("이름");
			name.focus();
			return false;
		}else if(!ge){
			alert("섹스");
			ge.focus();
			return false;
		}else if(!em){
			alert("이멜");
			em.focus();
			return false;
		}else {
			join2(id, pw, name, ge, em);
		} 
		
	}
	function join2(id, pw, name, ge, em) {
		$.ajax({
			url : "/jquery/join2",
			type : 'POST',
			data : {
				userID : id,
				userPassword : pw,
				userName : name,
				userGender : ge,
				userEmail : em,
			},
			success : function(data) {
				alert(data);
				if (data == 1) {
					location.href = "/user/login2";
				} else {
					alert("섹섹스");
					return false;
				}
			}
			
		})
	}
</script>
</head>
<body>
	<form class="signUp">
		<input type="text" id="userID" placeholder="아이디" autofocus>
		<input type="password" id="userPassword" placeholder="비밀번호">
		<input type="text" id="userName" placeholder="이름">
		<label><input type="radio" name ="gender" id="userGender" value="남자">자지</label>
		<label><input type="radio" name ="gender" id="userGender" value="여자">보지</label>
		<input type="email" id="userEmail" placeholder="이메일">
		<input type="button" value="회원가입" onclick="sexKing()">
	</form>
</body>
</html>