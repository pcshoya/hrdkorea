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
<%
	int s_unv = 0;
	float s_sum = 0;
	int k_unv = 0;
	float k_sum = 0;
	int count = 0;
	Class.forName("oracle.jdbc.OracleDriver");
	Connection con_s = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	String sql_s = "select total_score from tbl_apply natural join tbl_university where university_name='서울대학교'";
	PreparedStatement pstmt_s = con_s.prepareStatement(sql_s);
	ResultSet rs_s = pstmt_s.executeQuery();
	while(rs_s.next()){
		s_unv+=1;
		s_sum += rs_s.getInt(1);
	}
	Class.forName("oracle.jdbc.OracleDriver");
	Connection con_k = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	String sql_k = "select total_score from tbl_apply natural join tbl_university where university_name='경기대학교'";
	PreparedStatement pstmt_k = con_s.prepareStatement(sql_k);
	ResultSet rs_k = pstmt_k.executeQuery();
	while(rs_k.next()){
		k_unv+=1;
		k_sum += rs_k.getInt(1);
		
	}
%>

	<br/>
	<h2 class="center">학교별 통계</h2>
	<br/>
	<form style="padding-left: 30%; margin-left: 67px;" class="center">
	<table border=1>
		<tr>
			<td style="min-width: 150px; text-align: center;">학교코드</td>
			<td style="min-width: 150px; text-align: center;">학교명</td>
			<td style="min-width: 150px; text-align: center;">지원 인원</td>
			<td style="min-width: 150px; text-align: center;">총합 평균</td>
		</tr>
<%
	Class.forName("oracle.jdbc.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	String sql = "select university_code, university_name from tbl_university";
	PreparedStatement pstmt = con_s.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	while(rs.next()){
%>
		<tr>
			<td style="min-width: 150px; text-align: center;"><%=rs.getString(1) %></td>
			<td style="min-width: 150px; text-align: center;"><%=rs.getString(2) %></td>
			<td style="min-width: 150px; text-align: center;"><%=count==0?s_unv:k_unv %></td>
			<td style="min-width: 150px; text-align: right;"><%=count==0?String.format("%.1f", (s_sum/s_unv)):String.format("%.1f", (k_sum/k_unv)) %></td>
		</tr>
<%
		count+=1;
	}
%>
	</table>
</form>
</section>
<jsp:include page="db_connect.jsp"></jsp:include>
</body>
</html>