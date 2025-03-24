<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert</title>
</head>
<body>
<script type="text/javascript"> 
function addCheck() {
	if(document.frm.custname.value.length == 0) {
		alert("회원성명이 입력되지 않았습니다.") ;
		frm.custname.focus() ;
		return false;
	}
	
	else if(document.frm.phone.value.length == 0) {
		alert("회원전화가 입력되지 않았습니다.") ;
		frm.phone.focus() ;
		return false;
	}
	
	else if(document.frm.address.value.length == 0) {
		alert("회원주소가 입력되지 않았습니다.") ;
		frm.address.focus() ;
		return false;
	}
	
	else if(document.frm.joindate.value.length == 0) {
		alert("가입일자가 입력되지 않았습니다.") ;
		frm.joindate.focus() ;
		return false;
	}
	
	else if(document.frm.grade.value.length == 0) {
		alert("고객등급이 입력되지 않았습니다.") ;
		frm.grade.focus() ;
		return false;
	}
	
	else if(document.frm.city.value.length == 0) {
		alert("도시코드가 입력되지 않았습니다.") ;
		frm.city.focus() ;
		return false;
	}
	
	else
		alert("회원등록이 완료되었습니다!");
		document.frm.submit();
		return true;
}

function res(){
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	document.frm.reset();
}
</script>

<jsp:include page="header.jsp"></jsp:include>


<section style = " position: fixed ; top : 70px ; left: 0px; width: 100% ; height: 100% ; background-color: lightgray ">
<h2 style = " text-align: center"> <b>홈쇼핑 회원 등록</b> </h2> <br>

<form method = "post" action="i_action.jsp" name="frm" style=" display:flex; align-items: center; justify-content:center; text-align: center ">
<table border="1">

<% 
request.setCharacterEncoding("UTF-8");

try {
	String sql = "SELECT MAX(custno) + 1 custno FROM tbl_member_202205" ;
	PreparedStatement pstmt = conn.prepareStatement(sql); 
	ResultSet rs = pstmt.executeQuery(); 
	rs.next();
%>
	<tr>
		<td>회원번호(자동발생)</td>
		<td><input type="text" name="custno" value="<%=rs.getString(1) %>" readonly ></td>
	</tr>
	
	<tr>
		<td>회원성명</td>
		<td><input type="text" name="custname"></td>
	</tr>
	
	<tr>
		<td>회원전화</td>
		<td><input type="text" name="phone"></td>
	</tr>
	
	<tr>
		<td>회원주소</td>
		<td><input type="text" name="address"></td>
	</tr>
	
	<tr>
		<td>가입일자</td>
		<td><input type="text" name="joindate"></td>
	</tr>
	
	<tr>
		<td>고객등급[A:VIP.B:일반,C:직원]</td>
		<td><input type="text" name="grade"></td>
	</tr>
	
	<tr>
		<td>도시코드</td>
		<td><input type="text" name="city"></td>
	</tr>
	
	<tr>
		<td colspan="2">
		<input type="button" value="등록" onclick="addCheck()"> &nbsp;
		<input type="button" value="다시쓰기" onclick="res()">
		</td>
	</tr>
<%
}
catch(Exception e){
	e.printStackTrace();
}
%>
</table>

</form>

</section>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>