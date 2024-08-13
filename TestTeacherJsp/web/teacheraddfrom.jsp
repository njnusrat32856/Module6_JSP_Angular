<%-- 
    Document   : teacheraddfrom
    Created on : Aug 13, 2024, 3:49:49 PM
    Author     : Admin
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Teacher Form</h1>

        <form action="savedata.jsp" method="post">
            
            
            Name: <input type="text" name="name"> <br>
            
            Department: <select name="dept" id="dept">
                    <option value="">Please Select</option>
                    <option value="Finance">Finance</option>
                    <option value="Accounting">Accounting</option>
                    <option value="Marketing">Marketing</option>
                </select>
            
            <br><!-- comment -->
            
            Gender: <input type="radio" name="gender" value="Female"> Female
            <input type="radio" name="gender" value="Male"> Male <br>
            
            
            <br>
            <input type="submit" value="Save">
            
            
            
      </form>


    </body>
</html>
