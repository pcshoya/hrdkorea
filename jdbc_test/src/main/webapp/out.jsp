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
<h2 style="text-align:center">차량출차</h2>
<form style="align:center">
<table border="1">
	<tr>
		<td>차량번호</td>
		<td>
			<select>
				<option>00가0001</option>
				<option>00가0002</option>
				<option>00가0003</option>								
			</select>
		</td>
	</tr>
	<tr>
		<td>소유자이름</td>
		<td><input type="text"></td>
	</tr>
		<tr>
		<td>출차시간</td>
		<td><input type="text">예) 22:22</td>
	</tr>
		<tr>
		<td colspan="2">
			<input type="button" value="출차등록">
			<input type="button" value="다시쓰기">			
		</td>
	</tr>	
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>