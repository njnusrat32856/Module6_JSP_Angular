<%-- 
    Document   : updatedata
    Created on : Jul 4, 2024, 10:54:57 AM
    Author     : Dell New
--%>

<jsp:useBean class="model.Employee" id="e" />
<%@page import="dao.EmployeeDao" %>
<jsp:setProperty name="e" property="*" />

<%
    EmployeeDao.updateData(e);
    response.sendRedirect("viewalldata.jsp");

%>