<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BiblioHive Landing Page</title>
    <link rel="stylesheet" href="LandingPage.css">
</head>
<body>

    <!--TOP BANNER-->
    <div class="top-banner">
        <div class="container">
            <div class="banner-text">Welcome to BiblioHive!</div>
        </div>
    </div>

    <!--nav bar-->
    <nav>
        <div class="container main-nav">
            <a href="LandingPage.jsp" class="logo">BiblioHive</a>
            <div class="nav-links">
                <ul class="flex">
                    <li><a href="#" class="hover-link">Home</a></li>
                    <li><a href="#" class="hover-link">About Us</a></li>
                    <li><a href="#" class="hover-link">Our Features</a></li>
                    <li><a href="#" class="hover-link">Contact Us</a></li>
                    <li><a href="login.jsp" class="hover-link secondary-button">Login</a></li>
                    <li><a href="register.jsp" class="hover-link primary-button">Register</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!--Header -->
    <header>
        <div class="container header-section">
            <div class="header-left">
                <h1>Your <span class="orange">Digital Library</span> Partner Awaits!</h1>
                <p>Empowering libraries to serve smarter, faster, and better with user-focused features.</p>
                <a href="register.jsp" class="primary-button get-started-button">Get Started</a>
            </div>
            <div class="header-right">
                <img class="header-image" src="bookread.png" alt="hero image">
            </div>
        </div>
    </header>

    <!--About Us section-->
    <section class="about-section">
        <div class="about-container">
            <h2 class="about-header">About <span class="orange">Us</span></h2>
            <img class="about-image" src="book5.png" alt="">
            <p class="about-para">
                At <span class="orange">BiblioHive</span>, we are redefining how libraries operate. Our platform combines innovation with simplicity, making it easier for students, educators, and library staff to manage and access resources.
                With features like a friendly dashboard, real-time updates, and seamless book management, our system ensures that every interaction with your library is smooth and efficient. Whether you're borrowing a book, accessing PDFs online, or scheduling an issue slot, we've got you covered.
                Our mission is to create an organized and user-friendly environment that transforms traditional libraries into modern hubs of knowledge.
            </p>
        </div>
    </section>

    <!--Features section-->
    <section class="features-section">
        <div class="container">
            <div class="features-header">
                <h2 class="features-header-text"><span class="orange">Our </span>Features</h2>
            </div>
            <div class="features-area">
                <div class="features-card">
                    <img src="all books.svg" alt="">
                    <h3 class="features-h3">Friendly Dashboard</h3>
                    <p>Navigate effortlessly through our intuitive dashboard. With a user-friendly interface, managing your library has never been easier!</p>
                    <a href="#" class="secondary-button">Learn More <i class="fa-regular fa-circle-right"></i></a>
                </div>
                <div class="features-card">
                    <img src="issued book.svg" alt="">
                    <h3 class="features-h3">Online PDF Access</h3>
                    <p>Enjoy seamless access to a collection of eBooks and PDFs, available anytime and anywhere for your convenience.</p>
                    <a href="#" class="secondary-button">Learn More <i class="fa-regular fa-circle-right"></i></a>
                </div>
                <div class="features-card">
                    <img src="add books.svg" alt="">
                    <h3 class="features-h3">Add & Manage Books</h3>
                    <p>Easily add new books and organize your inventory. Keep your library up-to-date with just a few clicks.</p>
                    <a href="#" class="secondary-button">Learn More <i class="fa-regular fa-circle-right"></i></a>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Us Section -->
    <section class="contact-section">
        <div class="container">
            <h2 class="contact-header">Contact<span class="orange"> Us</span></h2>
            <form class="contact-form">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" placeholder="Enter your name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" placeholder="Enter your email" required>
                </div>
                <div class="form-group">
                    <label for="message">Message</label>
                    <textarea id="message" rows="5" placeholder="Enter your message"></textarea>
                </div>
                <button type="submit" class="primary-button">Submit</button>
            </form>
        </div>
    </section>

    <!--Footer-->
    <footer>
        <div class="container flex footer-container">
            <a href="" class="company-logo">BiblioHive</a>
            <div class="link-column flex">
                <h4>Product</h4>
                <a href="#" class="hover-link">Home</a>
                <a href="#" class="hover-link">About Us</a>
                <a href="#" class="hover-link">Our Features</a>
                <a href="#" class="hover-link">Contact Us</a>
            </div>
            <div class="link-column flex">
                <h4>Methodology</h4>
                <a href="#" class="hover-link">Home</a>
                <a href="#" class="hover-link">About Us</a>
                <a href="#" class="hover-link">Our Features</a>
                <a href="#" class="hover-link">Contact Us</a>
            </div>
            <div class="link-column flex">
                <h4>Resources</h4>
                <a href="#" class="hover-link">Home</a>
                <a href="#" class="hover-link">About Us</a>
                <a href="#" class="hover-link">Our Features</a>
                <a href="#" class="hover-link">Contact Us</a>
            </div>
        </div>
    </footer>

    <!--Sub footer-->
    <div class="subfooter">
        <p>&copy;Copyright | BiblioHive All rigths reserved</p>
    </div>
    <!-- GSAP Scripts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/gsap.min.js" integrity="sha512-7eHRwcbYkK4d9g/6tD/mhkf++eoTHwpNM9woBxtPUBWm67zeAfFC+HrdoE2GanKeocly/VxeLvIqwvCdk7qScg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/ScrollTrigger.min.js" integrity="sha512-onMTRKJBKz8M1TnqqDuGBlowlH0ohFzMXYRNebz+yOcc5TQr/zAKsthzhuv0hiyUKEiQEQXEynnXCvNTOk50dg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="LandingPage.js"></script>
</body>
</html>    
