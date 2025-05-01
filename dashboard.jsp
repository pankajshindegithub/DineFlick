  
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<%
    String username = (String) session.getAttribute("user");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }
    
    .right-section {
        text-align: right;
        padding: 15px;
        background: #333;
        color: white;
    }

    .welcome-text {
        margin-right: 15px;
    }

    .btn-login, .btn-signup, .btn-logout {
        padding: 8px 15px;
        border-radius: 5px;
        text-decoration: none;
        font-weight: bold;
        transition: 0.3s;
    }

    .btn-login, .btn-signup {
        background: #28a745;
        color: white;
    }

    .btn-logout {
        background: #b30000;
        color: white;
    }

    .btn-login:hover, .btn-signup:hover {
        background: #218838;
    }

    .btn-logout:hover {
        background: #900000;
    }

    table {
        width: 90%;
        margin: 20px auto;
        border-collapse: collapse;
        background: white;
        border-radius: 8px;
        overflow: hidden;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    }

    th, td {
        padding: 10px;
        text-align: center;
        border-bottom: 1px solid #ddd;
    }

    th {
        background: #007bff;
        color: white;
    }

    tr:nth-child(even) {
        background: #f2f2f2;
    }

    button {
        padding: 8px 12px;
        border: none;
        border-radius: 5px;
        font-size: 14px;
        cursor: pointer;
        transition: 0.3s;
    }

    button[type="submit"] {
        color: white;
    }

    button[type="submit"]:hover {
        opacity: 0.85;
    }

    form {
        display: inline;
    }

    button[type="submit"]:nth-child(1) {
        background: #007bff;
    }

    button[type="submit"]:nth-child(2) {
        background: #dc3545;
    }
</style>

</head>
<body>

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

    <% if (username != null) { %>
        <h2>Your Booking Details</h2>

        <%
            String jdbcURL = "jdbc:mysql://localhost:3306/dine";
            String dbUser = "root";
            String dbPassword = "";

            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

                // Fetch user's bookings
                String sql = "SELECT id, name, phone, booking_date, booking_time, total_price, table_name FROM bookings WHERE name = ?";
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, username);
                rs = pstmt.executeQuery();
        %>

        <table border="1">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Phone</th>
                <th>Booking Date</th>
                <th>Booking Time</th>
                <th>Total Price</th>
                <th>Table Name</th>
                <th>Actions</th>
            </tr>

            <%
                while (rs.next()) {
                    int bookingId = rs.getInt("id");
                    String name = rs.getString("name");
                    String phone = rs.getString("phone");
                    java.sql.Date bookingDate = rs.getDate("booking_date");
                    java.sql.Time bookingTime = rs.getTime("booking_time");
                    double totalPrice = rs.getDouble("total_price");
                    String tableName = rs.getString("table_name");
            %>
                <tr>
                    <td><%= bookingId %></td>
                    <td><%= name %></td>
                    <td><%= phone %></td>
                    <td><%= bookingDate %></td>
                    <td><%= bookingTime %></td>
                    <td><%= totalPrice %></td>
                    <td><%= tableName %></td>
                    <td>
                        <form method="post" action="resell.jsp">
                            <input type="hidden" name="bookingId" value="<%= bookingId %>">
                            <button type="submit">Resell</button>
                        </form>
                        <form method="post" action="cancel.jsp">
                            <input type="hidden" name="bookingId" value="<%= bookingId %>">
                            <button type="submit" onclick="return confirm('Are you sure you want to cancel this booking?');">Cancel</button>
                        </form>
                    </td>
                </tr>
            <%
                }
            %>
        </table>

        <% 
            } catch (Exception e) {
        %>
            <p>Error: <%= e.getMessage() %></p>
        <%
            } finally {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            }
        %>

        <h2>Resell Bookings</h2>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Phone</th>
                <th>Booking Date</th>
                <th>Booking Time</th>
                <th>Total Price</th>
                <th>Table Name</th>
            </tr>

            <%
                try {
                    conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
                    String resellSQL = "SELECT * FROM resell WHERE name = ?";
                    pstmt = conn.prepareStatement(resellSQL);
                    pstmt.setString(1, username);
                    rs = pstmt.executeQuery();

                    while (rs.next()) {
            %>
                <tr>
                    <td><%= rs.getInt("id") %></td>
                    <td><%= rs.getString("name") %></td>
                    <td><%= rs.getString("phone") %></td>
                    <td><%= rs.getDate("booking_date") %></td>
                    <td><%= rs.getTime("booking_time") %></td>
                    <td><%= rs.getDouble("total_price") %></td>
                    <td><%= rs.getString("table_name") %></td>
                </tr>
            <%
                    }
                } catch (Exception e) {
            %>
                <p>Error: <%= e.getMessage() %></p>
            <%
                } finally {
                    if (rs != null) rs.close();
                    if (pstmt != null) pstmt.close();
                    if (conn != null) conn.close();
                }
            %>
        </table>

    <% } else { %>
        <p>Please <a href="login.jsp">log in</a> to view your bookings.</p>
    <% } %>

</body>
</html>
  