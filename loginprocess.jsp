<%@ page import="java.sql.*, java.io.*" %>

<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    Connection conn = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dine", "root", "");

        String sql = "SELECT * FROM users WHERE email = ? AND password = ?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, email);
        pstmt.setString(2, password);

        ResultSet rs = pstmt.executeQuery();
        if (rs.next()) {
            session.setAttribute("user", rs.getString("first_name"));
            out.println("<script>alert('Login Successful!'); window.location='index.jsp';</script>");
        } else {
            out.println("<script>alert('Invalid email or password!'); history.back();</script>");
        }
        conn.close();
    } catch (Exception e) {
        out.println("<script>alert('Error: " + e.getMessage() + "'); history.back();</script>");
    }
%>
