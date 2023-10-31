<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="beans.member"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pass =  request.getParameter("password");
		
		// 데이터 베이스 연결 요청
		Connection con = null;
		String url = "jdbc:mysql://localhost:3306/myweb";
		String driver = "com.mysql.jdbc.Driver";
		String sql = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		
		try{
			
			Class.forName(driver);
			con = DriverManager.getConnection(url, "root", "1234");
			sql="select * from member where id=? && password=?"; 
			//이 결과값이 rs가 가리킴, rs.next로 다음 값을 가리킬 수 있음
			ps = con.prepareStatement(sql); // sql연결 객체
			
			ps.setString(1, id);
			ps.setString(2, pass);
			rs = ps.executeQuery(); //테이블에 변화가 생길 때는 update로 가져오기
			
			if(rs.next()){ // 회원정보 읽기
				session.setAttribute("id", id);
				session.setAttribute("name", rs.getString("name"));
				
				out.print("<script>");
				out.print("location.href='index.jsp'");
				out.print("</script>");
			}
			
			out.print("<script>");
			out.print("alert('로그인 정보가 일치 하지 않습니다')");
			out.print("history.go(-1)");
			out.print("</script>");
			
			rs.next();
			out.println(rs.getString("password")); //rs가 가지고 있는 값중에 password가져와
			
			int insert = ps.executeUpdate(); // 업데이트가 되었다면 한명인 1, 오류라면 0
	
		// 오류가	 나면 처리하는 블록
		}catch(SQLException e){
			
			e.printStackTrace();
		}
			

	%>
</body>
</html>