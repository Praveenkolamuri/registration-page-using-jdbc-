<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Successful</title>
<style>
    body {
        margin: 0;
        font-family: 'Arial', sans-serif;
        background: url('https://firebasestorage.googleapis.com/v0/b/fir-741b5.appspot.com/o/58132e2330da3556c06c9c9addec0419.jpg?alt=media&token=41ceb3b3-141f-4b09-b842-402116c15e7b') no-repeat center center fixed;
        background-size: cover;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        color: green; /* Tewhitext color matching the image theme */
    }
    body::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(to bottom, rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.2));
            z-index: -1;
        }

    .popup {
      padding-top:200px;
        text-align: center;
        transform: scale(0);
        animation: popupAnimation 1s forwards;
    }

    .popup h1 {
        font-size: 3.5em;
        margin-bottom: 20px;
        text-shadow: 0px 0px 10px #00FFC6, 0px 0px 30px #00FFC6;
        color: silver;    
        text-transform: uppercase;
        letter-spacing: 5px;
        font-weight: bold;
    }

    .popup p {
        font-size: 1.2em;
        font-weight:bold;
        color: white;
    }

    .popup a {
        display: inline-block;
        margin-top: 20px;
        padding: 10px 20px;
        background: #00FFC6;
        color: #000;
        border-radius: 5px;
        text-decoration: none;
        font-size: 1.2em;
        transition: transform 0.3s;
        box-shadow: 0 0 10px #00FFC6;
    }

    .popup a:hover {
        transform: scale(1.1);
    }

    @keyframes popupAnimation {
        0% {
            transform: scale(0);
        }
        100% {
            transform: scale(1);
        }
    }
</style>
</head>
<body>
    <div class="popup">
        <h1>Update Successful</h1>
        <p>The user's information has been successfully updated.</p>
        <a href="welcome.jsp">Go back to home</a>
    </div>
</body>
</html>