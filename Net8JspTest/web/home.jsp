<%-- 
    Document   : home
    Created on : Aug 19, 2024, 11:40:24 PM
    Author     : Naima
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="text-align: center">Welcome World!</h1>
        
        <%= new java.util.Date() %>
        <br><!-- comment -->
        <a href="studentaddform.jsp">Add Student</a>
        <br><!-- comment -->
        
        <a href="viewalldata.jsp">View Student</a>
    </body>
</html>
