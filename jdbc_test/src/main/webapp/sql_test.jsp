<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
Class.forName("oracle.jdbc.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");

// SQL 쿼리 실행
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