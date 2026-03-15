<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db_connect.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<section>
<br/>
	<h2 class="center">대학 조회</h2><br/>
	<form  style="padding-left: 35%; margin-left: 50px;">
	<table border=1 class="center">
		<tr>
			<td style="min-width: 150px;">대학 코드</td>
			<td style="min-width: 150px;">학교명</td>
			<td style="min-width: 150px;">전화번호</td>
		</tr>
<%
	Class.forName("oracle.jdbc.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	String sql = "select * from tbl_university";
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	while(rs.next()){
		String phone_number = rs.getString(3);
%>
		<tr>
			<td style="min-width: 150px;"><%=rs.getString(1) %></td>
			<td style="min-width: 150px;"><%=rs.getString(2) %></td>
			<td style="min-width: 150px;"><%=phone_number.substring(0,3)+"-"+phone_number.substring(3,7)+"-"+phone_number.substring(7,11) %></td>
		</tr>
<%
	}
%>
	</table>
	</form>
</section>

<jsp:include page="db_connect.jsp"></jsp:include>
</body>
</html>