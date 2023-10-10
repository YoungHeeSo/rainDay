<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="dogPro" method="post">	
		<!--checkbox는 여러개 값을 보내므로 배열 형태 값으로 데이터가 보내진다
		value 값을 전달한다-->
		
		<input type="checkbox" name="dog" value="pu.jpg"> 푸들 <br>
		<input type="checkbox" name="dog" value="jin.jpg"> 진돗개<br>
		<input type="checkbox" name="dog" value="pung.jpg"> 풍산개<br>
		<input type="checkbox" name="dog" value="sap.jpg"> 삽살개<br>
		<input type="submit" value="선택"/>
	</form>
</body>
</html>