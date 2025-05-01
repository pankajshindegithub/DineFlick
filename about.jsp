<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - DineFlick</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/about.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar">
        <div class="logo">Dine<span>Flick</span></div>
        <ul class="nav-links">
            <li><a href="<%= request.getContextPath() %>/restaurant.jsp">Restaurant</a></li>
         
        
        </ul>
            </nav>

    <!-- About Section -->
    <section class="about-section">
        <div class="content">
            <h1>Revolutionizing the Way You Dine and Experience Events</h1>
            <p>
                DineFlick is your all-in-one platform for restaurant bookings and ticket reselling.
                We're making it easier than ever to enjoy dining experiences and events, while providing
                flexibility when plans change.
            </p>
            <div class="buttons">
                <a href="<%= request.getContextPath() %>/restaurant.jsp" class="btn start-booking">Start Booking</a>
               
            </div>
        </div>
        <div class="image-placeholder">
            <img src="<%= request.getContextPath() %>/images/about.png" alt="DineFlick Image">
        </div>
    </section>

    <!-- Our Values Section -->
    <section class="values-section">
        <h2>Our Values</h2>
        <div class="values-container">
            <div class="value-item">
                <img src="<%= request.getContextPath() %>/images/team.png" alt="Customer First">
                <h3>Customer First</h3>
                <p>We prioritize our users' needs and continuously improve our services based on feedback.</p>
            </div>
            <div class="value-item">
                <img src="<%= request.getContextPath() %>/images/round.png" alt="Innovation">
                <h3>Innovation</h3>
                <p>We're constantly evolving our platform to provide the best possible experience.</p>
            </div>
            <div class="value-item">
                <img src="<%= request.getContextPath() %>/images/shield.png" alt="Trust & Safety">
                <h3>Trust & Safety</h3>
                <p>Security and reliability are at the core of everything we do.</p>
            </div>
            <div class="value-item">
                <img src="<%= request.getContextPath() %>/images/service.png" alt="Quality Service">
                <h3>Quality Service</h3>
                <p>We ensure the highest standards in customer service and support.</p>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <div class="footer">
        <div class="footer-container">
            <!-- Left Section: Logo & Tagline -->
            <div class="footer-brand">
                <img src="<%= request.getContextPath() %>/images/logo.png" alt="DineFlick Logo" class="footer-logo">
                <p>Book, Resell & Enjoy – All in One Place!</p>
            </div>

            <!-- Quick Links -->
            <div class="footer-links">
                <h4>Quick Links</h4>
                <ul>
                    <li><a href="#">Restaurant</a></li>
                    <li><a href="#">About Us</a></li>
                
                </ul>
            </div>

            <!-- Legal Links -->
            <div class="footer-legal">
                <h4>Legal</h4>
                <ul>
                    <li><a href="#">Terms & Conditions</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Refund Policy</a></li>
                    <li><a href="#">FAQ</a></li>
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

</body>
</html>
