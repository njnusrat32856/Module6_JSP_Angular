<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="a" %>
<%@page import="model.Student" %>
<%@page import="dao.StudentDao" %>
<%@page import="java.util.*" %>

<%
    List<Student> list = StudentDao.viewAllStudent();
    request.setAttribute("vaList", list);

%>

<table border="1">
    <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Email</th>
            <th>Address</th>
            <th>Cell No.</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <a:forEach var="l" items="${vaList}">
            <tr>
                <td>${l.getId()}</td>
                <td>${l.getName()}</td>
                <td>${l.getEmail()}</td>
                <td>${l.getAddress()}</td>
                <td>${l.getCellNo()}</td>
                <td>
                    <a href="#">Update</a>
                    <a href="deletestudent.jsp?id=${l.getId()}">Delete</a>
                </td>
            </tr>
        </a:forEach>
    </tbody>
</table>