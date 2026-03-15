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
	<br/><h2 class="center">원서 접수 조회</h2><br/>
	<form style="margin-left: 20%;">
	<table border=1>
		<tr>
			<td style="min-width: 150px; text-align: center;"><b>이름</b></td>
			<td style="min-width: 150px; text-align: center;"><b>주민번호</b></td>
			<td style="min-width: 150px; text-align: center;"><b>학교</b></td>
			<td style="min-width: 150px; text-align: center;"><b>학과</b></td>
			<td style="min-width: 150px; text-align: center;"><b>수능점수</b></td>
			<td style="min-width: 150px; text-align: center;"><b>내신점수</b></td>
			<td style="min-width: 150px; text-align: center;"><b>총점</b></td>
			<td style="min-width: 150px; text-align: center;"><b>순위</b></td>
		</tr>
<%
	Class.forName("oracle.jdbc.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	String sql = "select name, regist_num, university_name, major_name, s_score, n_score, total_score from tbl_apply natural join tbl_university natural join tbl_major order by total_score desc";
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	int i=0;
	while(rs.next()){
		String regist_num = rs.getString(2);
		i+=1;
		int sum = rs.getInt(5)+rs.getInt(6);
%>
		<tr>
			<td style="min-width: 150px; text-align: center;"><%=rs.getString(1) %></td>
			<td style="min-width: 150px; text-align: center;"><%=regist_num.substring(0,6)+"-"+regist_num.substring(6,13) %></td>
			<td style="min-width: 150px; text-align: center;"><%=rs.getString(3) %></td>
			<td style="min-width: 150px; text-align: center;"><%=rs.getString(4) %></td>
			<td style="min-width: 150px; text-align: right;"><%=rs.getInt(5) %></td>
			<td style="min-width: 150px; text-align: right;"><%=rs.getInt(6) %></td>
			<td style="min-width: 150px; text-align: right;"><%=sum %></td>
			<td style="min-width: 150px; text-align: center;"><%=i %></td>
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