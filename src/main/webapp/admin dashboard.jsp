<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>BiblioHive Dashboard</title>
<link rel="stylesheet" href="dashboard.css">
<script>
// JavaScript function to search books
function searchBooks() {
    const input = document.querySelector('.search-bar input').value.toLowerCase();
    const cards = document.querySelectorAll('.card');
    
    cards.forEach(card => {
        const bookTitle = card.querySelector('h4').textContent.toLowerCase();
        if (bookTitle.includes(input)) {
            card.style.display = ''; // Show the card
        } else {
            card.style.display = 'none'; // Hide the card
        }
    });
}
</script>
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
    
    <!-- Hero Section -->
    <div class="punch-line" id="gradient">
        <h2>Your Smart Library Companion <span>—</span> Organized, Efficient, Unstoppable!</h2>
    </div>
    
    <!-- Search Bar with oninput for live search functionality -->
    <div class="search-bar">
        <input type="text" placeholder="Search books..." oninput="searchBooks()">
    </div>
</div>

<!-- Filter Section -->
<div class="filters">
    <select class="filter-dropdown">
        <option value="">Genre</option>
        <option value="Fiction">Fiction</option>
        <option value="Non-fiction">Non-fiction</option>
        <option value="Science">Science</option>
        <option value="History">History</option>
    </select>
    
    <select class="filter-dropdown">
        <option value="">Stream</option>
        <option value="CSE">Computer Science Engineering</option>
        <option value="ME">Mechanical Engineering</option>
        <option value="CE">Civil Engineering</option>
        <option value="EE">Electrical Engineering</option>
        <option value="AI">Artificial Intelligence</option>
    </select>
    
    <select class="filter-dropdown">
        <option value="">Year</option>
        <option value="1">1st Year</option>
        <option value="2">2nd Year</option>
        <option value="3">3rd Year</option>
        <option value="4">4th Year</option>
    </select>
    
    <select class="filter-dropdown">
        <option value="">Semester</option>
        <option value="1">Semester 1</option>
        <option value="2">Semester 2</option>
        <option value="3">Semester 3</option>
        <option value="4">Semester 4</option>
    </select>
</div>

<!-- Book Cards -->
<div class="card-container">
    <div class="card">
        <div class="image-part">
            <img class="book-image" src="bc1.jpg" alt="Book Image">
        </div>
        <h4>The Boy with the Tiger's Heart</h4>
        <button class="issue-book">Remove Book</button>
    </div>
    
    <div class="card">
        <div class="image-part">
            <img class="book-image" src="bc2.jpeg" alt="Book Image">
        </div>
        <h4>Engineering Graphics And Design</h4>
        <button class="issue-book">Remove Book</button>
    </div>
    
    <div class="card">
        <div class="image-part">
            <img class="book-image" src="bc3.jpeg" alt="Book Image">
        </div>
        <h4>Chemical Engineering</h4>
        <button class="issue-book">Remove Book</button>
    </div>
    
    <div class="card">
        <div class="image-part">
            <img class="book-image" src="bc4.jpeg" alt="Book Image">
        </div>
        <h4>Elements of Mechanical Engineering</h4>
        <button class="issue-book">Remove Book</button>
    </div>
    
    <div class="card">
        <div class="image-part">
            <img class="book-image" src="bc5.jpeg" alt="Book Image">
        </div>
        <h4>Mechanical Engineering Design</h4>
        <button class="issue-book">Remove Book</button>
    </div>
    
    <div class="card">
        <div class="image-part">
            <img class="book-image" src="bc6.webp" alt="Book Image">
        </div>
        <h4>Basic Mechanical Engineering</h4>
        <button class="issue-book">Remove Book</button>
    </div>
    
    <div class="card">
        <div class="image-part">
            <img class="book-image" src="bc7.jpeg" alt="Book Image">
        </div>
        <h4>Fundamentals of Software Engineering</h4>
        <button class="issue-book">Remove Book</button>
    </div>
    
    <div class="card">
        <div class="image-part">
            <img class="book-image" src="bc8.webp" alt="Book Image">
        </div>
        <h4>Basic Civil Engineering</h4>
        <button class="issue-book">Remove Book</button>
    </div>
    
    <div class="card">
        <div class="image-part">
            <img class="book-image" src="bc9.webp" alt="Book Image">
        </div>
        <h4>Objective Civil Engineering</h4>
        <button class="issue-book">Remove Book</button>
    </div>
    
    <div class="card">
        <div class="image-part">
            <img class="book-image" src="bc10.jpg" alt="Book Image">
        </div>
        <h4>Civil Engineering Drawing</h4>
        <button class="issue-book">Remove Book</button>
    </div>
    
    <!-- Continue adding more cards as necessary -->
</div>   
</body>
</html>
