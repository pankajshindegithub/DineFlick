<%@ page import="java.sql.*" %>
<%
    String bookingId = request.getParameter("bookingId");
    boolean success = false;

    if (bookingId != null) {
        Connection conn = null;
        PreparedStatement insertStmt = null;
        PreparedStatement deleteStmt = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Ensure MySQL driver is loaded
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dine", "root", "");

            // Fetch the booking details
            String selectSQL = "SELECT name, phone, booking_date, booking_time, total_price, table_name FROM bookings WHERE id=?";
            PreparedStatement selectStmt = conn.prepareStatement(selectSQL);
            selectStmt.setInt(1, Integer.parseInt(bookingId));
            rs = selectStmt.executeQuery();

            if (rs.next()) {
                // Insert into resell table
                String insertSQL = "INSERT INTO resell (name, phone, booking_date, booking_time, total_price, table_name) VALUES (?, ?, ?, ?, ?, ?)";
                insertStmt = conn.prepareStatement(insertSQL);
                insertStmt.setString(1, rs.getString("name"));
                insertStmt.setString(2, rs.getString("phone"));
                insertStmt.setDate(3, rs.getDate("booking_date"));
                insertStmt.setTime(4, rs.getTime("booking_time"));
                insertStmt.setDouble(5, rs.getDouble("total_price"));
                insertStmt.setString(6, rs.getString("table_name"));
                insertStmt.executeUpdate();

                // Remove booking from bookings table
                String deleteSQL = "DELETE FROM bookings WHERE id=?";
                deleteStmt = conn.prepareStatement(deleteSQL);
                deleteStmt.setInt(1, Integer.parseInt(bookingId));
                deleteStmt.executeUpdate();

                success = true; // Indicate successful resell
            }

        } catch (Exception e) {
            out.println("<script>alert('Error: " + e.getMessage() + "'); window.location.href='dashboard.jsp';</script>");
        } finally {
            // Close resources
            if (rs != null) rs.close();
            if (insertStmt != null) insertStmt.close();
            if (deleteStmt != null) deleteStmt.close();
            if (conn != null) conn.close();
        }
    }
%>

<script>
    var confirmed = confirm("Are you sure you want to resell this booking?");
    if (confirmed) {
        <% if (success) { %>
            alert("Booking has been successfully moved to resell.");
            window.location.href = "dashboard.jsp";
        <% } else { %>
            alert("Booking could not be resold. Please try again.");
            window.location.href = "dashboard.jsp";
        <% } %>
    } else {
        window.location.href = "dashboard.jsp";
    }
</script>
