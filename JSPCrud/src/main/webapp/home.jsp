<jsp:include page="header.jsp"></jsp:include>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: black; color: white;">
	<div class="container">
		<h1>Welcome to Eclipse!</h1>
		<p><%=new java.util.Date()%></p>
		<h4>First class of Eclipse</h4>
		<a href="viewallstudent.jsp">View All Data</a>
	</div>

</body>
</html>
<jsp:include page="footer.jsp"></jsp:include>