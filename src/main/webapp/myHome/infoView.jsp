<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 관리 페이지</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		
		// 데이터 베이스 연결 요청
		Connection con = null;
		String url = "jdbc:mysql://localhost:3306/myweb";
		String driver = "com.mysql.jdbc.Driver";
		String sql = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String id = (String)session.getAttribute("id");
		
		try{
			
			Class.forName(driver);
			con = DriverManager.getConnection(url, "root", "1234");
			sql="select * from member where id=?"; // 주어진 아이디와 일치하는것을 가져와
			//이 결과값이 rs가 가리킴, rs.next로 다음 값을 가리킬 수 있음
			ps = con.prepareStatement(sql); // sql연결 객체
			ps.setString(1, id);
			
			rs = ps.executeQuery(); //테이블에 변화가 생길 때는 update로 가져오기
			rs.next(); // 회원정보 읽기
	
		// 오류가	 나면 처리하는 블록
		}catch(SQLException e){
			
			e.printStackTrace();
		}
	%>
	
	<form action="updatePro.jsp" method="post">
	  
		아이디: 
		<input type="text" name="id" value=<%=rs.getString("id") %> readonly /><br>
		비밀번호: 
		<input type="password" name="password" value=<%=rs.getString("password") %> /><br>
		이름: 
		<input type="text" name="name" value=<%=rs.getString("name") %> /><br>
		나이: 
		<input type="number" name="age" value=<%=rs.getInt("age") %> /><br>
		성별: 
		<%
			if(rs.getString("gender").equals("남자")){
			
		%>
		<input type="radio" name="gender" value="남자" checked />남성
		<input type="radio" name="gender" value="여자" />여성<br>
		<%
			}else{
		%>
		<input type="radio" name="gender" value="남자" />남성
		<input type="radio" name="gender" value="여자" checked />여성<br>
		<%
			}
		%>
		이메일: 
		<input type="text" name="email" value=<%=rs.getString("email") %> /><br>
		
		<input type="submit" value="회원정보 수정"/> 
		<input type="button" value="회원 탈퇴" onClick="location.href='delete.jsp'" />
		
	</form> 
	
</body>
</html>