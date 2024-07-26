<%@page import="java.util.List"%>
<%@page import="animeworldmodels.animemodels"%>
<%@page import="animeworlddbconnections.animeconnections"%>
<%@page import="animeworldservices.animeservices"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Anime World</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        background-size: cover;
        background-image: url('https://images.alphacoders.com/136/thumb-1920-1363137.png');
    }
    h1 {
        text-align: center;
        margin-top: 20px;
        color: white;
    }
    table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
       background-color: transparent glass;
             backdrop-filter: blur(2px);
             border: 2px solid rgba(255, 255, 255, 0.5);
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0,0,0,0.3);
         border-radius: 10px;
    }
    th, td {
        padding: 10px;
        border: 1px solid rgba(255, 255, 255, 0.3);
        text-align: center;
        color: white;
    }
    th {
        background-color: rgba(76, 175, 80, 0.7);
    }
    tr:nth-child(even) {
        background-color: rgba(255, 255, 255, 0.1);
    }
    tr:hover {
        background-color: rgba(255, 255, 255, 0.2);
    }
    button {
        padding: 5px 10px;
        border: none;
        background-color: rgba(76, 175, 80, 0.7);
        color: white;
        cursor: pointer;
    }
    button:hover {
        background-color: rgba(69, 160, 73, 0.7);
    }
    .btn-danger {
        background-color: rgba(244, 67, 54, 0.7);
    }
    .btn-danger:hover {
        background-color: rgba(218, 25, 11, 0.7);
    }
</style>
</head>
<body>
    <h1>Welcome to Anime World</h1>
    <table>
        <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Email</th>
                <th>Password</th>
                <th>Confirm Password</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
        <%
        animeservices an = new animeservices(animeconnections.getconnection());
        
        List<animemodels> ll = an.getall();
        
        for(animemodels a:ll){
        
        %>
        
            <tr>
                <td><%=a.getId()%></td>
                <td><%=a.getName()%></td>
                <td><%=a.getEmail()%></td>
                <td><%=a.getPassword()%></td>
                <td><%=a.getConfirmpassword()%></td>
                <td>
                    <button>Update</button>
                </td>
                <td><a href="delete?id=<%=a.getId()%>"><button class="btn btn-danger">Delete</button></a></td>
            </tr>
        <%
        }
        %>
        </tbody>
    </table>
</body>
</html>
