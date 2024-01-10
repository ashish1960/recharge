<%@page import="linkcode.model.register"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Include Bootstrap from CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
 <style>
      .container {
            margin: 10px;
        }
    </style>
</head>
<body>
<li class="nav-item">
          <a class="nav-link" style="color: black;" href="displayall">Display-All</a>
        </li>
<div class="container">
    <%
    List<register> reglst = (List<register>) session.getAttribute("ListInfo");
    if (reglst != null && !reglst.isEmpty()) {
    %>
        <h2>Records</h2>
        <table class="table table table-striped">
            <tr class="table-info">
               
                <th>username</th>
                <th>Customer Name</th>
                <th>Lastname</th>
                <th>mobileno</th>
                <th>password</th>
                <th>Email</th>
            </tr>
            <%
            for (register r : reglst) {
            %>
                <tr scope="row">
                   
                    <td><%= r.getName() %></td>
                    <td><%= r.getLastname() %></td>
                    <td><%= r.getPassword() %></td>
                    <td><%= r.getMobileno() %></td>
                    <td><%=r.getLastname() %></td>
                    <td><%=r.getEmail() %></td>
                     
                </tr>
            <%
            }
            %>
        </table>
     <%
    }else {
    %>
        <h2>No data found in the session.</h2>
    <%
    }
    %> 
</div>
</body>
</html>