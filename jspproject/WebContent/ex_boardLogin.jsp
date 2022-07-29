<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<!DOCTYPE html>
<html>
<style>
input,
button{
	
	 border: 1px solid;
}
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align:center">
<h1>게시판 이용하기</h1>
<form action="ex_boardLoginServer.jsp" >
<table style="margin:auto">

    <tr>
        <td colspan=2 >
            <input type="text" name="id" style="width:300px;height:50px;font-size:30px;"  placeholder="ID" onfocus="this.placeholder=''" onblur="this.placeholder='ID'">
        </td>
    </tr>
    <tr>
        <td colspan=2 >
            <input type="password" name="pw" style="width:300px;height:50px;font-size:30px;"  placeholder="PASSWORD" onfocus="this.placeholder=''" onblur="this.placeholder='PASSWORD'">
            
        </td>    
    </tr>
    <tr >
       
        <td align="right">
            <input type="submit" class="button" value="로그인" style="background-color:#F6F6F6">
            <button class="button" onclick="location.hert='ex_createmember.jsp'" style="background-color:#F6F6F6">회원가입</button>
        </td>
    </tr>   
</table>
</form>
</body>
</html>