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
String ageStr = request.getParameter("age");

try {
    int age = Integer.parseInt(ageStr);
    out.println("나이: " + age);
} catch (NumberFormatException e) {
    out.println("숫자만 입력해주세요.");
}
%>
</body>
</html>