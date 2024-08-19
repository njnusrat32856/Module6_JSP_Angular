<%-- 
    Document   : savedata
    Created on : Aug 20, 2024, 12:00:22 AM
    Author     : Naima
--%>

<jsp:useBean class="model.Student" id="s" />
<%@page import="dao.StudentDao" %>
<jsp:setProperty name="s" property="*" />

<%
    int i= StudentDao.saveData(s);
    
    if(i>0){
        response.sendRedirect("success.jsp");
    }
    else{
        response.sendRedirect("error.jsp");
    }


%>
