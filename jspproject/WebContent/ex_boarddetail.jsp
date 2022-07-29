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
<style>
a:link, a:visited{
    background-color:#F6F6F6;
    color:black;
    padding:1px 1px;
    text-align:center;
    text-decoratian:none;
    display:inline-block;
    border:1px;
}
div{
     background-color:#F6F6F6;
     outline:1px;
}
</style>
</head>
<body style="text-align:center">
    <h1>게시글 상세페이지</h1>
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
		
		
		//System.out.println("DB연결 성공");
		
		//prepareStatement : java -> DB에 쿼리를 보내기 위해 사용하는 객체
		pstmt=conn.prepareStatement("select * from exboard where bno=?"); 
	
		pstmt.setInt(1,bno);
		//위 SQL문장을 실행(workdench : ctrl+enter)
		// executeQuery() :  select (select 된 결과를 ResultSet라는 공간에 저장해서 반환)
		// executeUpdate() :  insert,update,delete ()
		rs=pstmt.executeQuery();
		
		
		if(rs.next()){
     %>   
        <tr style="width:300px;height:40px;font-size:30px;">
            <td >제목</td>
            <td><%=rs.getString("title") %></td>
        </tr>
         <tr style="width:300px;height:300px;font-size:30px;">
            <td>내용</td>
            <td><%=rs.getString("content") %></td>
        </tr>
    
        <tr >
            <td colspan="2">
            <div>
            <a href='ex_boardmodify.jsp?bno=<%=rs.getInt("bno")%>'>게시글 수정</a>
            </div>
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