<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 
 	String id = (String)session.getAttribute("id");
 	String name = (String)session.getAttribute("name");
 	
 	if(id==null){
 %>
 	<div class="top">
 		<a href=index.jsp?page=login>Login</a>
		<a href=index.jsp?page=Join>Join</a>
 	</div>
 	
<%
 	}else{
%>

	<div class="top">
		<%= name %>님
		<a href=index.jsp?page=infoView>Mypage</a>
		<a href="logout.jsp">Logout</a>
	</div>
	
<%
 	}
%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.top a {
	/* display: flex; 
	flex-flow:row nowrap; */

	text-decoration-line: none;
	
	font-weight: bold;
	font-size: 20px;
	color: #FF8080;
	
	padding: 10px;
	
}


</style>
</head>
<body>
<!-- <div class="top">
	<a href=index.jsp?page=login>Login</a>
	<a href=index.jsp?page=Join>Join</a>
</div> -->
</body>
</html>