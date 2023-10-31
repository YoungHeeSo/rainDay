<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 프롬프트 -->

<%
		String id = (String)session.getAttribute("id");
		
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
			sql="delete from member where id=?"; 
			//이 결과값이 rs가 가리킴, rs.next로 다음 값을 가리킬 수 있음
			ps = con.prepareStatement(sql); // sql연결 객체
			
			ps.setString(1, id);
			int a = ps.executeUpdate(); //테이블에 변화가 생길 때는 update로 가져오기
			
			if(a==1){
				out.println("<script>");
				out.println("alert('탈퇴 되었습니다')");
				session.invalidate(); //회원정보 삭제
				out.println("location.href='index.jsp'");
				out.println("</script>");
			}
	
		// 오류가	 나면 처리하는 블록
		}catch(SQLException e){
			
			e.printStackTrace();
		}

	%>

</body>
</html>