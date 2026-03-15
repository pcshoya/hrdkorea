<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section style="position:fixed;height:100%;width:100%;background-color:lightgray;top:100px;left:0px">
<h2 style="text-align:center">차량입차</h2>
<table border="1">
	<tr>
		<td>차량번호</td>
		<td><input type="text">예) 2가 1111</td>
	</tr>
	<tr>
		<td>소유자이름</td>
		<td><input type="text">예) 박선수</td>
	</tr>
		<tr>
		<td>주차위치선택</td>
		<td>
			<input type="checkbox">A001			
			<input type="checkbox">A002
			<input type="checkbox">A003			
			<input type="checkbox">A004
			<input type="checkbox">A005												
		</td>
	</tr>
		<tr>
		<td>입차시간</td>
		<td><input type="text">예) 22:22</td>
	</tr>
		<tr>
		<td colspan="2">
			<input type="button" value="입차등록">
			<input type="button" value="다시쓰기">			
		</td>
	</tr>	
</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>