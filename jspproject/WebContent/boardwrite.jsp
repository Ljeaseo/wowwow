<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>게시판</h1>
<form action="boardwriteServer.jsp" method="post">
<table border="1">
    <tr>
        <td>제목</td>
        <td><input type="text" name="title"></td>               
    </tr>
    <tr>
        <td>내용</td>
        <td><textarea name="content" cols="22px" rows="10px"></textarea></td>
    </tr>
<%--    
    if(session.getAttribute("id") != null){

	<tr>
        <td colspan=2><input type="submit" value="글쓰기"></td>
    </tr>

    }
--%>

<%-- JSTL로 if문 실행 --%>
    <tr>
        <c:if test="${id != null}">
        <td colspan=2><input type="submit" value="글쓰기"></td>
        </c:if>
    </tr>
</table>
</form>
</body>
</html>