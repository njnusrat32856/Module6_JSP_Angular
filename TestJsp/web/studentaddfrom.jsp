<%-- 
    Document   : studentaddfrom
    Created on : Aug 12, 2024, 3:40:29 PM
    Author     : Admin
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

        <form action="savedata.jsp" method="post">
            
            
            Name: <input type="text" name="name"> <br>
            Email: <input type="email" name="email"> <br>
            Gender: <input type="radio" name="gender" value="Female"> Female
            <input type="radio" name="gender" value="Male"> Male <br>
            Subject: <select name="subject" id="subject">
                    <option value="">Please Select</option>
                    <option value="Java">Java</option>
                    <option value="NT">NT</option>
                    <option value="PHP">PHP</option>
                </select>
            
            <br>
            <input type="submit" value="Save">
            
            
            
      </form>


    </body>
</html>
