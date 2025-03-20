<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="Issuepage.css">
</head>
<body>
<div class="nav">
<a href="dashboard.jsp"><button class="back">Back</button></a>
</div>
<div class="hero-section">

        <h2>Book Issue Options</h2>
        <p>Choose your preferred method to issue books.</p>
    </div>

    <!-- Book Issue Options -->
    <div class="book-issue-container">
        <!-- Offline Book Issue Column -->
        <div class="book-column offline">
            <h3>Offline Book Issue</h3>
            <p>Reserve your slot and get the book issued at the library!</p>
             <button class="issue-book-btn" onclick="window.location.href='OfflineBookIssue.jsp'">Issue Offline Book</button>
        </div>

        <!-- Online Book Issue Column -->
        <div class="book-column online">
            <h3>Online Book Issue</h3>
            <p>Get the book issued online and have it delivered to your account!</p>
            <button class="issue-book-btn">Issue Online Book</button>
        </div>
    </div>
</body>
</html>