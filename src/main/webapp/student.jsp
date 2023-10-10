<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="beantest.jsp" method="post"> 
		학번: <input type="text" name="hakbun"/><br>
		학년: <input type="text" name="year"/><br>
		이름: <input type="text" name="name"/><br>
		이메일: <input type="email" name="email"/><br>
		전화번호: <input type="text" name="phone"/><br>
		학과: <input type="text" name="dept"/><br>
		<input type="submit" value="로그인"/> 
		<input type="reset" value="취소"/>
	</form> 

</body>
</html>