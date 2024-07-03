<%-- 
    Document   : updatestudent
    Created on : Jul 3, 2024, 10:24:55 AM
    Author     : Dell New
--%>

<jsp:useBean class="model.Student" id="s"/>

<%@page import="dao.StudentDao" %>

<jsp:setProperty name="s" property="*" />

<%
    StudentDao.updateStudent(s);
    
    
    response.sendRedirect("success.jsp");
    

%>