<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	 <form action="JoinPro.jsp" method="post">
	  
		이름: 
		<input type="text" name="name"/><br>
		나이: 
		<input type="number" name="age"/><br>
		아이디: 
		<input type="text" name="id"/><br>
		비밀번호: 
		<input type="password" name="password"/><br>
		이메일: 
		<input type="text" name="email"/><br>
		성별: 
		<input type="radio" name="gender" value="남자"/>남성
		<input type="radio" name="gender" value="여자" checked/>여성<br>
		
		<input type="submit" value="가입"/> <input type="reset" value="취소"/>
		
	</form> 
</body>
</html>