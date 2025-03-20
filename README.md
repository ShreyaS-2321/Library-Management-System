# 📚 BiblioHive - Library Management System

BiblioHive is a **web-based Library Management System** designed to streamline book borrowing, tracking, and notifications. It includes an **Offline Book Issue Slot**, allowing users to reserve books online and borrow them offline, making the process more efficient.

## ✨ Features
- 🔖 **Offline Book Issue Slot** – Reserve books online and borrow them offline..
- 📚 **Advanced Book Filtering** – Search by title, author, or genre.
- ⏳ **Overdue Notifications(Ongoing)** – Alerts users about due dates.
- 🎨 **Interactive UI** – GSAP-powered smooth animations.
- 📊 **Admin Panel(Ongoing)** – Manage books, users, and borrowing records.

## 🛠️ Tech Stack
### **Frontend:**
- HTML, CSS, JavaScript
- GSAP (for animations)

### **Backend:**
- Java
- JDBC

### **Database:**
- MySQL

### **Tools & IDEs:**
- Eclipse, MySQL Workbench

## 🚀 Getting Started
### **Prerequisites**
- Java (JDK 8 or higher)
- Apache Tomcat Server (for running JSP pages)
- MySQL (for database)
- Eclipse IDE (for backend and frontend development)

### **Setup Instructions**
1. Clone the repository:
   
bash
   git clone https://github.com/your-username/bibliohive.git

2. Open the project in **Eclipse IDE**.
3. Configure the database connection in Java:
   
Replace yourpassword with your actual MySQL password:
   Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bibliohive", "root", "yourpassword");

4. Go to LandingPage.jsp and Run As Run on Server. (make sure MySQL is running)

## 🤝 Contributing
Pull requests are welcome! Feel free to improve UI, add features, or optimize the backend.
