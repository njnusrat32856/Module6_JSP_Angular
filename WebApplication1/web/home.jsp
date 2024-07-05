<%-- 
    Document   : home
    Created on : Jul 3, 2024, 11:21:27 AM
    Author     : Dell New
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="text-align: center">Welcome to JSP Web Application!</h1>
        <h2><%= new java.util.Date() %></h2>
        <a href="employeeaddfrom.jsp">Add Employee Data</a>
        <br>
        <a href="viewalldata.jsp">Employee Details</a>
    </body>
</html>
