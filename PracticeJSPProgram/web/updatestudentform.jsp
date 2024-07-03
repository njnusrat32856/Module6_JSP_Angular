<%-- 
    Document   : updatestudentform
    Created on : Jul 3, 2024, 10:11:36 AM
    Author     : Dell New
--%>
<%@page import="model.Student" %>
<%@page import="dao.StudentDao" %>

<%
    String id = request.getParameter("id");
    Student s = StudentDao.getById(Integer.parseInt(id));

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Student Update Form</h1>
        
        <form action="updatestudent.jsp" method="post">
            
            <input type="hidden" name="id" value="<%=s.getId()%>">
            
            Name: <input type="text" name="name" value="<%=s.getName()%>"> <br>
            Email: <input type="text" name="email" value="<%=s.getEmail()%>"> <br>
            Address: <input type="text" name="address" value="<%=s.getAddress()%>"> <br>
            Cell No: <input type="text" name="cellNo" value="<%=s.getCellNo()%>"> <br>
            
            <br>
            <input type="submit" value="Save">
            
        </form>
        
    </body>
</html>