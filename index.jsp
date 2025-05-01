<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>DineFlick</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>

<!-- Navbar -->
<header>
<div class="logo">Dine<span>Flick</span></div>

<!-- Hamburger Menu Icon -->
<button class="hamburger">
&#9776; <!-- ☰ Icon -->
</button>

<!-- Centered Navigation Links -->
<nav>
<ul class="nav-links">
<li><a href="<%= request.getContextPath() %>/restaurant.jsp">Restaurant</a></li>
<li><a href="<%= request.getContextPath() %>/about.jsp">About Us</a></li>
<li><a href="dashboard.jsp">Dashboard</a></li>

</ul>
</nav>

<!-- Right Section: Search Bar & Auth Buttons -->
<div class="right-section">
<%
String username = (String) session.getAttribute("user");
%>

<div class="right-section">
    <% if (username != null) { %>
        <span class="welcome-text">Welcome, <%= username %>!</span>
        <a href="<%= request.getContextPath() %>/logout.jsp" class="btn-logout">Logout</a>
    <% } else { %>
        <span class="welcome-text">Welcome, Guest!</span>
        <a href="<%= request.getContextPath() %>/login.jsp" class="btn-login">Login</a>
        <a href="<%= request.getContextPath() %>/signup.jsp" class="btn-signup">Sign Up</a>
    <% } %>
</div>

</header>

<!-- Hero Section with Image Slider -->
<main class="hero">
<!-- Background Slider Container -->
<div class="slider-container">
<div class="hero-bg active" style="background-image: url('<%= request.getContextPath() %>/images/hero.jpg');"></div>
<div class="hero-bg" style="background-image: url('<%= request.getContextPath() %>/images/hero2.jpg');"></div>
<div class="hero-bg" style="background-image: url('<%= request.getContextPath() %>/images/hero3.jpg');"></div>
<div class="hero-bg" style="background-image: url('<%= request.getContextPath() %>/images/hero4.jpg');"></div>
</div>

  <h1>Book, Resale & Enjoy</h1>
   <p>All in One Place!</p>

</main>


<!-- Services Section -->
<section class="services">
    <h2>Our Services</h2>
    <div class="service-container">
        
        <!-- Table Booking Card -->
        <div class="service-card">
            <div class="service-icon">
                <img src="<%= request.getContextPath() %>/images/table booking.png" alt="Table Booking">
            </div>
            <h3>Table Booking</h3>
            <p>Reserve tables at your favorite restaurants with just a few clicks. No more waiting in lines!</p>
            <a href="<%= request.getContextPath() %>/restaurant.jsp" class="service-link">Book Now →</a>
        </div>
        </section>




<!-- How It Works Section -->
<section class="how-it-works">
    <h2>How It Works</h2>
    <div class="steps-container">
        
        <!-- Step 1 -->
        <div class="step">
            <div class="step-icon">1</div>
            <h3>Find & Book</h3>
            <p>Search for restaurants or events, check availability, and book instantly.</p>
        </div>
        
        <!-- Step 2 -->
        <div class="step">
        
            <div class="step-icon">2</div>
            <h3>Resale Easily</h3>
            <p>Can't make it? List your booking or ticket for resale with just a few taps.</p>
        </div>
        
        <!-- Step 3 -->
        <div class="step">
            <div class="step-icon">3</div>
            <h3>Enjoy!</h3>
            <p>Show up and enjoy your experience with our hassle-free digital confirmation.</p>
        </div>
        
    </div>
</section>


<!-- Featured Listings Section -->
<section class="featured-listings">
    <h2>Featured Listings</h2>
    
    <div class="listing-category">
        <h3>Popular Restaurants</h3>
        <div class="listings-container">
            
            <!-- Listing 1 -->
            <div class="listing-card">
                <div class="listing-image">
                    <img src="<%= request.getContextPath() %>/images/jw marriote.jpg" alt="JW Marriote">
                </div>
                <div class="listing-info">
                    <h4>JW Marriote</h4>
                    <p>Italian</p>
                   
                    <a href="<%= request.getContextPath() %>/book table.jsp" class="book-now">Book Now</a>
                </div>
            </div>
            
            <!-- Listing 2 -->
            <div class="listing-card">
                <div class="listing-image">
                    <img src="<%= request.getContextPath() %>/images/Tao Fu.jpg" alt="Hotel To Fu">
                </div>
                <div class="listing-info">
                    <h4>Hotel To Fu</h4>
                    <p>Chinese </p>
                
                    <a href="<%= request.getContextPath() %>/book table.jsp" class="book-now">Book Now</a>
                </div>
            </div>
            
            <!-- Listing 3 -->
            <div class="listing-card">
                <div class="listing-image">
                    <img src="<%= request.getContextPath() %>/images/Luftansa.jpg" alt="Luftansa">
                </div>
                <div class="listing-info">
                    <h4>Luftansa</h4>
                    <p>Mexican</p>
                    
                    <a href="<%= request.getContextPath() %>/book table.jsp" class="book-now">Book Now</a>
                </div>
            </div>
            
            <!-- Listing 4 -->
            <div class="listing-card">
                <div class="listing-image">
                    <img src="<%= request.getContextPath() %>/images/Hotel Savai.jpg" alt="Hotel Savai">
                </div>
                <div class="listing-info">
                    <h4>Hotel Savai</h4>
                    <p>Indian </p>
                    
                    <a href="<%= request.getContextPath() %>/book table.jsp" class="book-now">Book Now</a>
                </div>
            </div>
            
        </div>
    </div>
</section>


<div class="footer">
    <div class="footer-container">
        <!-- Left Section: Logo & Tagline -->
        <div class="footer-brand">
         <img src="<%= request.getContextPath() %>/images/logo.png" alt="DineFlick Logo" class="footer-logo">
            <p>Book, Resale & Enjoy – All in One Place!</p>
        </div>
        
        <!-- Quick Links -->
        <div class="footer-links">
            <h4>Quick Links</h4>
            <ul>
                <li><a href="<c:url value='/restaurant' />">Restaurant</a></li>
                <li><a href="<c:url value='/about' />">About Us</a></li>
               
            </ul>
        </div>
        
        <!-- Legal Links -->
        <div class="footer-legal">
            <h4>Legal</h4>
            <ul>
                <li><a href="<c:url value='/terms' />">Terms & Conditions</a></li>
                <li><a href="<c:url value='/privacy' />">Privacy Policy</a></li>
                <li><a href="<c:url value='/refund' />">Refund Policy</a></li>
                <li><a href="<c:url value='/faq' />">FAQ</a></li>
            </ul>
        </div>
        
        <!-- Contact Information -->
        <div class="footer-contact">
            <h4>Contact Us</h4>
            <p>Email: info@dineflick.com</p>
            <p>Phone: +1 (555) 123-4567</p>
            <p>Address: 123 Main St, City</p>
            <div class="footer-social">
                <a href="#"><img src="<%= request.getContextPath() %>/images/linkdin.png" alt="LinkedIn"></a>
            <a href="#"><img src="<%= request.getContextPath() %>/images/instagram.png" alt="Instagram"></a>
               </div>
        </div>
    </div>
    <div class="footer-bottom">
        <p>© 2025 DineFlick. All rights reserved.</p>
    </div>
</div>

<script>
document.addEventListener("DOMContentLoaded", function() {
    
    const hamburger = document.querySelector(".hamburger");
    const navLinks = document.querySelector(".nav-links");

   
    hamburger.addEventListener("click", function() {
        navLinks.classList.toggle("show");
    });

   
    document.addEventListener("click", function(event) {
        if (!hamburger.contains(event.target) && !navLinks.contains(event.target)) {
            navLinks.classList.remove("show");
        }
    });

    
    const slides = document.querySelectorAll('.hero-bg');
    let currentSlide = 0;

    
    function nextSlide() {
    
        slides[currentSlide].classList.remove('active');

        
        currentSlide = (currentSlide + 1) % slides.length;

       
        slides[currentSlide].classList.add('active');
    }

   
    setInterval(nextSlide, 3000);
});
</script>
</body>
</html>