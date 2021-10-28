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

th, td {
    border: 1px solid #444444;
}
</style>
</head>
<body>
    <p>대시보드</p>
    <div>게시글 리스트</div>
    <table>
        <thead>
            <tr>
                <td>제목</td>
                <td>작성자</td>
                <td>글 작성 날짜</td>
            </tr>
        </thead>

        <c:forEach var="b" items="${result}">
            <tr>
                <td><a href="/view/boardDetail?bbsID=${b.bbsID}">${b.bbsTitle}</a></td>
                <td>${b.userID }</td>
                <td>${b.bbsDate }</td>
            </tr>
        </c:forEach>
    </table>
    <div>
        <a href="/view/boardwrite">글 작성하기</a>
    </div>
</body>
</html>