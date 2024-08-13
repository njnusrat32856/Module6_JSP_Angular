<%-- 
    Document   : viewalldata
    Created on : Aug 13, 2024, 3:58:07 PM
    Author     : Admin
--%>

<%@taglib prefix="e" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.Teacher" %>
<%@page import="dao.TeacherDao" %>
<%@page import="java.util.*" %>

<%
    List<Teacher> list = TeacherDao.viewAllData();
    request.setAttribute("vaList", list);

%>

<table border =1>
    <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Department</th>
            <th>Gender</th>
            
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <e:forEach var="tb" items="${vaList}">
            <tr>
                <td>${tb.getId()}</td>
                <td>${tb.getName()}</td>
                <td>${tb.getDept()}</td>
                <td>${tb.getGender()}</td>
                
                <td>
                    <a href="updateformdata.jsp?id=${tb.getId()}">Edit</a>
                    <a href="deletedata.jsp?id=${tb.getId()}">Delete</a>
                </td>
            </tr>
        </e:forEach>
    </tbody>
</table>

<br><!-- comment -->

<a href="home.jsp">Back To Home Page</a>
