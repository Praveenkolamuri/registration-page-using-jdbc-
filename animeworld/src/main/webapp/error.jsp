<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    body {
    margin: 0;
    font-family: 'Arial', sans-serif;
    background: url('https://firebasestorage.googleapis.com/v0/b/fir-741b5.appspot.com/o/e2f174ac14a2f40eb29aadafcb0d8b9a.jpg?alt=media&token=dd1d76d5-b907-4332-9062-c3f06b3f9385') no-repeat center center fixed;
    background-size: cover;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    color: #f1f1f1; /* Light gray color for better contrast */
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
    text-align: center;
    font-size: 3.5em;
    margin-bottom: 20px;
    text-shadow: 0px 0px 10px #FF4500, 0px 0px 30px #FF4500; /* Orange-red glow */
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
    background: #FF4500; /* Orange-red background */
    color: #000;
    border-radius: 5px;
    text-decoration: none;
    font-size: 1.2em;
    transition: transform 0.3s;
    box-shadow: 0 0 10px #FF4500; /* Orange-red glow */
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
 <h1>Error</h1>
    <p>There was a problem processing your request. Please try again.</p>
    <a href="welcome.jsp">Go back to home</a>
        </div>
</body>
</html>
