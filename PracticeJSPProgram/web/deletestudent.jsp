<jsp:useBean class="model.Student" id="d" />

<%@page import="dao.StudentDao" %>

<jsp:setProperty name="d" property="*" />

<%

    StudentDao.deleteStudent(d);
    response.sendRedirect("viewallstudent.jsp");

%>