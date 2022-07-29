<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
input,
button{
	
	 border: 1px solid;
}
</style>
</head>
<body style="text-align:center" >
<h1>글쓰기</h1>
<form action="ex_boardwriteServer.jsp">
<table style="margin:auto">
    <tr>
        <td>제목:</td>
        <td><input type="text" name="title"style="width:300px;height:40px;font-size:30px;"></td>               
    </tr>
    <tr style="vertical-align:top">
        <td>내용:</td>
        <td><textarea name="content" cols="40px" rows="30px"></textarea></td>
    </tr>
<%

    if(session.getAttribute("id") != null){
%>   

	<tr align="right">
        <td colspan=2><input type="submit" value="글쓰기" style="background-color:#F6F6F6"></td>
    </tr>
<% 

    }
%>
 
</table>
</form>
</body>
</html>