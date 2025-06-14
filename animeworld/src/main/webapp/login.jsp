<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login - Anime World</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-image: url('https://firebasestorage.googleapis.com/v0/b/fir-741b5.appspot.com/o/nezuko.jpg?alt=media&token=ee18eb73-96c7-4513-b01c-8744c83deca3');
            background-size: cover;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            position: relative;
            overflow: hidden;
        }

        body::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(to bottom, rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5));
            z-index: 1;
        }

        .container {
            display: flex;
            max-width: 700px;
            width: 100%;
            height: 450px;
            background-color: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(1px);
            border: 2px solid rgba(255, 255, 255, 0.5);
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0,0,0,0.3);
            margin-left: -600px;
            margin-top: 40px;
            position: relative;
            z-index: 2;
        }

        .container .left {
            flex: 1;
            background-image: url('https://firebasestorage.googleapis.com/v0/b/fir-741b5.appspot.com/o/df1c95cee266ecc0fc6288585df42e55.jpg?alt=media&token=577192af-74aa-4dae-a278-9d0719affccc');
            background-size: cover;
            background-position: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 20px;
            color: #fff;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.6);
        }

        .title {
            position: absolute;
            top: 50px;
            text-align: center;
            width: 100%;
            color: #D6295F;
            z-index: 2;
            height: 50%;
        }

        .title h1 {
            font-size: 50px;
            margin-left: 750px;
            padding-bottom: 10px;
        }

        .title p {
            font-size: 28px;
            margin-top: 20px;
            margin-left: 750px;
            padding: 10px;
            color: #ffffff;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6);
        }

        .container .right {
            flex: 1;
            padding: 40px;
            color: #fff;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .container .right h2 {
            margin-bottom: 20px;
            color: #ffffff;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6);
        }

        .container .right form {
            display: flex;
            flex-direction: column;
        }

        .container .right input[type="email"],
        .container .right input[type="password"] {
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
        }

        .container .right button {
            padding: 10px;
            margin-top: 20px;
            border: none;
            border-radius: 5px;
            background: #DF1C58;
            color: black;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        .container .right button:hover {
            background: white;
        }

        .container .right a {
            color: black;
            font-size: 16px;
            text-decoration: none;
            margin-top: 20px;
            text-align: center;
        }

        .container .right a:hover {
            text-decoration: underline;
        }

        .error-message {
            color: #ff4444;
            background-color: rgba(255, 68, 68, 0.1);
            border: 1px solid #ff4444;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 15px;
            text-align: center;
        }

        .success-message {
            color: #44ff44;
            background-color: rgba(68, 255, 68, 0.1);
            border: 1px solid #44ff44;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 15px;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="title">
    <h1>Welcome Back to Anime World</h1>
    <p>Sign in to continue your anime journey and connect with fellow fans!</p>
</div>
<div class="container">
    <div class="left">
        <!-- Background image section -->
    </div>
    <div class="right">
        <h2>Sign In</h2>
        
        <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
        <% if (errorMessage != null) { %>
            <div class="error-message"><%= errorMessage %></div>
        <% } %>
        
        <% String successMessage = (String) request.getAttribute("successMessage"); %>
        <% if (successMessage != null) { %>
            <div class="success-message"><%= successMessage %></div>
        <% } %>
        
        <form action="login" method="post">
            <input type="email" placeholder="Enter email" name="email" required>
            <input type="password" placeholder="Enter password" name="password" required>
            <button type="submit">Sign In</button>
        </form>
        <a href="register.jsp">Don't have an account? Register here</a>
    </div>
</div>
</body>
</html>