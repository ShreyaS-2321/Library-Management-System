<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
    String status = (String) request.getAttribute("status");
    if ("failed".equals(status)) {
%>
    <p style="color:red;">Invalid email or password. Please try again.</p>
<% } else if ("emptyFields".equals(status)) { %>
    <p style="color:red;">Please enter both email and password.</p>
<% } else if ("error".equals(status)) { %>
    <p style="color:red;">An error occurred during login. Please try again later.</p>
<% } %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link href="https://cdn.jsdelivr.net/npm/remixicon@4.3.0/fonts/remixicon.css" rel="stylesheet"/>
<link rel="stylesheet" href="login.css">
</head>
<body>
<div class="container">
<div class="background">
</div>
<form method="post" action="login">
<div class="title">
<h2>Login</h2>
</div>
<div class="form-field" style="margin-top:50px">
<i class="ri-mail-fill"></i>
<input type="email" placeholder="Email Id" name="email">
</div>
<div class="form-field">
<i class="ri-lock-fill"></i>
<input type="password" placeholder="Password" name="password">
</div>
<div class="button-field">
<input type="submit" value="Login">
<p>Don't have an account? <a href="register.jsp">Click here</a> to register</p>
</div>
</form>
</div>
</body>
</html>