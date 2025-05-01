<%@ page import="java.sql.*" %>
<%
    String bookingId = request.getParameter("bookingId");

    if (bookingId != null) {
        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dine", "root", "");

            // Delete booking
            String deleteSQL = "DELETE FROM bookings WHERE id=?";
            PreparedStatement pstmt = conn.prepareStatement(deleteSQL);
            pstmt.setInt(1, Integer.parseInt(bookingId));
            pstmt.executeUpdate();

            conn.close();
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        }
    }
    response.sendRedirect("dashboard.jsp");
%>
