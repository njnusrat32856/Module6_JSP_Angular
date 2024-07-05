<%-- 
    Document   : deletedata
    Created on : Jul 3, 2024, 11:41:11 PM
    Author     : Dell New
--%>

<jsp:useBean class="model.Employee" id="e" />
<%@page import="dao.EmployeeDao" %>
<jsp:setProperty name="e" property="*" />

<%
    EmployeeDao.deleteData(e);
    response.sendRedirect("viewalldata.jsp");

%>