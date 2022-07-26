<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
    // jspObject에서 입력받은 이름값을 저장할 공간
    String name = request.getParameter("name"); 
 
    //session에 id값을 저장하기 전에 request로 id값을 불러온 다음 session에 저장
    String id = request.getParameter("id"); 
    session.setAttribute("id",id); 
%>
</head>
<body>
<%=name %>
<%=session.getAttribute("id") %>
</body>
</html>