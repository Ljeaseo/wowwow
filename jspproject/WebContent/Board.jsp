<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>게시판</h1>
<form action="BoardServer.jsp">
<table>
    <tr>
        <td>title</td>
        <td><input type="text" name="title"></td>
    </tr>
    <tr>
        <td>content</td>
        <td><input type="text" name="content"></td>
    </tr>
    <tr>
        <td><input type="submit" value="글쓰기"></td>
    </tr>
</table>
</form>
</body>
</html>