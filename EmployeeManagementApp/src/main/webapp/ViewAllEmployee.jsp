<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="test.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Employee</title>
<style>
    body {
        background-color: #352f2f;
        color: white;
        font-family: Georgia, 'Times New Roman', Times, serif;
        font-weight: 400;
    }
    input {
        margin: 10px;
    }
    button {
        justify-content: center;
        margin: 20px;
        cursor: pointer;
        font-family: 'Times New Roman', Times, serif;
        background-color: #212121;
        letter-spacing: 0.2px;
        color: antiquewhite;
        border: 2px solid rgb(182, 182, 223);
        padding: 5px;
    }
    table {
        border-collapse: collapse;
        width: 100%;
        margin: 20px 0;
    }
    th, td {
        border: 2px solid white;
        padding: 10px;
        text-align: left;
    }
    th {
        background-color: #444;
    }
    tr:nth-child(even) {
        background-color: #555;
    }
</style>
</head>
<body>
<%
AdminBean ab = (AdminBean) session.getAttribute("abean");
ArrayList<EmployeeBean> al = (ArrayList<EmployeeBean>) session.getAttribute("alist");

if (ab == null) {
    out.println("Admin session not found.");
    return;
}

out.println("<h2>Page Belongs to Admin: " + ab.getFname() + "</h2>");
if (al == null || al.size() == 0) {
    out.println("<p>No Employees Available.</p>");
} else {
%>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Designation</th>
                <th>Basic Salary</th>
                <th>HRA</th>
                <th>DA</th>
                <th>Total Salary</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <% 
            for (EmployeeBean eb : al) { 
            %>
            <tr>
                <td><%= eb.getEid() %></td>
                <td><%= eb.getEname() %></td>
                <td><%= eb.getEdesg() %></td>
                <td><%= eb.getEbsal() %></td>
                <td><%= eb.getEhra() %></td>
                <td><%= eb.getEda() %></td>
                <td><%= eb.getEtsal() %></td>
                <td>
                    <a href="edits?eid=<%= eb.getEid() %>">Edit</a> |
                    <a href="delete?eid=<%= eb.getEid() %>">Delete</a>
                </td>
            </tr>
            <% 
            } 
            %>
        </tbody>
    </table>
<%
}
%>
    <a href="employeeadd.html"><button>Add Employee</button></a>
    <a href="logout"><button>Log Out</button></a>
</body>
</html>
