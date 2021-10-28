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
	
	var bbsTitle = $("#bbsTitle").val();
	var bbsContent = $("#bbsContent").val();
	
	if(!bbsTitle){
		alert("제목 입력은 필수입니다.");
		$("#bbsTitle").focus();
		return false;
	}else if(!bbsContent){
		alert("내용 입력은 필수 입니다.");
		$("#bbsContent").focus();
		return false;
	}else {
		boardWrite(bbsTitle,bbsContent);
	}
	
}
function boardWrite(bbsTitle,bbsContent){
	
	$.ajax({
		
		url : "/jquery/boardwrite",
		type:'POST',
		data : {
			bbsTitle : bbsTitle,
			bbsContent : bbsContent
		},
		success:function(data){
			if(data == 1){
				alert("글 등록이 완료되었습니다.");
				location.href="/view/dashboard";
			}else {
				alert("글 등록 실패");
			}
		},error:function(){
			console.log("error");
		}
		
	})
	
}

</script>
</head>
<body>
<form>
<table>
        <caption>게시판 글쓰기 </caption>
    <tbody>
            <tr>
                <th>제목: </th>
                <td><input type="text" placeholder="제목을 입력하세요. " id="bbsTitle"/></td>
            </tr>
            <tr>
                <th>내용: </th>
                <td><textarea cols="30" rows="10" placeholder="내용을 입력하세요. " id="bbsContent"></textarea></td>
            </tr>
           <!--  <tr>
                <th>첨부파일: </th>
                <td><input type="text" placeholder="파일을 선택하세요. " name="filename"/></td>
            </tr> -->
            <tr>
                <td colspan="2">
                    <input type="button" value="등록" onclick="boardValidation()"/>
                    <input type="button" value="뒤로" onclick="javascript:location.href='dashboard'"/>
                </td>
            </tr>
    </tbody>
</table>
</form>

</body>
</html>