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
<%
	
	
 	 int bno=Integer.parseInt(request.getParameter("bno"));
	

	//DB연결
	Connection conn=null;
	PreparedStatement pstmt=null;
    ResultSet rs=null;
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/mysql");
		conn = ds.getConnection();
		
		
		//System.out.println("DB연결 성공");
		//Login을 하기위한 sql문장
		//prepareStatement : java -> DB에 쿼리를 보내기 위해 사용하는 객체
		pstmt=conn.prepareStatement("delete * from board where bno=?"); 
		//첫번째 물음표에는 사용자가 입력한 id값(String id=request.getParameter("id"); )을 설정
		pstmt.setInt(1,bno);
		
		
		//위 SQL문장을 실행(workdench : ctrl+enter)
		// executeQuery() :  select (select 된 결과를 ResultSet라는 공간에 저장해서 반환)
		// executeUpdate() :  insert,update,delete ()
		int result=pstmt.executeUpdate();
        
		   if(result!=0){
			    //insert가 되었으면 (삭제 되었으면) 로그인 화면으로 이동
			    	out.println("<script>");
					out.println("location.href='boardlist.jsp'");
					out.println("</script>");
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
</head>
<body>

</body>
</html>