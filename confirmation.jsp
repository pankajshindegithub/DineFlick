<%@ page contentType="text/html; charset=UTF-8" %>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String table = request.getParameter("table");
    String date = request.getParameter("date");
    String time = request.getParameter("time");
    String totalPrice = request.getParameter("total_price");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .confirmation-container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
            width: 50%;
            text-align: center;
        }
        h2 {
            color: #28a745;
        }
        p {
            font-size: 16px;
            margin: 10px 0;
        }
        .highlight {
            font-weight: bold;
            color: #007bff;
        }
        .btn {
            display: inline-block;
            margin-top: 15px;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="confirmation-container">
        <h2>Booking Confirmed!</h2>
        <p>Thank you, <span class="highlight"><%= name %></span>!</p>
        <p>Your table <span class="highlight"><%= table %></span> is reserved for:</p>
        <p><span class="highlight">Date:</span> <%= date %></p>
        <p><span class="highlight">Time:</span> <%= time %></p>
        <p><span class="highlight">Total Price:</span> ₹<%= totalPrice %></p>
        <%-- <p>We have sent a confirmation email to <span class="highlight"><%= email %></span>.</p> --%>

        <a href="index.jsp" class="btn">Go to Home</a>
    </div>

</body>
</html>
