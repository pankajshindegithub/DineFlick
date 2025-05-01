<%@ page import="java.sql.*, java.io.*" %>

<%
    String firstName = request.getParameter("first_name");
    String lastName = request.getParameter("last_name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String confirmPassword = request.getParameter("confirm_password");

    if (password.equals(confirmPassword)) {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dine", "root", "");

            String sql = "INSERT INTO users (first_name, last_name, email, password) VALUES (?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, firstName);
            pstmt.setString(2, lastName);
            pstmt.setString(3, email);
            pstmt.setString(4, password); // Ideally, hash this password using BCrypt

            int rows = pstmt.executeUpdate();
            if (rows > 0) {
                out.println("<script>alert('Signup Successful!'); window.location='login.jsp';</script>");
            } else {
                out.println("<script>alert('Signup Failed!'); history.back();</script>");
            }
            conn.close();
        } catch (Exception e) {
            out.println("<script>alert('Error: " + e.getMessage() + "'); history.back();</script>");
        }
    } else {
        out.println("<script>alert('Passwords do not match!'); history.back();</script>");
    }
%>
