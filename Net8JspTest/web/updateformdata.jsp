<%-- 
    Document   : updateformdata
    Created on : Aug 19, 2024, 11:57:47 PM
    Author     : Naima
--%>

<%@page import="model.Student" %>
<%@page import="dao.StudentDao" %>

<%
    String id =request.getParameter("id");
    Student e =StudentDao.getById(Integer.parseInt(id));
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
            <input type="hidden" name="id" value="<%=e.getId() %>"/>
            
            Name: <input type="text" name="name" value="<%=e.getName() %>"/> <br>
            Email: <input type="email" name="email" value="<%=e.getEmail() %>"/> <br>
            Gender: <input type="radio" name="gender" value="Female" <%= "Female".equals(e.getGender()) ? "checked" : "" %> /> Female
            <input type="radio" name="gender" value="Male" <%= "Male".equals(e.getGender()) ? "checked" : "" %> /> Male <br>
            Subject: <select name="subject" id="subject" >
                        <option value="">Please Select</option>
                        <option value="Java" <%= "Java".equals(e.getSubject()) ? "selected" : "" %>>Java</option>
                        <option value="C#" <%= "C#".equals(e.getSubject()) ? "selected" : "" %>>C#</option>
                        <option value="PHP" <%= "PHP".equals(e.getSubject()) ? "selected" : "" %>>PHP</option>
                    </select>
            
                    
                    

            
            <br>
            <input style="background-color: red" type="submit" value="Update">
            
        </form>
    </body>
</html>