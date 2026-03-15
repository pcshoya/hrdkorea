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
<h2 style="text-align:center">차량조회</h2>
<form>
<table border="1" align="center">
		<tr>
		<td>차량번호를 입력하세요.</td>
		<td><input type="text"></td>
	</tr>
		<tr>
		<td colspan="2">
			<input type="button" value="차량조회">
			<input type="button" value="홈으로">			
		</td>
	</tr>	
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>