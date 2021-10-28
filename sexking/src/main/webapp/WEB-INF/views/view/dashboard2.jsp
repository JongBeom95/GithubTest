<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대시보드</title>
<style>
table {
	width: 100%;
	border: 1px solid #444444;
}
th, th {
	border: 1px solid #444444;
}
</style>
</head>
<body>
    <p>섹스(sex)</p> <!-- 쓸때마다 줄바뀜 -->  
    <div>섹스킹(sex-king)</div>
    <table>
    	<thead>
	    	<tr>  <!--tr은 열--> 
    			<th>제목</th> <!-- td는 횡 -->
    			<th>작성자</th> <!-- th는 횡 + 굵은글씨 --> 
    			<th>글 작성 날짜</th>
    		</tr>
    	</thead>
    	<!-- forEach는 반복문이다 end,begin 등 지정가능 지정하지 않으면 해당 배열의 길이만큼 반복 step은 증감수치  -->
    	<c:forEach var="b" items="${result}" >
    		<tr>
    			<td><a href="/view/boardDetail2?bbsID=${b.bbsID}">${b.bbsTitle}</a></td>
    			<td>${b.userID }</td>
    			<td>${b.bbsDate }</td>
    		</tr>
    	</c:forEach>
    </table>
    <div>
    <a href="/view/boardwrite2">글작성</a>
    </div>
</body>
</html>