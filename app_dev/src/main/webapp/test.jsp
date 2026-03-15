<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String ageStr = request.getParameter("age");   // 사용자가 입력한 age 값 받기 (문자열)
int age = Integer.parseInt(ageStr);            // 문자열을 정수로 변환 (숫자 아니면 예외 발생)
out.println("나이: " + age);                    // 결과 출력
%>
</body>
</html>