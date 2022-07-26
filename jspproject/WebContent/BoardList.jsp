<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>게시판 목록</h1>
<table border="1">
    <tr>
        <td>bno</td><td>제목</td><td>내용</td><td>작성일자</td><td>조회수</td><td>아이디</td>
    </tr>
   <% 
 //DB연결
 	Connection conn=null;
 	PreparedStatement pstmt=null;
    ResultSet rs=null;
 	
 	try{
 		Context init = new InitialContext();
 		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/mysql");
 		conn = ds.getConnection();
 		
 		
 		//System.out.println("DB연결 성공");
 		
 		//prepareStatement : java -> DB에 쿼리를 보내기 위해 사용하는 객체
 		pstmt=conn.prepareStatement("select * from board"); 
 		
 		//위 SQL문장을 실행(workdench : ctrl+enter)
 		// executeQuery() :  select (select 된 결과를 ResultSet라는 공간에 저장해서 반환)
 		// executeUpdate() :  insert,update,delete ()
 		rs=pstmt.executeQuery();
       
 		while(rs.next()){ 
   %>
            <tr>
            <td><%=rs.getString("bno") %></td>
            <td><a href="BoardPage.jsp"><%=rs.getString("title") %></a></td>
            <td><%=rs.getString("content") %></td>
            <td><%=rs.getString("regdate") %></td>
            <td><%=rs.getString("cnt") %></td>
            <td><%=session.getAttribute("id") %></td>
            </tr>
   <%
            
		}
 		
	}catch(Exception e){
		//System.out.println("DB연결 실패");
		e.printStackTrace();
	}finally{
		conn.close();   // 메모리 관리 사용을 끝내면 닫아주기.
		rs.close();
		pstmt.close();
	}
   %>
   
</table>
</body>
</html>