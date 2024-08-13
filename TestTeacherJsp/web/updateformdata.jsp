<%-- 
    Document   : updateformdata
    Created on : Aug 13, 2024, 4:13:02 PM
    Author     : Admin
--%>

<%@page import="model.Teacher" %>
<%@page import="dao.TeacherDao" %>

<%
    String id =request.getParameter("id");
    Teacher e =TeacherDao.getById(Integer.parseInt(id));
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Teacher Update Form</h1>
        
        <form action="updatedata.jsp" method="post">
            <input type="hidden" name="id" value="<%=e.getId() %>">
            
            Name: <input type="text" name="name" value="<%=e.getName() %>"> <br>
            
            Department: <select name="dept" id="dept">
                    <option value="">Please Select</option>
                    <option value="Finance" <%= "Finance".equals(e.getDept()) ? "selected" : "" %> />Finance</option>
                    <option value="Accounting" <%= "Accounting".equals(e.getDept()) ? "selected" : "" %> />Accounting</option>
                    <option value="Marketing" <%= "Marketing".equals(e.getDept()) ? "selected" : "" %> />Marketing</option>
                </select>
            
            
            <br>
            Gender: <input type="radio" name="gender" value="Female" <%= "Female".equals(e.getGender()) ? "checked" : "" %> > Female
            <input type="radio" name="gender" value="Male" <%= "Male".equals(e.getGender()) ? "checked" : "" %>> Male
            
            
                    
                    

            
            <br>
            <input style="background-color: red" type="submit" value="Update">
            
        </form>
    </body>
</html>
