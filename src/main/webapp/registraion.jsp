<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="registraion.css" rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>

</head>
<body>
	<div class="tm">
        <form class="form" action="registreController">
    <p class="title">Register </p>
    <p class="message">Signup now and get full access to our app. </p>
        <div class="flex">
        <label>
            <input required=" " placeholder="First Name" type="text" class="input" name="name">
           
        </label>

        <label>
            <input required="" placeholder="Last Name" type="text" class="input" name="lastname">
           
        </label>
    </div>  
            
    <label>
        <input required="" placeholder=" Email" type="email" class="input" name="email">
        
    </label>
        
    <label>
        <input required="" placeholder="Mobile no" type="text" class="input" name="mobileno">
        
    </label>
    <label>
        <input required="" placeholder=" Password" type="password" class="input" name="password">
        
    </label>
    
    <button class="submit" value="registraion">Submit</button>
    <p class="signin">Already have an acount ? <a href="login1.jsp">Signin</a> </p>
</form>
</div>
</body>
</html>