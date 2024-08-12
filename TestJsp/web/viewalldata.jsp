<%-- 
    Document   : viewalldata
    Created on : Aug 12, 2024, 3:51:12 PM
    Author     : Admin
--%>

<%@taglib prefix="e" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <th>Gender</th>
            <th>Subject</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <e:forEach var="tb" items="${vaList}">
            <tr>
                <td>${tb.getId()}</td>
                <td>${tb.getName()}</td>
                <td>${tb.getEmail()}</td>
                <td>${tb.getGender()}</td>
                <td>${tb.getSubject()}</td>
                <td>
                    <a href="updateformdata.jsp?id=${tb.getId()}">Update</a>
                    <a href="deletedata.jsp?id=${tb.getId()}">Delete</a>
                </td>
            </tr>
        </e:forEach>
    </tbody>
</table>
