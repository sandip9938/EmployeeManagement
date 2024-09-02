<%@page import="test.EmployeeBean"%>
<%@page import="test.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details</title>
<style>
body {
    background-color: #352f2f;
    color: rgb(240, 238, 234);
    font-family: Georgia, 'Times New Roman', Times, serif;
    font-weight: 400;
}

input {
    margin: 10px;
}
button {
    justify-content: center;
    margin: 10px;
    cursor: pointer;
    font-family: 'Times New Roman', Times, serif;
    background-color: #212121;
    letter-spacing: 0.2px;
    color: antiquewhite;
    border: 2px solid rgb(182, 182, 223);
    padding: 5px;
}
table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
}
table, th, td {
    border: 1px solid rgb(182, 182, 223);
}
th, td {
    padding: 10px;
    text-align: left;
}
th {
    background-color: #212121;
    color: antiquewhite;
}
tr:nth-child(even) {
    background-color: #4f4f4f;
}
</style>
</head>
<body>
<% 
EmployeeBean eb = (EmployeeBean)session.getAttribute("ebean");
%>
<h2>Welcome Employee: <%= eb.getEname() %></h2>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Designation</th>
        <th>Basic Salary</th>
        <th>HRA</th>
        <th>DA</th>
        <th>Total Salary</th>
    </tr>
    <tr>
        <td><%= eb.getEid() %></td>
        <td><%= eb.getEname() %></td>
        <td><%= eb.getEdesg() %></td>
        <td><%= eb.getEbsal() %></td>
        <td><%= eb.getEhra() %></td>
        <td><%= eb.getEda() %></td>
        <td><%= eb.getEtsal() %></td>
    </tr>
</table>

           <a
			href="view"><button>ViewAllEmployee.....</button></a>
			<a href="logout"><button>LogOut.....</button></a> <br>
</body>
</html>
