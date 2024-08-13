<%-- 
    Document   : deletedata
    Created on : Aug 13, 2024, 4:04:12 PM
    Author     : Admin
--%>

<jsp:useBean class="model.Teacher" id="d" />
<%@page import="dao.TeacherDao" %>
<jsp:setProperty name="d" property="*" />

<%

    TeacherDao.deleteData(d);
    response.sendRedirect("viewalldata.jsp");

%>
