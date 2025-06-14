<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Anime World - Home</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-image: url('https://firebasestorage.googleapis.com/v0/b/fir-741b5.appspot.com/o/nezuko.jpg?alt=media&token=ee18eb73-96c7-4513-b01c-8744c83deca3');
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
        }

        body::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(to bottom, rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6));
            z-index: 1;
        }

        .hero-content {
            text-align: center;
            color: white;
            z-index: 2;
            position: relative;
            max-width: 800px;
            padding: 40px;
        }

        .hero-content h1 {
            font-size: 4em;
            margin-bottom: 20px;
            color: #D6295F;
            text-shadow: 3px 3px 6px rgba(0, 0, 0, 0.8);
            animation: fadeInUp 1s ease-out;
        }

        .hero-content p {
            font-size: 1.5em;
            margin-bottom: 40px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
            animation: fadeInUp 1s ease-out 0.3s both;
        }

        .cta-buttons {
            display: flex;
            gap: 20px;
            justify-content: center;
            flex-wrap: wrap;
            animation: fadeInUp 1s ease-out 0.6s both;
        }

        .cta-btn {
            padding: 15px 30px;
            font-size: 18px;
            font-weight: bold;
            text-decoration: none;
            border-radius: 8px;
            transition: all 0.3s ease;
            border: 2px solid transparent;
        }

        .btn-primary {
            background-color: #DF1C58;
            color: white;
        }

        .btn-primary:hover {
            background-color: #c41850;
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(223, 28, 88, 0.4);
        }

        .btn-secondary {
            background-color: transparent;
            color: white;
            border: 2px solid white;
        }

        .btn-secondary:hover {
            background-color: white;
            color: #333;
            transform: translateY(-2px);
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @media (max-width: 768px) {
            .hero-content h1 {
                font-size: 2.5em;
            }
            
            .hero-content p {
                font-size: 1.2em;
            }
            
            .cta-buttons {
                flex-direction: column;
                align-items: center;
            }
            
            .cta-btn {
                width: 200px;
            }
        }
    </style>
</head>
<body>
    <div class="hero-content">
        <h1>Welcome to Anime World</h1>
        <p>Discover, explore, and connect with the amazing world of anime. Join our community of passionate fans and embark on incredible adventures!</p>
        <div class="cta-buttons">
            <a href="login.jsp" class="cta-btn btn-primary">Sign In</a>
            <a href="register.jsp" class="cta-btn btn-secondary">Join Now</a>
        </div>
    </div>
</body>
</html>