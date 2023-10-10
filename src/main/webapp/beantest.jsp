<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%-- <%@ page import = "beans.Student" %> --%>

<jsp:useBean id="std" class="beans.Student" scope="page"/>
<jsp:setProperty name="std" property="*"/>

<!--getProperty은 setProperty처럼 property에 *을 사용 할 수 없고-->
<!-- 하나씩 getProperty해줘야 한다 -->
<%
	/* Student std = new Student(); */ 
	
	/* int h = Integer.parseInt(request.getParameter("id"));
	int y = Integer.parseInt(request.getParameter("year"));
	String n = request.getParameter("name");
	String e = request.getParameter("email");
	String p = request.getParameter("phone");
	String d = request.getParameter("dept"); */
	
	/* std.getHakbun(h); */
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<b>자바빈 사용 예제</b>
<h3>이름은 <%=std.getName() %> 이고</h3>
<h3>학번은 <jsp:getProperty name="std" property="hakbun"/> 이고</h3>
<h3>이메일 주소는 <%=std.getEmail() %> 이다</h3>

</body>
</html>