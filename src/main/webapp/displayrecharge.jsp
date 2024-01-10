<%@page import="java.util.List"%>
<%@page import="linkcode.model.recharge"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .nav-item {
            display: inline-block;
            margin-right: 10px;
        }

        .nav-link {
            color: black;
            text-decoration: none;
        }

        .container {
            margin: 20px;
        }

        h2 {
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .table-info th {
            background-color: #5bc0de;
            color: #fff;
        }

        .no-data {
            text-align: center;
            margin-top: 20px;
            color: #555;
        }
    </style>
    <title>Display Recharge</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="displayrecharge">Display-All</a>
            </li>
        </ul>
    </nav>
    
    <div class="container">
        <% List<recharge> reglst = (List<recharge>) session.getAttribute("data");
        if (reglst != null && !reglst.isEmpty()) { %>
            <h2>Records</h2>
            <table class="table table-striped">
                <tr class="table-info">
                    <th>Number</th>
                    <th>Plan</th>
                    <th>Amount</th>
                </tr>
                <% for (recharge r : reglst) { %>
                    <tr scope="row">
                        <td><%=r.getMobileNumber()%></td>
                        <td><%=r.getPlanId()%></td>
                        <td><%=r.getAmount() %></td>
                    </tr>
                <% } %>
            </table>
        <% } else { %>
            <h2 class="no-data">No data found in the session.</h2>
        <% } %>
    </div>

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
	
</body>
</html>