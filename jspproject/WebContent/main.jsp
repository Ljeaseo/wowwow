<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
메인입니다.
<%
if(session.getAttribute("id") == null){
%>
	<a href="loginForm.jsp">로그인</a>
<%
}
%>
<%
if(session.getAttribute("id") != null){
%>
	<a href="logoutServer.jsp">로그아웃</a>
<%
}
%>

<a href="boardlist.jsp">게시판</a>

</body>
</html>