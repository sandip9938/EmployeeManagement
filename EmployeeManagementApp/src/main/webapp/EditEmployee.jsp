<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="test.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EditEmployee</title>
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
EmployeeBean eb=(EmployeeBean)request.getAttribute("ebean");
out.println("Page Belongs to Admin : "+eb.getEname()+"<br>");
%>
<form action="update" method="post">
 <input type="hidden" name="eid" value=<%=eb.getEid() %>><br>
            BasicSalary : <input type="text" name="bsal" placeholder="Update Slaray " value=<%= eb.getEbsal()%>><br>
            <input type="submit" value="UpdateEmployee">
            </form>
 
</body>
</html>