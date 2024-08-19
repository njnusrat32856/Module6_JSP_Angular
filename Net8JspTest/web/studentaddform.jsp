<%-- 
    Document   : studentaddform
    Created on : Aug 19, 2024, 11:59:38 PM
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
        <h1>Student Form</h1>

        <form action="savedata.jsp" method="post">
            
            
            Name: <input type="text" name="name"> <br>
            Email: <input type="email" name="email"> <br>
            Gender: <input type="radio" name="gender" value="Female"> Female
            <input type="radio" name="gender" value="Male"> Male <br>
            Subject: <select name="subject" id="subject">
                    <option value="">Please Select</option>
                        <option value="Java">Java</option>
                        <option value="C#">C#</option>
                        <option value="PHP">PHP</option>
                </select>
            
            <br>
            <input type="submit" value="Save">
            
            
            
      </form>
        
        <a href="home.jsp">Back to Home Page</a>


    </body>
</html>
