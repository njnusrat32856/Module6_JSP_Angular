<%-- 
    Document   : home
    Created on : Aug 12, 2024, 3:21:59 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test JSP</title>
    </head>
    <body>
        <h1 style="text-align: center">Welcome World!</h1>
        
        <%= new java.util.Date() %>
        <br><!-- comment -->
        <a href="studentaddfrom.jsp">Add Student</a>
        <br><!-- comment -->
        
        <a href="viewalldata.jsp">View Student</a>
    </body>
</html>
