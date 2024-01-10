<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>

<link  rel="stylesheet"  href="NewFile.css" >
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</head>
<body>

<div class="tm">
 <div class="form-container">
      <p class="title">Forgot Password </p>
      <form class="form" action="updatepassword">
        <input type="text" class="input" placeholder="Email" name="email">
        <input type="password" class="input" placeholder="Password" name="password">
        <button class="form-btn">Login</button>
      </form>
      <p class="sign-up-label">
        Forgot Password?<a class="sign-up-link" href="updatepassword.jsp">forgot password</a>
      </p>
      <p class="sign-up-label">
        Already have an account?<a class="sign-up-link" href="registraion.jsp">sign up</a>
      </p>
      
    </div>
    </div>
</body>
</html>