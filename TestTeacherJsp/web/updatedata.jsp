<%-- 
    Document   : updatedata
    Created on : Aug 13, 2024, 4:11:52 PM
    Author     : Admin
--%>

<jsp:useBean class="model.Teacher" id="e" />
<%@page import="dao.TeacherDao" %>
<jsp:setProperty name="e" property="*" />

<%
    TeacherDao.updateData(e);
    response.sendRedirect("viewalldata.jsp");

%>
