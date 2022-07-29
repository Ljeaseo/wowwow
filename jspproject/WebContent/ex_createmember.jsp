<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
input,
button{
	
	 border: 1px solid;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body  style="text-align:center">
<h1>회원가입</h1>
<form action="ex_creatememberServer.jsp">
<table style="margin:auto">
    <tr>
        <td colspan=2>
            <input type="text" name="id" style="width:300px;height:50px;font-size:30px;" placeholder="ID" onfocus="this.placeholder=''" onblur="this.placeholder='ID'">
        </td>
    </tr>
    <tr>
        <td colspan=2>
            <input type="password" name="pw" style="width:300px;height:50px;font-size:30px;" placeholder="PASSWORD" onfocus="this.placeholder=''" onblur="this.placeholder='PASSWORD'">
        </td>    
    </tr>
     <tr>
        <td colspan=2>
            <input type="text" name="name" style="width:300px;height:50px;font-size:30px;" placeholder="NAME" onfocus="this.placeholder=''" onblur="this.placeholder='NAME'">
        </td>    
    </tr>
    <tr  align="right">
        <td >
            <input type="submit" value="회원가입" style="background-color:#F6F6F6">
        </td>
    </tr>   
</table>
</form>
</body>
</html>