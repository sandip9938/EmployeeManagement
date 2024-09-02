<%@page import="test.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddEmployee</title>
</head>
<style>
    body
    {
        background-color: #352f2f;
        color: white;
        font-family: Georgia, 'Times New Roman', Times, serif;
        font-weight: 400;
    }
input{
  margin: 10px;

}
    button
    {
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
</style>
<body>
<%
AdminBean ab=(AdminBean)session.getAttribute("abean");
String msg=(String)request.getAttribute("msg");
out.println(msg);
%>
 <a href="employee.html"><button>AddEmployee</button></a>
          <a href="view"><button>ViewAllEmployee</button></a>
          <a href="logout"><button>LogOut</button></a>
</body>
</html>