<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Restaurant</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/restaurant.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>

<!-- Navbar -->
<nav class="navbar">
    <div class="logo">Dine<span>Flick</span></div>
    <ul class="nav-links">
        <li><a href="<%= request.getContextPath() %>/restaurant.jsp">Restaurant</a></li>
        <li><a href="<%= request.getContextPath() %>/about.jsp" class="active">About Us</a></li>
        </ul>
   
</nav>

<section class="table-booking-section">
    <div class="container">
        <div class="content">
            <div class="text">
                <h1>Restaurant Table Booking</h1>
                <p>
                    Find and book tables at your favorite restaurants. 
                    Browse through our curated list of restaurants and 
                    secure your spot in just a few clicks.
                </p>
            </div>
            <div class="image">
                <img src="<%= request.getContextPath() %>/images/welcome.jpg" alt="Restaurant Table Booking">
            </div>
        </div>
    </div>
</section>

<section class="restaurant-list">
    <div class="container">
        <!-- Restaurant 1 -->
        <div class="restaurant-card">
            <div class="image-placeholder">
                <img src="<%= request.getContextPath() %>/images/jw marriote.jpg" alt="JW Marriote">
            </div>
            <div class="restaurant-info">
                <h3>JW Marriote</h3>
                <p><i class="fas fa-map-marker-alt"></i> SB Road, Pune</p>
                <div class="tags">
                    <span class="tag">Outdoor Seating</span>
                </div>
                <a href="<%= request.getContextPath() %>/book table.jsp" class="book-now">Book Now</a>
            </div>
        </div>

        <!-- Restaurant 2 -->
        <div class="restaurant-card">
            <div class="image-placeholder">
                <img src="<%= request.getContextPath() %>/images/Tao Fu.jpg" alt="Hotel To Fu">
            </div>
            <div class="restaurant-info">
                <h3>Hotel To Fu</h3>
                <p><i class="fas fa-map-marker-alt"></i> Downtown, City</p>
                <div class="tags">
                    <span class="tag">Indoor Seating</span>
                </div>
                <a href="<%= request.getContextPath() %>/book table.jsp" class="book-now">Book Now</a>
            </div>
        </div>

        <!-- Restaurant 3 -->
        <div class="restaurant-card">
            <div class="image-placeholder">
                <img src="<%= request.getContextPath() %>/images/Luftansa.jpg" alt="Luftansa">
            </div>
            <div class="restaurant-info">
                <h3>Luftansa</h3>
                <p><i class="fas fa-map-marker-alt"></i> Downtown, City</p>
                <div class="tags">
                    <span class="tag">Rooftop Dining</span>
                </div>
                <a href="<%= request.getContextPath() %>/book table.jsp" class="book-now">Book Now</a>
            </div>
        </div>

        <!-- Restaurant 4 -->
        <div class="restaurant-card">
            <div class="image-placeholder">
                <img src="<%= request.getContextPath() %>/images/Hotel Savai.jpg" alt="Hotel Savai">
            </div>
            <div class="restaurant-info">
                <h3>Hotel Savai</h3>
                <p><i class="fas fa-map-marker-alt"></i> Downtown, City</p>
                <div class="tags">
                    <span class="tag">Private Dining</span>
                </div>
                <a href="<%= request.getContextPath() %>/book table.jsp" class="book-now">Book Now</a>
            </div>
        </div>

        <!-- Restaurant 5 -->
        <div class="restaurant-card">
            <div class="image-placeholder">
                <img src="<%= request.getContextPath() %>/images/Malaka Spice.jpg" alt="Restaurant Name 5">
            </div>
            <div class="restaurant-info">
                <h3>Malaka Spice</h3>
                <p><i class="fas fa-map-marker-alt"></i> Koregaon Park, Pune</p>
                <div class="tags">
                    <span class="tag">Family Dining</span>
                </div>
                <a href="<%= request.getContextPath() %>/book_table.jsp" class="book-now">Book Now</a>
            </div>
        </div>

        <!-- Restaurant 6 -->
        <div class="restaurant-card">
            <div class="image-placeholder">
                <img src="<%= request.getContextPath() %>/images/Baan Tao.jpg" alt="Restaurant Name 6">
            </div>
            <div class="restaurant-info">
                <h3>Baan Tao</h3>
                <p><i class="fas fa-map-marker-alt"></i>Kalyani Nagar, Pune</p>
                <div class="tags">
                    <span class="tag">Buffet</span>
                </div>
                <a href="<%= request.getContextPath() %>/book table.jsp" class="book-now">Book Now</a>
            </div>
        </div>

        <!-- Restaurant 7 -->
        <div class="restaurant-card">
            <div class="image-placeholder">
                <img src="<%= request.getContextPath() %>/images/Oaks.jpg" alt="Restaurant Name 7">
            </div>
            <div class="restaurant-info">
                <h3>1000 Oaks</h3>
                <p><i class="fas fa-map-marker-alt"></i> East Street,Pune</p>
                <div class="tags">
                    <span class="tag">Bar & Grill</span>
                </div>
                <a href="<%= request.getContextPath() %>/book table.jsp" class="book-now">Book Now</a>
            </div>
        </div>

        <!-- Restaurant 8 -->
        <div class="restaurant-card">
            <div class="image-placeholder">
                <img src="<%= request.getContextPath() %>/images/shizusan.jpg" alt="Restaurant Name 8">
            </div>
            <div class="restaurant-info">
                <h3>Shizusan</h3>
                <p><i class="fas fa-map-marker-alt"></i> Viman Nagar,Pune</p>
                <div class="tags">
                    <span class="tag">Outdoor Patio</span>
                </div>
                <a href="<%= request.getContextPath() %>/book table.jsp" class="book-now">Book Now</a>
            </div>
        </div>

        <!-- Restaurant 9 -->
        <div class="restaurant-card">
            <div class="image-placeholder">
                <img src="<%= request.getContextPath() %>/images/Arthur's Theme.jpg" alt="Restaurant Name 9">
            </div>
            <div class="restaurant-info">
                <h3>Arthur's Theme</h3>
                <p><i class="fas fa-map-marker-alt"></i> Koregaon Park, Pune</p>
                <div class="tags">
                    <span class="tag">Vegan Options</span>
                </div>
                <a href="<%= request.getContextPath() %>/book table.jsp" class="book-now">Book Now</a>
            </div>
        </div>

        <!-- Restaurant 10 -->
        <div class="restaurant-card">
            <div class="image-placeholder">
                <img src="<%= request.getContextPath() %>/images/vaishali.jpg" alt="Restaurant Name 10">
            </div>
            <div class="restaurant-info">
                <h3>Vaishali Restaurant</h3>
                <p><i class="fas fa-map-marker-alt"></i> FC Road,Pune</p>
                <div class="tags">
                    <span class="tag">Vegitine</span>
                </div>
                <a href="<%= request.getContextPath() %>/book table.jsp" class="book-now">Book Now</a>
            </div>
        </div>

        <!-- Restaurant 11 -->
        <div class="restaurant-card">
            <div class="image-placeholder">
                <img src="<%= request.getContextPath() %>/images/george.jpg" alt="Restaurant Name 11">
            </div>
            <div class="restaurant-info">
                <h3>George Restaurant</h3>
                <p><i class="fas fa-map-marker-alt"></i> Camp,Pune</p>
                <div class="tags">
                    <span class="tag">Sushi Bar</span>
                </div>
                <a href="<%= request.getContextPath() %>/book table.jsp" class="book-now">Book Now</a>
            </div>
        </div>

        <!-- Restaurant 12 -->
        <div class="restaurant-card">
            <div class="image-placeholder">
                <img src="<%= request.getContextPath() %>/images/Panchali.jpeg" alt="Restaurant Name 12">
            </div>
            <div class="restaurant-info">
                <h3>Panchali Restaurant</h3>
                <p><i class="fas fa-map-marker-alt"></i> JM Road, Pune</p>
                <div class="tags">
                    <span class="tag">Fine Dining</span>
                </div>
                <a href="<%= request.getContextPath() %>/book table.jsp" class="book-now">Book Now</a>
            </div>
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