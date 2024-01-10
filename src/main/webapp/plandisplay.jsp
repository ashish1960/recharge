<%@page import="linkcode.model.plan"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<li class="nav-item">
          <a class="nav-link" style="color: black;" href="planDisplay">Display-All</a>
        </li>
<div class="container">
    <%
    List<plan> reglst = (List<plan>) session.getAttribute("plans");
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
            for (plan r : reglst) {
            %>
                <tr scope="row">
                   
                    <td><%= r.getPlan_amount() %></td>
                    <td><%= r.getPlan_company() %></td>
                    <td><%= r.getPlan_name() %></td>
                    
                     
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