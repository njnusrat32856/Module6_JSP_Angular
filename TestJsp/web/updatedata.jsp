<%-- 
    Document   : updatedata
    Created on : Aug 12, 2024, 4:11:18 PM
    Author     : Admin
--%>

<jsp:useBean class="model.Student" id="e" />
<%@page import="dao.StudentDao" %>
<jsp:setProperty name="e" property="*" />

<%
    StudentDao.updateData(e);
    response.sendRedirect("viewalldata.jsp");

%>
