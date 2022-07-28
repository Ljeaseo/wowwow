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
//한글 깨짐방지
request.setCharacterEncoding("UTF-8");
// 사용자가 게시판에 필요한 제목과 내용을 title,content 변수에 저장
String title = request.getParameter("title");
String content = request.getParameter("content");
String id = (String)session.getAttribute("id");

//DB연결
Connection conn=null;
PreparedStatement pstmt=null;


try{
	Context init = new InitialContext();
	DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/mysql");
	conn = ds.getConnection();
	
	

	//sql문장 처리
	pstmt=conn.prepareStatement("insert into board (title, content,id) values (?,?,?)");
	
	
	//첫번째 물음표에는 사용자가 입력한 title을 설정
	pstmt.setString(1,title);
	//두번쨰 물음표에는 사용자가 입력한 content을 설정
	pstmt.setString(2,content);
	//세번째 물음표에서는 로그인할때의 입력한 id을 설정
	pstmt.setString(3,id);
	
	//위 SQL문장을 실행(workdench : ctrl+enter)
	// insert가 되었으면 1의 값을 result변수에 저장되고, insert가 되지 않았으면 0의 값을 result변수에 저장.
	int result=pstmt.executeUpdate();
	
	// executeQuery() :  select (select 된 결과를 ResultSet라는 공간에 저장해서 반환)
	// executeUpdate() :  insert,update,delete ()
	
	
    if(result!=0){
    	
    //insert가 되었으면 (글쓰기가 완료 되었으면) 게시판 목록 화면으로 이동
    	out.println("<script>");        
		out.println("location.href='boardlist.jsp'");
		out.println("</script>");
    }else{
    // 그렇지 않으면 메인 으로 이동
    	out.println("<script>");
		out.println("location.href='main.jsp'");
		out.println("</script>");
    }

}catch(Exception e){
	//System.out.println("DB연결 실패");
	e.printStackTrace();
}finally{
	conn.close();   // 메모리 관리 사용을 끝내면 닫아주기.
	pstmt.close();
}
%>     
</head>
<body>
     
</body>
</html>