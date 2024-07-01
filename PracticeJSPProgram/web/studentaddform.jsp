<%-- 
    Document   : studentaddform
    Created on : Jul 1, 2024, 10:58:06 AM
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
        <h1>Student Form</h1>
        
        <form action="savestudent.jsp" method="post">
            Name: <input type="text" name="name"> <br>
            Email: <input type="text" name="email"> <br>
            Address: <input type="text" name="address"> <br>
            Cell No: <input type="text" name="cellNo"> <br>
            
            <br>
            <input type="submit" value="Save">
            
        </form>
        
    </body>
</html>
