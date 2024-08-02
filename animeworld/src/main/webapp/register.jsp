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
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            position: relative;
            overflow: hidden;
        }

        /* Dark gradient overlay */
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

        /* Container styling */
        .container {
            display: flex;
            max-width: 700px;
            width: 100%;
            height: 500px;
            background-color: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(1px);
            border: 2px solid rgba(255, 255, 255, 0.5);
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0,0,0,0.3);
            margin-left: -600px;
            margin-top: 40px;
            position: relative;
            z-index: 2; /* Ensure it is above the overlay */
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
            z-index: 2; /* Ensure it is above the overlay */
            height: 50%;
        }

        .title h1 {
            font-size: 50px;
            margin-left:750px;
            padding-bottom: 10px;
        }

        .title p {
            font-size: 28px;
            margin-top: 20px;
            margin-left:750px;
            padding:10px;
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
            background:#DF1C58;
            color: black;
            font-size: 16px;
            font-weight:bold;
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
    </style>
</head>
<body>
<div class="title">
    <h1>Welcome to Anime World</h1>
    <p>Join our community and explore the amazing world of anime. Discover new series, connect with other fans, and much more!</p>
</div>
<div class="container">
    <div class="left">
        <!-- You can add additional content or leave this section for the image only -->
    </div>
    <div class="right">
        <h2>Enter the World of Anime</h2>
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
