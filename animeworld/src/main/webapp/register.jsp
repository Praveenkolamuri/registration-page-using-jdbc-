<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Register</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
  
  background-image: url('https://firebasestorage.googleapis.com/v0/b/fir-741b5.appspot.com/o/nezuko.jpg?alt=media&token=ee18eb73-96c7-4513-b01c-8744c83deca3');
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            display: flex;
            max-width: 700px;
            width: 100%;
            height: 450px;
            background-color: transparent glass;
             backdrop-filter: blur(2px);
             border: 2px solid rgba(255, 255, 255, 0.5);
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0,0,0,0.3);
            margin-left: 700px;
            margin-top: 120px;
        }
        .container .left {
            flex: 1;
            background-image: url('https://i.pinimg.com/736x/78/7f/eb/787feb9f9f6d98a27cbbf96e0521c7d8.jpg');
            background-size: cover;
            background-position: center;
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
        }
        .container .right form {
            display: flex;
            flex-direction: column;
        }
        .container .right input[type="text"],
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
            background: #F8C6D8;
            color: blue;
            font-size: 16px;
            cursor: pointer;
        }
        .container .right button:hover {
            background: #D3D3D3;
        }
        .container .right a {
            color: #007bff;
            text-decoration: none;
            margin-top: 20px;
            text-align: center;
        }
        .container .right a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="left"></div>
        <div class="right">
            <h2>Enter the World of Anime </h2>
            <form action="register" method="post">
                <input type="text" placeholder="Enter name" name="name" required>
                <input type="email" placeholder="Enter email" name="email" required>
                <input type="password" placeholder="Enter password" name="password" required>
                <input type="password" placeholder="Enter confirm password" name="confirmpassword" required>
                <button type="submit">Register</button>
            </form>
            <a href="login.jsp">Already have an account? Sign in</a>
        </div>
    </div>
</body>
</html>
