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
<h1>게시글 수정 페이지</h1>
<form action="boardmodifyServer.jsp">
    <table border="1">
<%
    

    int bno=Integer.parseInt(request.getParameter("bno")); // Interger.parseInt -> String 형변환

    
	//DB연결
	Connection conn=null;
	PreparedStatement pstmt=null;
    ResultSet rs=null;
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/mysql");
		conn = ds.getConnection();
		
		
		
		pstmt=conn.prepareStatement("select * from board where bno=?"); 
		
		
		pstmt.setInt(1,bno);
		
		rs=pstmt.executeQuery();
		
		if(rs.next()){
     %>   
        <tr>
            <td>제목</td>
            <td>
                <input type="text" name="title" value="<%=rs.getString("title") %>">
                <input type="hidden" name="bno" value="<%=rs.getString("bno") %>">           
            </td>
            
            
        </tr>
         <tr>
            <td>내용</td>
            <td colspan=2>
            <textarea name="content" cols="22px" rows="10px" ><%=rs.getString("content") %></textarea>
            </td>
        </tr>
        <tr>
            <td colspan=2>
            <input type="submit" value="게시글 수정" formaction="boardmodifyServer.jsp" name="bno">
            <input type="submit" value="게시글 삭제" formaction="boardremoveServer.jsp" name="bno">
            </td>
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
    </form>
</body>
</html>