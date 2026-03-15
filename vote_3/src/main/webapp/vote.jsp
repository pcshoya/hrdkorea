<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<style>
		section{
			position:fixed;
			height:100%;
			width:100%;
			background-color:lightgray;
			top:100px;
			left:0px;
			text-align:center;
		}
		table, td, tr, td{
			border:1px solid black;
			border-collapse: collapse;			
			margin:auto;
		}
		.td_2{
			text-align:left;
		}
	</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h2>투표하기</h2>
		<table>
			<tr>
				<td>
					주민번호
				</td>
				<td>
					<input type="text"> 예) 890615-3154726
				</td>
			</tr>
			<tr>
				<td>
					성명
				</td>
				<td class="td_2">
					<input type="text">
				</td>
			</tr>
			<tr>
				<td>
					투표번호
				</td>
				<td class="td_2">
					<select>
						<option>0001</option>
						<option>0002</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					투표시간
				</td>
				<td class="td_2">
					<input type="text">
				</td>
			</tr>
			<tr>
				<td>
					투표장소
				</td>
				<td class="td_2">
					<input type="text">
				</td>
			</tr>
			<tr>
				<td>
					유권자 확인
				</td>
				<td class="td_2">
					<input type="radio" name="select"> 확인
					<input type="radio" name="select"> 미확인
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="투표하기">
					<input type="button" value="다시하기">
				</td>				
			</tr>																		
		</table>
	</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>