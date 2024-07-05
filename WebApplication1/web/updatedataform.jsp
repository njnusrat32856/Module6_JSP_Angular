<%-- 
    Document   : updatedataform
    Created on : Jul 4, 2024, 10:42:54 AM
    Author     : Dell New
--%>
<%@page import="model.Employee" %>
<%@page import="dao.EmployeeDao" %>

<%
    String id =request.getParameter("id");
    Employee e =EmployeeDao.getById(Integer.parseInt(id));
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Employee Update Form</h1>
        
        <form action="updatedata.jsp" method="post">
            <input type="hidden" name="id" value="<%=e.getId() %>">
            
            Name: <input type="text" name="name" value="<%=e.getName() %>"> <br>
            Email: <input type="email" name="email" value="<%=e.getEmail() %>"> <br>
            Address: <input type="text" name="address" value="<%=e.getAddress() %>"> <br>
            Mobile No: <input type="number" name="mobile" value="<%=e.getMobile() %>"> <br>
            Department: <input type="text" name="dept" value="<%=e.getDept() %>"> <br>
            
            <br>
            <input style="background-color: red" type="submit" value="Update">
            
        </form>
    </body>
</html>
