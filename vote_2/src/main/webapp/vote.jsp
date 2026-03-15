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
			left:0px;
			top:100px;
			text-align:center;
			line-height:70px;
		}
		table{
			border:1px solid;
			margin:auto;
		}
		tr, td{
			border:1px solid;
			text-align:left;
			height:10px;
		}
		select{
			width:300px;
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
					<input type="text">예 8906153154726
				</td>
			</tr>
			<tr>
				<td>
					성명
				</td>
				<td>
					<input type="text">
				</td>
			</tr>
			<tr>
				<td>
					투표번호
				</td>
				<td>
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
				<td>
					<input type="text">				
				</td>
			</tr>
			<tr>
				<td>
					투표장소
				</td>
				<td>
					<input type="text">				
				</td>
			</tr>
			<tr>
				<td>
					유권자 확인
				</td>
				<td>
					<input type="radio" name="select">확인
					<label><input type="radio" name="select"> 미확인</label>
				</td>
			</tr>
			<tr>
				<td>
				</td>
				<td>
				</td>
			</tr>										
												
		</table>
	</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>