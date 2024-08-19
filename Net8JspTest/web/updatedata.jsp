<%-- 
    Document   : updatedata
    Created on : Aug 19, 2024, 11:58:27 PM
    Author     : Naima
--%>

<jsp:useBean class="model.Student" id="e" />
<%@page import="dao.StudentDao" %>
<jsp:setProperty name="e" property="*" />

<%
    StudentDao.updateData(e);
    response.sendRedirect("viewalldata.jsp");

%>
