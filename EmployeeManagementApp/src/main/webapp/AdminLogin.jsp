<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import ="test.AdminBean"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
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
 button
    {
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
</style>
<body>
<%
AdminBean abBean=(AdminBean)session.getAttribute("abean");
out.println("Welcome Admin : "+abBean.getFname()+"<br>");
%>
<a href="employeeadd.html"><button>Add Employee.....</button></a> <br> <a
			href="view"><button>ViewAllEmployee.....</button></a>
			<a href="logout"><button>LogOut.....</button></a> <br> 
			
</body>
</html>