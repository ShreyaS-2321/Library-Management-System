<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.bibliohive.project.Books" %>

<% if(session.getAttribute("name")==null){
	response.sendRedirect("login.jsp");
	}
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BiblioHive Dashboard</title>
    <link rel="stylesheet" href="dashboard.css">
    <script>
       
        function searchBooks() {
            const input = document.querySelector('.search-bar input').value.toLowerCase();
            const cards = document.querySelectorAll('.card');
            
            cards.forEach(card => {
                const bookTitle = card.querySelector('h4').textContent.toLowerCase();
                if (bookTitle.includes(input)) {
                    card.style.display = ''; 
                } else {
                    card.style.display = 'none';
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
                <button class="logout" onclick="window.location.href='login.jsp'">Logout</button>
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
        <form method="get" action="FilterBooks">
            <select class="filter-dropdown" name="stream">
                <option value="">Stream</option>
                <option value="CSE">Computer Science Engineering</option>
                <option value="ME">Mechanical Engineering</option>
                <option value="CE">Civil Engineering</option>
                <option value="EE">Electrical Engineering</option>
                <option value="AI">Artificial Intelligence</option>
            </select>

            <select class="filter-dropdown" name="year">
                <option value="">Year</option>
                <option value="1">1st Year</option>
                <option value="2">2nd Year</option>
                <option value="3">3rd Year</option>
                <option value="4">4th Year</option>
            </select>

            <button type="submit" class="filter-dropdown" style="background-color:rgba(255,117,4,1);">Apply Filters</button>
        </form>
    </div>

    <!-- Book Cards -->
    <div class="card-container">
        <%
            List<Books> filteredBooks = (List<Books>) request.getAttribute("filteredBooks");
            if (filteredBooks != null && !filteredBooks.isEmpty()) {
                for (Books book : filteredBooks) {
        %>
            <div class="card">
                <div class="image-part">
                    <img class="book-image" src="<%= book.getImageUrl() %>" alt="Book Image">
                </div>
                <h4><%= book.getTitle() %></h4>
                <p><strong>Stream:</strong> <%= book.getStream() %></p>
                <p><strong>Year:</strong> <%= book.getYear() %></p>
                <button class="issue-book" onclick="window.location.href='Issuepage.jsp'">Issue Book</button>
            </div>
        <%
                }
            } else {
        %>
            <p style="color:white;">No books found matching the selected filters.</p>
        <%
            }
        %>
    </div>

</body>
</html>
