<%@ page import="jakarta.servlet.*" %>
<%@ page import="jakarta.servlet.http.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add books</title>
<link rel='stylesheet' href='addbook.css'>
</head>
<body>

	<div class="header">
		<a href="Admin.jsp">Back</a>
	</div>
	<form action="Addbooksservlet" method="post" enctype="multipart/form-data" onsubmit="return validateForm()" id="userForm">
    <div class="title">
        <h2>Add Book</h2>
    </div>
    
    <div class="form-field">
        <label>Book Name</label>
        <input type="text" name="bookname" id="bookname">
    </div>
    <div class="form-field">
        <label>Upload Book's Cover Image</label>
        <input type="file" name="photo" id="photo">
    </div>
    <div class="form-field">
        <label>Upload Book PDF</label>
        <input type="file" name="pdf" id="pdf">
    </div>
    <div class="form-field">            
        <div class="button-field">
            <input type="submit" value="Add Book">
        </div>
    </div>
</form>

	<script>
		function validateForm(){
			var bookname=document.getElementById("userForm").bookname.value;
			var photo=document.getElementById("userForm").photo.value;
			
			if(bookname==='' || photo===''){
				alert("All field required!!");
				return false;
			}
			return true;
		}
	</script>
</body>
</html>