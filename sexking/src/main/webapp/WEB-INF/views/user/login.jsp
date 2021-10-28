<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<script type="text/javascript">
function loginValidation(){

    var userId = $("#userID").val();
    var password = $("#userPassword").val();

    if(!userId){
        alert("아이디를 입력하세요.");
        userId.focus();
        return false;
    }else if(!password){
        alert("비밀번호를 입력하세요.");
        password.focus();
        return false;
    }else {
        login(userId,password);
    }

    function login(ID,Password){
        $.ajax({
            url : "/jquery/login",
            type : 'POST',
            data : {
                userID : ID,
                userPassword : Password
            },
            success:function(data){
                if(data == 0){
                    alert("아이디 혹은 비밀번호가 맞지 않습니다.");

                    return false;
                }else if(data == 1){
                    location.href="/view/dashboard";
                }
            }

        })

    }

}
</script>
</head>
<body>
    <form class="signUp">
       <h1 class="signUpTitle">로그인</h1>
       <input type="text" name="userID" id="userID" placeholder="ID" autofocus >
       <input type="password" name="userPassword" id="userPassword" placeholder="Password">
       <input type="button" value="로그인" onclick="loginValidation()" >
       <input type="button" value="회원가입" onclick="location.href='/user/join'" class="signUpButton">
    </form>
</body>
</html>