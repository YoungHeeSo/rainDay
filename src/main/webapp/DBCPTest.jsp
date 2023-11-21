<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.Context" %>

<%
    Connection con =null;
    try{
        Context init = new InitialContext();
        DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/MySQLDB");
        con = ds.getConnection();
        out.println("<h3>연결 되었습니다</h3>");
    }catch (Exception e){
        out.println("<h3>연결 실패했습니다</h3>");
        e.printStackTrace();
    }
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>jsp study</title>
</head>
<body>

</body>
</html>