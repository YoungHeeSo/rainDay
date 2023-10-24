<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Connection con = null;
	String url = "jdbc:mysql://localhost:3306/myweb";
	String driver = "com.mysql.jdbc.Driver";
	
	try{
		Class.forName(driver);
		con = DriverManager.getConnection(url, "root", "1234");
		System.out.println("연결 성공");
		
	}catch(Exception e){
		System.out.println("연결 실패");
		e.printStackTrace();
		
	}
%>


</body>
</html>