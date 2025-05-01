<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up - DineFlick</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f9f9f9;
        }
        .signup-container {
            background: white;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }
        .logo {
            font-size: 24px;
            font-weight: bold;
        }
        .highlight {
            color: orange;
        }
        .input-group {
            display: flex;
            gap: 10px;
        }
        input {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-top: 10px;
        }
        .terms {
            display: flex;
            align-items: center;
            font-size: 14px;
            margin: 10px 0;
            white-space: nowrap;
        }
        .terms a {
            color: orange;
            text-decoration: none;
        }
        .btn {
            background: orange;
            color: white;
            border: none;
            padding: 10px;
            width: 100%;
            border-radius: 5px;
            cursor: pointer;
        }
        .divider {
            margin: 15px 0;
            font-size: 14px;
            color: #777;
        }
        .google-btn {
            background: white;
            border: 1px solid #ccc;
            padding: 10px;
            width: 100%;
            border-radius: 5px;
            cursor: pointer;
        }
        p a {
            color: orange;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="signup-container">
        <h1 class="logo">Dine<span class="highlight">Flick</span></h1>
        <h2>Create an account</h2>
        <p>Join DineFlick to book tables and explore events</p>
        
        <form action="signupp.jsp" method="POST">
            <div class="input-group">
                <input type="text" name="first_name" placeholder="First Name" required>
                <input type="text" name="last_name" placeholder="Last Name" required>
            </div>
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="password" name="confirm_password" placeholder="Confirm Password" required>

            <div class="terms">
                <input type="checkbox" required>
                <label>I agree to the <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></label>
            </div>

            <button type="submit" class="btn">Create Account</button>
        </form>

        <p class="divider">Or sign up with</p>
        <button class="google-btn">Continue with Google</button>

        <p>Already have an account? <a href="login.jsp">Login</a></p>
    </div>
</body>
</html>