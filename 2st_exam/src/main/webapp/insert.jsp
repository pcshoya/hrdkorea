<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db_connect.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<section>
<%
	Class.forName("oracle.jdbc.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	String sql = "select university_name, university_code from tbl_university";
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();	
%>
	<br/>
	<h2 class="center">원서 등록</h2>
	<br/>
	<form name="frm" action="action.jsp" style="padding-left: 38%;">
		<table border=1>
			<tr >
				<td class="center" style="min-width: 150px;">주민 번호</td>
				<td class="left" style="min-width: 300px;"><input type="text" name="regist_num" style="max-width: 150px;">예)0211113000011</td>
			</tr>
			
			<tr>
				<td class="center" style="min-width: 150px;">이름</td>
				<td class="left" style="min-width: 300px;"><input type="text" name="name" style="max-width: 150px;"></td>
			</tr>
			
			<tr>
				<td class="center" style="min-width: 150px;">학교</td>
				<td>
					<select name="university_name" style="min-width: 170px;">
						<option value="" selected>학교</option>
<%
	while(rs.next()){
		String list = "["+rs.getString(2)+"]"+rs.getString(1);
%>
						<option value=<%=rs.getString(1) %>><%=list %></option>	
<%
	}
%>
					</select>
				</td>
			</tr>
			
			<tr>
				<td class="center" style="min-width: 150px;">학과</td>
				<td>
					<select name="major_name" style="min-width: 170px;">
						<option value="" selected>학과</option>
<%
	Class.forName("oracle.jdbc.OracleDriver");
	Connection con1 = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	String sql1 = "select major_code, major_name from tbl_major";
	PreparedStatement pstmt1 = con.prepareStatement(sql1);
	ResultSet rs1 = pstmt1.executeQuery();
	while(rs1.next()){
		String list1 = "["+rs1.getString(1)+"]"+rs1.getString(2);
%>
						<option value=<%=list1 %>><%=list1 %></option>
<%
	}
%>
					</select>
				</td>
			</tr>
			
			<tr>
				<td class="center" style="min-width: 150px;">수능 점수</td>
				<td class="left" style="min-width: 300px;"><input type="text" name="s_score" style="max-width: 150px;">0~100</td>
			</tr>
			<tr>
				<td class="center" style="min-width: 150px;">내신 점수</td>
				<td class="left" style="min-width: 300px;"><input type="text" name="n_score" style="max-width: 150px;">0~100</td>
			</tr>
			
			<tr>
				<td colspan=2 class="center">
					<button type="submit" onclick="return check()">등록</button>
					<button type="reset" onclick="rewrite()">다시쓰기</button>
				</td>
			</tr>
		</table>
	</form>
</section>
<script type="text/javascript">
function check() {
	if(!frm.regist_num.value){
		alert("주민번호가 입력되지 않았습니다!");
		frm.regist_num.focus();
		return false;
	}
	if(!frm.name.value){
		alert("이름이 입력되지 않았습니다!");
		frm.name.focus();
		return false;
	}
	if(!frm.university_name.value){
		alert("학교가 선택되지 않았습니다!");
		frm.university_name.focus();
		return false;
	}
	if(!frm.major_name.value){
		alert("학과가 선택되지 않았습니다!");
		frm.major_name.focus();
		return false;
	}
	if(!frm.s_score.value){
		alert("수능 점수가 입력되지 않았습니다!");
		frm.s_score.focus();
		return false;
	}
	if(!frm.n_score.value){
		alert("내신 점수가 입력되지 않았습니다!");
		frm.n_score.focus();
		return false;
	}
	alert("지원 내역이 정상적으로 등록 되었습니다!");
	return true;
}

function rewrite() {
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	frm.regist_num.focus();
}
</script>
<jsp:include page="db_connect.jsp"></jsp:include>
</body>
</html>