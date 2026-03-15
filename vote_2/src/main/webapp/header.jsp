<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<style>
		header{
			position:fixed;
			height:70px;
			width:100%;
			background-color:#03c75a;
			left:0px;
			top:0px;
			text-align:center;
			font-size:25px;
			line-height:70px;
		}
		nav{
			position:fixed;
			height:30px;
			width:100%;
			background-color:pink;
			left:0px;
			top:70px;
			text-align:left;
			font-size:14px;			
			line-height:30px;		
		}
	</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
		<b>지역구의원투표 프로그램 ver 2020-05</b>
	</header>
	<nav>
		<a href="search.jsp">후보조회</a>&nbsp;
		<a href="vote.jsp">투표하기</a>&nbsp;
		<a href="vote_serch.jsp">투표수조회</a>&nbsp;
		<a href="insert.jsp">후보자등록</a>&nbsp;	
		<a href="index.jsp">홈으로</a>&nbsp;					
	</nav>
</body>
</html>