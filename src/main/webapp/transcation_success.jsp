<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</head>
<body class="d-flex align-items-center justify-content-center" style="height: 100vh;">

<div class="card text-center" style="width: 18rem; border: 0cap;">
    <img src="https://tenor.com/view/verified-gif-24122450.gif" width="100%" height="auto"  class="card-img-top img-fluid" style="padding-right: 26px; align-items: center; align-content: center; display: flex; justify-content: space-around; flex-wrap: nowrap; flex-direction: row;">
    <div class="card-body">
        <h5 class="card-title">Payment Success </h5>
        <p class="card-text">Money Has Transfer to</p> <h2><%=session.getAttribute("mobile_number") %></h2>
        <a href="Home.jsp" class="btn btn-primary">Home</a>
    </div>
</div>

</body>
</html>