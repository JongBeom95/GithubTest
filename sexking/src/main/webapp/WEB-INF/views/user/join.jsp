<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	function loginValidation() {

		var id = $("#userID").val();
		var pw = $("#userPassword").val();
		var name = $("#userName").val();
		var gender = $("#userGender").val();
		var email = $("#userEmail").val();

		if (!id) {
			alert("아이디를 입력하세요.");
			id.focus();
			return false;
		} else if (!pw) {
			alert("비밀번호를 입력하세요.");
			pw.focus();
			return false;
		} else if (!name) {
			alert("이름을 입력하세요.");
			name.focus();
			return false;
		} else if (!gender) {
			alert("섹스를 입력하세요.");
			gender.focus();
			return false;
		} else if (!email) {
			alert("이메일 입력하세요.");
			email.focus();
			return false;

		} else {
			join(id, pw, name, gender, email);
		}

		function join(id, pw, name, gender, email) {
			$.ajax({
				url : "/jquery/join",
				type : 'POST',
				data : {
					userID : id,
					userPassword : pw,
					userName : name,
					userGender : gender,
					userEmail : email
				},
				success : function(data) {
					if (data == 1) {
						location.href = "/user/login";

					} else {
						alert("섹스");
						return false;
					}
				}

			})

		}

	}
</script>
</head>
<body>
	<form class="signUp">
		<h1>회원가입</h1>
		<input type="text" id="userID" placeholder="ID" autofocus> <input
			type="password" id="userPassword" placeholder="Password"> <input
			type="text" id="userName" placeholder="userName"> <label><input
			type="radio" name="gender" id="userGender" value="남자">남자</label> <label><input
			type="radio" name="gender" id="userGender" value="여자">여자</label> <input
			type="email" id="userEmail" placeholder="userEmail"> <input
			type="button" value="회원가입" onclick="loginValidation()">
	</form>
</body>
</html>