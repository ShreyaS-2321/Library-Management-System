<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>BiblioHive Dashboard</title>
<link rel="stylesheet" href="admin.css">
</head>
<body>
<div class="container">
    <!-- Navigation Bar -->
    <div class="nav">
        <div class="logo" id="plogo">
            <h1>BiblioHive</h1>
        </div>
        <div class="nav-right">
            <img class="profile-image" src="IKEA16.jpg" alt="Profile Image">
            <button class="logout">Logout</button>
        </div>
    </div>
 </div>  
  
    <!-- Hero Section -->
   <div class="container2">
    <div class="punch-line" id="gradient">
        <h2>Hello, Admin Ji! BiblioHive is ready for your next command!</h2>
        <img class ="hello" src="hello.png" alt="">
    </div>
   </div>  

<!-- Book Cards -->
<div class="card-container">
    <div class="card">
    <img class="feature" src="all books.svg" alt="">
        <a href="admin dashboard.jsp"><button class="issue-book">See all books</button></a>
    </div>
    
    <div class="card">
   <img class="feature" src="add books.svg" alt="">
        <a href="addbook.jsp"><button class="issue-book">Add Books</button></a>
    </div>
    
    <div class="card">
    <img class="feature" src="issued book.svg" alt="">
        <button class="issue-book">Issued Books</button>
    </div>
    
</div>   
</body>
</html>
