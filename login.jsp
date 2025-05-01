<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - DineFlick</title>
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
        
        .login-container {
            background: white;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }
        
        .logo-text {
            font-size: 24px;
            font-weight: bold;
        }
        
        .highlight {
            color: orange;
        }
        
        h2 {
            margin: 10px 0;
            font-size: 22px;
        }
        
        p {
            color: #666;
        }
        
        form {
            text-align: left;
            margin-top: 10px;
        }
        
        label {
            display: block;
            font-size: 14px;
            margin-top: 10px;
        }
        
        .input-field {
            display: flex;
            align-items: center;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            margin: 5px 0;
        }
        
        .icon {
            margin-right: 10px;
        }
        
        input {
            width: 100%;
            border: none;
            outline: none;
            font-size: 14px;
        }
        
        .forgot-password {
            float: right;
            font-size: 12px;
            color: orange;
            text-decoration: none;
        }
        
        .remember-me {
            display: flex;
            align-items: center;
            gap: 8px;
            margin: 10px 0;
        }
        
        .remember-me input[type="checkbox"] {
            width: 15px;
            height: 15px;
            margin: 0;
            cursor: pointer;
            margin-top: 10px;
        }
        
        .remember-me label {
            font-size: 14px;
            cursor: pointer;
            line-height: 18px;
        }
        
        .btn {
            background: orange;
            color: white;
            border: none;
            padding: 10px;
            width: 100%;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bolder;
            font-size: 14px;
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
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .google-icon {
            margin-right: 10px;
            font-size: 16px;
        }
        
        .signup-link {
            font-size: 14px;
        }
        
        .signup-link a {
            color: orange;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="logo">
            <span class="logo-text">Dine<span class="highlight">Flick</span></span>
        </div>
        <h2>Welcome back</h2>
        <p>Sign in to your account</p>
        
<form action="loginprocess.jsp" method="POST">
            <label for="email">Email</label>
            <div class="input-field">
                <input type="email" id="email" name="email" placeholder="Enter your email" required>
            </div>

            <label for="password">Password <a href="forgot-password.jsp" class="forgot-password">Forgot password?</a></label>
            <div class="input-field">
                <input type="password" id="password" name="password" placeholder="********" required>
            </div>

            <div class="remember-me">
                <input type="checkbox" id="remember" name="remember">
                <label for="remember">Remember me</label>
            </div>

            <button type="submit" class="btn">Login</button>
        </form>

        <p class="signup-link">Don't have an account? <a href="signup.jsp">Sign up</a></p>
    </div>
</body>
</html>