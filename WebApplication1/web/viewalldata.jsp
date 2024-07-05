<%-- 
    Document   : viewalldata
    Created on : Jul 3, 2024, 11:03:20 PM
    Author     : Dell New
--%>

<%@taglib prefix="e" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.Employee" %>
<%@page import="dao.EmployeeDao" %>
<%@page import="java.util.*" %>

<%
    List<Employee> list = EmployeeDao.viewAllData();
    request.setAttribute("vaList", list);

%>

<table border="1" style="width:70%; font-size: 20px; margin-left: auto; margin-right: auto">
    <caption>Employee Details</caption>
    <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Email</th>
            <th>Address</th>
            <th>Mobile</th>
            <th>Department</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <e:forEach var="l" items="${vaList}">
            <tr>
                <td>${l.getId()}</td>
                <td>${l.getName()}</td>
                <td>${l.getEmail()}</td>
                <td>${l.getAddress()}</td>
                <td>${l.getMobile()}</td>
                <td>${l.getDept()}</td>
                <td>
                    <a href="updatedataform.jsp?id=${l.getId()}">Edit</a>
                    <a href="deletedata.jsp?id=${l.getId()}">Delete</a>
                </td>
            </tr>
        </e:forEach>
    </tbody>
</table>

<a href="home.jsp">Back to Home Page</a>