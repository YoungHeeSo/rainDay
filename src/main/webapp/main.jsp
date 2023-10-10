<%@page import="java.util.stream.DoubleStream.DoubleMapMultiConsumer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>길동이의 홈페이지</h1><hr>
<% 
	String id = (String) session.getAttribute("session_id"); 
	String name= (String) session.getAttribute("session_name");
	if(id==null){	
%>
	<a href="login.jsp">로그인</a>

<%  } 
	else{ 
%>
		<b><%=id%></b>로 로그인 되었습니다. <b><%=name %></b>님 환영합니다.
	
<% } %>


</body>
</html>