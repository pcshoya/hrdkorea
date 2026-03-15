<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
<%@ page import="java.sql.*" %>
<%
Connection conn=null;
try{

//DB연결 문자열
//jdbc:oracle:thin:@호스트:포트:sid
String jdbcUrl="jdbc:oracle:thin:@localhost:1521:xe";

String dbId="system"; //오라클 접속 아이디

String dbPass="1234"; // 비밀번호

//jdbc driver 로딩
Class.forName("oracle.jdbc.driver.OracleDriver");

// getConnection(연결문자열,아이디,비번) DB에 접속
conn=DriverManager.getConnection(jdbcUrl, dbId, dbPass);

out.println("<h2>오라클에 접속되었습니다.</h2>");

}catch(Exception e){
out.println("오라클 접속 에러...");
e.printStackTrace();
}

//SQL 쿼리 실행
Statement stmt = null;
ResultSet rs = null;
try {
 stmt = conn.createStatement();
 String sql = "SELECT * FROM MEMBER_TBL_02"; // MEMBER_TBL_02 테이블에서 모든 데이터를 가져오는 쿼리
 rs = stmt.executeQuery(sql);

 // 결과 출력
 out.println("<table>");
 out.println("<tr><th>CUSTNO</th><th>CUSTNAME</th></tr>");
 while (rs.next()) {
     out.println("<tr>");
     out.println("<td>" + rs.getInt("CUSTNO") + "</td>");
     out.println("<td>" + rs.getString("CUSTNAME") + "</td>");
     out.println("</tr>");
 }
 out.println("</table>");

} catch (SQLException e) {
 out.println("SQL Query failed: " + e.getMessage());
} finally {
 // 자원 해제
 try {
     if (rs != null) rs.close();
     if (stmt != null) stmt.close();
     if (conn != null) conn.close();
 } catch (SQLException e) {}
}
%>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>