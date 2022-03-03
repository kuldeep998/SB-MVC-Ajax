<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String getSession = (String) session.getAttribute("SessionUser");
out.println(getSession);
%>

<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<p>
		Session Value is <b id="idsession"></b>
	</p>
</body>
<script>
var value="<%=getSession%>";
	$("#idsession").html(value);
</script>
</html>