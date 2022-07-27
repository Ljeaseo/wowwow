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
<h1>게시글 상세 페이지</h1>

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
		
		
		//System.out.println("DB연결 성공");
		
		//prepareStatement : java -> DB에 쿼리를 보내기 위해 사용하는 객체
		pstmt=conn.prepareStatement("select * from board where bno=?"); 
	
		pstmt.setInt(1,bno);
		//위 SQL문장을 실행(workdench : ctrl+enter)
		// executeQuery() :  select (select 된 결과를 ResultSet라는 공간에 저장해서 반환)
		// executeUpdate() :  insert,update,delete ()
		rs=pstmt.executeQuery();
		
		
		if(rs.next()){
     %>   
        <tr>
            <td>제목</td>
            <td><%=rs.getString("title") %></td>
        </tr>
         <tr>
            <td>내용</td>
            <td><%=rs.getString("content") %></td>
        </tr>
        <tr>
            <td colspan="2">
            <a href="boardmodify.jsp?bno=<%=rs.getString("bno")%>">게시글 수정</a>
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
    
</body>
</html>

		
		
	
	
	