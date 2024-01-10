<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<style>
body
{
 background-color: #0080FF;
}
h1
{
color: white;
text-align: center;
}
a
{
color:white;}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error</title>
</head>
<body>
<h1>Some thing went Wrong!</h1>
<h1>So go for login! Try again!</h1>
<h1><a href="">login</a></h1>

<%
String notFoundMessage = (String) session.getAttribute("notFoundMessage");
if (notFoundMessage != null) {
%>
    <div class="alert alert-danger">
        <strong>Error:</strong> <%= notFoundMessage %>
    </div>
<%
   session.removeAttribute("notFoundMessage");
}
%>

</body>
</body>
</html>