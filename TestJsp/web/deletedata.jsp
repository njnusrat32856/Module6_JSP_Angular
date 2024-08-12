<%-- 
    Document   : deletedata
    Created on : Aug 12, 2024, 4:00:34 PM
    Author     : Admin
--%>

<jsp:useBean class="model.Student" id="d" />
<%@page import="dao.StudentDao" %>
<jsp:setProperty name="d" property="*" />

<%

    StudentDao.deleteData(d);
    response.sendRedirect("viewalldata.jsp");

%>
