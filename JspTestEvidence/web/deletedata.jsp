<jsp:useBean class="model.Student" id="d" />
<%@page import="dao.StudentDao" %>
<jsp:setProperty name="d" property="*" />

<%

    StudentDao.deleteData(d);
    response.sendRedirect("viewalldata.jsp");

%>