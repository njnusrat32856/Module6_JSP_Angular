<%-- 
    Document   : savedata
    Created on : Aug 13, 2024, 3:46:11 PM
    Author     : Admin
--%>

<jsp:useBean class="model.Teacher" id="s" />
<%@page import="dao.TeacherDao" %>
<jsp:setProperty name="s" property="*" />

<%
    int i= TeacherDao.saveData(s);
    
    if(i>0){
        response.sendRedirect("success.jsp");
    }
    else{
        response.sendRedirect("error.jsp");
    }


%>
