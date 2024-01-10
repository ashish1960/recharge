<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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