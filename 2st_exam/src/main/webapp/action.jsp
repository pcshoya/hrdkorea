<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db_connect.jsp"%>
<%
	String major_code = null;
	String university_code = null;
	int sum = 1;
	Class.forName("oracle.jdbc.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	String regist_num = request.getParameter("regist_num");
	String name = request.getParameter("name");
	String university_name = request.getParameter("university_name");
	if(university_name=="서울대학교"){
		university_code = "U001";
	}else{
		university_code="U002";
	}
	String major_name = request.getParameter("major_name");
	if(major_name=="법학과"){
		major_code = "M001";
	}else{
		major_code = "M002";
	}
	String s_score = request.getParameter("s_score");
	String n_score = request.getParameter("n_score");
	try{
		String sql = "insert into tbl_apply values('"+regist_num+"','"+university_code+"','"+major_code+"','"+name+"','"+s_score+"','"+n_score+"','"+sum+"')";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.executeUpdate();
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<jsp:forward page="index.jsp"></jsp:forward>