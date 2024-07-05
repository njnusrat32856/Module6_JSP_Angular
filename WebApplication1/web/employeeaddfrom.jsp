<%-- 
    Document   : employeeaddfrom
    Created on : Jul 3, 2024, 12:07:42 PM
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
        <h1>Employee Form</h1>
        
        <form action="savedata.jsp" method="post">
            Name: <input type="text" name="name"> <br>
            Email: <input type="email" name="email"> <br>
            Address: <input type="text" name="address"> <br>
            Mobile No: <input type="number" name="mobile"> <br>
            Department: <input type="text" name="dept"> <br>
            
            <br>
            <input type="submit" value="Save">
            
        </form>
    </body>
</html>
