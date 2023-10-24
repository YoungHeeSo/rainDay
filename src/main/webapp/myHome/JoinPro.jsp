<%@page import="beans.member"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%request.setCharacterEncoding("UTF-8");%>
	<jsp:useBean id="m" class="beans.member"/>
	
	<jsp:setProperty property="*" name="m"/>
	이름은 <jsp:getProperty property="name" name="m"/>
	<%
		Connection con = null;
		String url = "jdbc:mysql://localhost:3306/myweb";
		String driver = "com.mysql.jdbc.Driver";
		String sql = null;
		PreparedStatement ps = null;
		
		
		try{
			Class.forName(driver);
			con = DriverManager.getConnection(url, "root", "1234");
			
			sql = "insert into member values(?,?,?,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, m.getId());
			ps.setString(2, m.getPassword());
			ps.setString(3, m.getName());
			ps.setInt(4, m.getAge());
			ps.setString(5, m.getGender());
			ps.setString(6, m.getEmail());
			
			int insert = ps.executeUpdate(); // 업데이트가 되었다면 한명인 1, 오류라면 0
			
			if(insert == 1)
				response.sendRedirect("index.jsp"); //메인 페이지 주소 이름 설정 index
			else{
				%>
				<script>
					history.go(-1);
				</script>
				<%
			}
			
			System.out.println("연결 성공");
			
		}catch(Exception e){
			System.out.println("연결 실패");
			e.printStackTrace();
			
		}
	%>
</body>
</html>