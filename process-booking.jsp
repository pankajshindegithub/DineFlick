<%@ page import="java.sql.*" %>
<%
    // Get form values
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String table = request.getParameter("table");
    String date = request.getParameter("date");
    String time = request.getParameter("time");
    String totalPriceStr = request.getParameter("total_price");

    out.println("<h3>Debug Info: Received values</h3>");
    out.println("Name: " + name + "<br>");
    out.println("Email: " + email + "<br>");
    out.println("Phone: " + phone + "<br>");
    out.println("Table: " + table + "<br>");
    out.println("Date: " + date + "<br>");
    out.println("Time: " + time + "<br>");
    out.println("Total Price: " + totalPriceStr + "<br>");

    if (totalPriceStr == null || totalPriceStr.isEmpty()) {
        out.println("<script>alert('Error: Total price is missing!'); window.history.back();</script>");
        return;
    }

    double totalPrice = Double.parseDouble(totalPriceStr);

    Connection conn = null;
    PreparedStatement pst = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dine", "root", "");
        conn.setAutoCommit(true);

        out.println("<h3>Connected to Database</h3>");

        // Check if user exists in users table
        pst = conn.prepareStatement("SELECT * FROM users WHERE first_name = ? AND email = ?");
        pst.setString(1, name);
        pst.setString(2, email);
        rs = pst.executeQuery();

        if (!rs.next()) {
            out.println("<script>alert('User not registered! Please sign up first.'); window.location='signup.jsp';</script>");
        } else {
            rs.close();
            pst.close();

            // Insert booking
            String insertSQL = "INSERT INTO bookings (name, email, phone, table_name, booking_date, booking_time, total_price) VALUES (?, ?, ?, ?, ?, ?, ?)";

            pst = conn.prepareStatement(insertSQL);
            pst.setString(1, name);
            pst.setString(2, email);
            pst.setString(3, phone);
            pst.setString(4, table);
            pst.setString(5, date);
            pst.setString(6, time);
            pst.setDouble(7, totalPrice);

            int rowsInserted = pst.executeUpdate();

            if (rowsInserted > 0) {
                out.println("<script>window.location='confirmation.jsp?name=" + name + "&email=" + email + "&phone=" + phone + "&table=" + table + "&date=" + date + "&time=" + time + "&total_price=" + totalPrice + "';</script>");
            } else {
                out.println("<script>alert('Booking Failed! Try again.'); window.history.back();</script>");
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<h3>Error: " + e.getMessage() + "</h3>");
    } finally {
        if (rs != null) rs.close();
        if (pst != null) pst.close();
        if (conn != null) conn.close();
    }
%>
