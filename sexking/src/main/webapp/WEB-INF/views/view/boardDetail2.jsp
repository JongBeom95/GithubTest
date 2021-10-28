<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="/WEB-INF/views/jstlHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 상세보기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
function boardDelete(bbsID) {
	var url = "/jquery/Delete";
	call(bbsID,url);
	
}



function call(bbsid,Curl) {
	$.ajax({
		url : Curl,
		type : 'POST',
		data : {bbsID : bbsid,
				bbsTitle : $("#title").val(),
				bbsContent : $("#content").val(),
		},
		success : function(data){
			if (data == 1) {
				location.href = "/view/dashboard2";
			}else {
				alert("니 애 미");
				return false;
			}
		}
		
		
	})
	
}


</script>

<style>
  table {
    width: 100%;
    border: 1px solid #444444;
  }
  th, td {
    border: 1px solid #444444;
  }
</style>

</head>
<body>
<form>
	<table>
		<caption>글 상세보기 </caption>
			<tbody>
			<tr>
				<th>제목 : </th>
				<td id = "title">${result.bbsTitle}</td>
			</tr>
			<tr>
				<th>내용 : </th>
				<td id = "content">${result.bbsContent}</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="수정" onclick="location.href='boardUpdate?bbsID=${result.bbsID}'"/>
					<input type="button" value="삭제" onclick="boardDelete(${result.bbsID})"/>
					<input type="button" value="목록으로" onclick="javascript:location.href='dashboard2'"/>
 				</td>
			</tr>
			</tbody>
	</table>
</form>

</body>
</html>