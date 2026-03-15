<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>JSP with Oracle DB</title>
</head>
<body>
    <h2>Oracle DB 접속 테스트</h2>

    <%
    // JDBC 드라이버 로드
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
    } catch (ClassNotFoundException e) {
        out.println("Oracle JDBC Driver not found: " + e.getMessage());
        return;
    }

    // DB 연결 정보 설정
    String url = "jdbc:oracle:thin:@localhost:1521:XE"; // XE 대신 실제 DB URL을 입력
    String user = "system"; // 실제 DB 사용자 ID를 입력
    String password = "1234"; // 실제 DB 비밀번호를 입력

    // DB 연결 객체 생성
    Connection conn = null;
    try {
        conn = DriverManager.getConnection(url, user, password);
        out.println("접속에 성공했습니다.");        
    } catch (SQLException e) {
        out.println("DB Connection failed: " + e.getMessage());
        return;
    }
    %>
</body>
</html>