<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pagefile=request.getParameter("page");
	if(pagefile==null){pagefile="newitem";}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Template Test</title>
<!-- css reset -->
<link href="
https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css
" rel="stylesheet">

<style>
*{
	box-sizing: border-box;
}
#fullscreen{
	width: 100%;
	height: 100vh;
	
	padding:30px;
	
	background: #BEADFA;
}
header{
	text-align: center;
	border-radius: 10px;
	
	margin: 20px auto;
	padding:30px;
	
	background: #363062; 
	color: gray;
	
}

header .title{
	font-size: 30px;
	font-weight: bold;
	color: #F1B4BB;
}

header .usrloin{
	display: flex; justify-content: flex-end;
	flex-flow:row nowrap;
	
	font-weight: bold;
	color: #FFF8C9;
}

.side{
	display: flex; justify-content: center;
	flex-flow:column nowrap;
	
	width: 20%;
	padding:20px; margin: 20px;
	
	background: #1F4172;
	border-radius: 10px;
	
}

.main{
	display: flex; justify-content: center; align-items: center;

	margin: 20px auto;
	padding: 20px;
	background: white;
	width: 50%; height: 50vh;
	
	border-radius: 10px;
}

footer{
	margin: 80px auto;

}


</style>

<link href="../css/index.css" rel="stylesheet" type="text/css">
<!-- <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"> -->

</head>
<body>
<div id="fullscreen">
	<header>
		<div class=title>Soyoung's HomePage</div>
		<div class=usrloin><jsp:include page="top.jsp"/></div>
	</header>
	
	<div class="side">
		<jsp:include page="left.jsp"/>
	</div>
	
	<div class="main">
		<div class="content">
			<jsp:include page='<%=pagefile+".jsp" %>'/>
		</div>
	</div>
	
	<footer>
		<jsp:include page="bottom.jsp"/>
	</footer>
	
	<%-- <table>
		<tr>
			<td height="43" colspan=3 align=left>
				<jsp:include page="top.jsp"/>
			</td>
		</tr>
		<tr>
			<td width="15%" align=right valign=top><br>
				<jsp:include page="left.jsp"/>
			</td>
			<td colspan=2 align=center>
				<jsp:include page='<%=pagefile+".jsp" %>'/>
			</td>
		</tr>
		<tr>
			<td width="100%" height="40" colspan="3">
				<jsp:include page="bottom.jsp"/>
			</td>
		</tr>
	</table> --%>
	
</div>
</body>
</html>