<%-- 
    Document   : deletedat
    Created on : Aug 20, 2024, 12:01:29 AM
    Author     : Naima
--%>

<jsp:useBean class="model.Student" id="d" />
<%@page import="dao.StudentDao" %>
<jsp:setProperty name="d" property="*" />

<%

    StudentDao.deleteData(d);
    response.sendRedirect("viewalldata.jsp");

%>