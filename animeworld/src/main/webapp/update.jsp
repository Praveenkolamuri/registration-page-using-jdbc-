<%@page import="animeworldmodels.animemodels"%>
<%@page import="animeworldservices.animeservices"%>
<%@page import="animeworlddbconnections.animeconnections"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
    String id = request.getParameter("id");
    animeservices an = new animeservices(animeconnections.getconnection());
    animemodels user = an.getbyId(Integer.parseInt((id)));// Assuming `getById` method exists

    if (user == null) {
        response.sendRedirect("error.jsp"); // Redirect to an error page if user not found
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Update User</title>
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background-image: url("https://firebasestorage.googleapis.com/v0/b/fir-741b5.appspot.com/o/281aff6184fcb84002c54d93a65a4e0c.jpg?alt=media&token=4b62c86a-e9c1-409b-9e43-b3ac732a2830");
            background-size: cover;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: transparent glass;
            padding: 40px;
            backdrop-filter: blur(5px);
            border: 2px solid rgba(255, 255, 255, 0.5);
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            width: 400px;
            height: 
        }

        h1 {
            font-size: 1.8em;
            margin-bottom: 20px;
            color: #fff;
        }

        label {
            display: block;
            font-size: 0.9em;
            margin-bottom: 8px;
            color: #bbbbbb;
        }

        input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 12px 15px;
            margin-bottom: 20px;
            background: ;
            border: none;
            border-radius: 5px;
            color: black;
            font-size: 0.9em;
        }

        button {
            width: 100%;
            padding: 12px 15px;
            background: #1a73e8;
            border: none;
            border-radius: 5px;
            font-size: 1em;
            color: #ffffff;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        button:hover {
            background: #1558b0;
        }

        .form-group {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Update User</h1>
        <form action="updateServlet" method="post">
            <input type="hidden" name="id" value="<%=user.getId()%>"/>
            
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" value="<%=user.getName()%>" required/>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="<%=user.getEmail()%>" required/>
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" value="<%=user.getPassword()%>" required/>
            </div>

            <div class="form-group">
                <label for="confirmpassword">Confirm Password:</label>
                <input type="password" id="confirmpassword" name="confirmpassword" value="<%=user.getConfirmpassword()%>" required/>
            </div>

            <button type="submit">Update</button>
        </form>
    </div>
</body>
</html>

