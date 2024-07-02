<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="t" %>
<%@page import="model.Student" %>
<%@page import="dao.StudentDao" %>
<%@page import="java.util.*" %>

<%
    List<Student> list = StudentDao.viewAllData();
    request.setAttribute("vaList", list);
    
%>

<table border =1>
    <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Email</th>
            <th>Address</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <t:forEach var="tb" items="${vaList}">
            <tr>
                <td>${tb.getId()}</td>
                <td>${tb.getName()}</td>
                <td>${tb.getEmail()}</td>
                <td>${tb.getAddress()}</td>
                <td>
                    <a href="#">Update</a>
                    <a href="deletedata.jsp?id=${tb.getId()}">Delete</a>
                </td>
            </tr>
        </t:forEach>
    </tbody>
</table>