<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/views/jstlHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>글작성</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
function boardValidation(){
	// $("#abc")는 아이디값으로 태그를 찾는 val은 밸류데이터(입력된 값)을 가져옴 $는 jquery문법임 .은 클래스로 태그의 정보를 가져오는 방식   
	var title = $("#bbsTitle").val();
	var content = $("#bbsContent").val(); 
	
	if(!title){
		alert("제목 입력 필수 씨발련아.");
		$("#bbsTitle").focus();
		return false;
	}else if(!content) {
		alert("내용 입력 씨 발 아");
		$("#bbsContent").focus();
		return false;
	}else {
		boardWrite(title,content);
	}
}
function boardWrite(title,content) {
	
	$.ajax({
		
		url : "/jquery/boardwrite2",
		type : 'POST',
		data : {
			bbsTitle : title,
			bbsContent : content
		},
		success:function(data){
			if(data == 1) {
				alert("글 등록 완료");
				location.href="/view/dashboard2";
			}else {
				alert("글 등록 실패");
			}
		}, error:function(){
			console.log("error");
		}
	})
}

	

</script>
</head>
<body>
<table>
		<caption> 글쓰기 </caption>
	<tbody>
		<tr>
			<th>제목 : </th>
			<td><input type="text" placeholder="제목을 입력하세요." id="bbsTitle"></td>
		</tr>
		<tr>
			<th>내용 : </th>
			<td><textarea cols="30" rows="10" placeholder="내용을 입력해용~" id="bbsContent"></textarea></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button" value="등록" onclick="boardValidation()"/>
				<input type="button" value="뒤로" onclick="javascript:location.href='dashboard2'"/>
			</td>
		</tr>
	</tbody>
</table>
</body>
</html>