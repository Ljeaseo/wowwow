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
<body style="text-align:center">
<h1>게시글 수정</h1>
<form action="boardmodifyServer.jsp">
    <table border="1" style="margin:auto">
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
		
		
		
		pstmt=conn.prepareStatement("select * from exboard where bno=?"); 
		
		
		pstmt.setInt(1,bno);
		
		rs=pstmt.executeQuery();
		
		if(rs.next()){
     %>   
        <tr style="width:400px;height:40px;font-size:20px;">
            <td>제목</td>
            <td>
                <input type="text" name="title" value="<%=rs.getString("title") %>" style="width:300px;height:40px;font-size:30px;">
                <input type="hidden" name="bno" value="<%=rs.getString("bno") %>">           
            </td>
            
            
        </tr>
         <tr>
            <td>내용</td>
            <td colspan=2>
            <textarea name="content" style="width:300px;height:300px;font-size:30px;" ><%=rs.getString("content") %></textarea>
            </td>
        </tr>
        <tr>
            <td colspan=2 align="right">
            <input type="submit" value="게시글 수정" formaction="ex_boardmodifyServer.jsp" name="bno">
            <input type="submit" value="게시글 삭제" formaction="ex_boardremoveServer.jsp" name="bno">
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