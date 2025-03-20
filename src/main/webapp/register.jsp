<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<link href="https://cdn.jsdelivr.net/npm/remixicon@4.3.0/fonts/remixicon.css" rel="stylesheet"/>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
<div class="background">
</div>
<form method="post" action="register" class="register-form"> 
<div class="title">
<h2>Register</h2>
</div>
<div class="form-field" style="margin-top:50px;">
<i class="ri-user-fill"></i>
<input type="text" placeholder="Fullname" name="name">
</div>
<div class="form-field">
<i class="ri-mail-fill"></i>
<input type="email" placeholder="Email Id" name="email">
</div>
<div class="form-field">
<i class="ri-phone-fill"></i>
<input type="number" placeholder="Contact" name="contact">
</div>
<div class="form-field">
<i class="ri-lock-fill"></i>
<input type="password" placeholder="Password" name="password">
</div>
<div class="form-field">
<i class="ri-lock-fill"></i>
<input type="password" placeholder="Confirm Password" name="confirm_password">
</div>
<div class="button-field">
<input type="submit" value="Register">
<p>Already have an account? <a href="login.jsp">Click here</a> to login</p>
</div>
</form>
</div>
</body>
</html>